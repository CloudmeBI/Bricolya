<?php

namespace App\Http\Controllers;

use App\Order;
use App\User;
use Illuminate\Http\Request;

class CmiPaymentController extends Controller
{

    public function sendData(Request $request, $orderId)
    {
        $order = Order::findOrFail($orderId);
        $orgClientId = "600002088";
        $orgAmount = $order->grand_total;
        $orgOkUrl = route('cmi.okFail');
        $orgFailUrl = route('cmi.okFail');
        $shopurl = url("/");
        $orgTransactionType = "PreAuth";
        $orgRnd = microtime();
        $orgCallbackUrl = url("/") . "/public/cmi/callback.php";
        $orgCurrency = "504";
        $name = $this->_sanitize($order->user->name);
        $address = $this->_sanitize(((array) json_decode($order->shipping_address))["address"]);
        $email = $order->user->email;
        $tel = $order->user->phone;
        $order_id = $orderId;
        return view(
            'cmi-senddata',
            compact(
                'orgClientId',
                'orgAmount',
                'orgOkUrl',
                'orgFailUrl',
                'shopurl',
                'orgTransactionType',
                'orgRnd',
                'orgCallbackUrl',
                'orgCurrency',
                'name',
                'email',
                'address',
                'tel',
                'order_id'
            )
        );
    }

    public function _sanitize(String $string)
    {
        $replacementMap = [
            "é" => "e",
            "ç" => "c",
            "â" => "a",
        ];
        foreach ($replacementMap as $tobeReplacedLetter => $replacementLetter) {
            $string = preg_replace("/$tobeReplacedLetter/", $replacementLetter, $string);
        }
        return $string;
    }

    public function callback()
    {
        $storeKey = "Cloudme-123";

        $postParams = array();
        foreach ($_POST as $key => $value) {
            array_push($postParams, $key);
        }

        natcasesort($postParams);
        $hach = "";
        $hashval = "";
        foreach ($postParams as $param) {
            $paramValue = html_entity_decode(preg_replace("/\n$/", "", $_POST[$param]), ENT_QUOTES, 'UTF-8');

            $hach = $hach . "(!" . $param . "!:!" . $_POST[$param] . "!)";
            $escapedParamValue = str_replace("|", "\\|", str_replace("\\", "\\\\", $paramValue));

            $lowerParam = strtolower($param);
            if ($lowerParam != "hash" && $lowerParam != "encoding") {
                $hashval = $hashval . $escapedParamValue . "|";
            }
        }

        $escapedStoreKey = str_replace("|", "\\|", str_replace("\\", "\\\\", $storeKey));
        $hashval = $hashval . $escapedStoreKey;

        $calculatedHashValue = hash('sha512', $hashval);
        $actualHash = base64_encode(pack('H*', $calculatedHashValue));

        $retrievedHash = $_POST["HASH"];
        /*
        During the callback request, the merchant’s web site is supposed to do the following:
        •    Generate a hash code with the same data posted by the CMI platform in the callback request. Then compare this calculated hash with the hash sent by the CMI platform in the callback request. If they are identical, proceed to the next check.
        •    Look, in the orders’ DB of the merchant’s web site, for the record identified by the value of the "oid" parameter sent by the CMI platform in the callback request.
        •    Check if the amount of the order recorded in the orders’ DB of the merchant’s web site is equal to the amount sent by the CMI in the callback request via the "amount" parameter.
        •    Check the "ProcReturnCode" parameter value sent by the CMI in the callback request:
        o    If ProcReturnCode = 00, this is an accepted transaction.
            So it is necessary to update the status of the order in the orders’ DB of the merchant’s web site (status = Paid).
            Answer the CMI callback request with:
        •    "ACTION=POSTAUTH": in order to debit the client automatically.
        •    "APPROVED": in order to not debit the client automatically. In this case, the merchant needs to manage capture or void manually via CMI Merchant Center interface.
        o    If the ProcReturnCode <> 00 or if ProcReturnCode parameter does not exist in the callback request, it is a payment authorization failure.
            In this case, do not change the status of the order in the BDD orders of the merchant’s web site.
            The response to return to the CMI callback request is "APPROVED" (acknowledgment).
        •    If a technical problem occurs in one of the previous steps, answer the CMI callback request with "FAILURE". In this case, the merchant needs to manage capture or void manually via CMI Merchant Center interface.
         */
        if ($retrievedHash == $actualHash) {
            if ($_POST["ProcReturnCode"] == "00") {
                echo "ACTION=POSTAUTH";
            } else {
                echo "APPROVED";
            }
        } else {
            echo "FAILURE";
        }
        /*
    The callback request sent by CMI platform to the merchant’s web site in server-to-server mode, reminds as well of the cases of successful transactions as cases of rejections.
    So it may well be that the merchant’s web site receives, for the same transaction (same order number), rejection returns that will be followed by a return of transaction acceptance.
    This means that the client has failed attempts before it succeeds.
    It is the parameter ProcReturnCode which makes possible to distinguish between the callback request of a successful payment authorization (ProcReturnCode = 00) and the callback request of a failed payment (ProcReturnCode! = 00 or nonexistent).
     */
    }

    public function okFail(Request $request)
    {
        $order = Order::findOrFail($request->oid);
        \Session::put('order_id', $order->id);
        if ($request->Response == "Approved") {
            return (new CheckoutController)
                ->checkout_done($order->id, null);
        }
        // return response()->redirectToRoute('order_confirmed');
        return response()->redirectToRoute('order_error');
    }
}
