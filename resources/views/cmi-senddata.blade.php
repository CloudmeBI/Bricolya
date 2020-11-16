<center>

    <form method="post" action="{{ url('/') . '/public/cmi/2.SendData.php' }}">
        <table>
            <tr>
                <td align="center" colspan="2">
                    <input type="submit" value="Complete Payment" />
                </td>
            </tr>

        </table>
            <input type="hidden" name="clientid" value="{{ $orgClientId }}"> 
            <input type="hidden" name="amount" value="{{ $orgAmount }}">
            <input type="hidden" name="okUrl" value="{{ $orgOkUrl }}">
            <input type="hidden" name="failUrl" value="{{ $orgFailUrl }}">
            <input type="hidden" name="TranType" value="{{ $orgTransactionType }}">
            <input type="hidden" name="callbackUrl" value="{{ $orgCallbackUrl }}">
            <input type="hidden" name="shopurl" value="{{ $shopurl }}">
            <input type="hidden" name="currency" value="{{ $orgCurrency }}">
            <input type="hidden" name="rnd" value="{{ $orgRnd }}">
            <input type="hidden" name="storetype" value="3D_PAY_HOSTING">
            <input type="hidden" name="hashAlgorithm" value="ver3">
            <input type="hidden" name="lang" value="fr">
            <input type="hidden" name="refreshtime" value="5">
            <input type="hidden" name="BillToName" value="{{ $name }}">
            <input type="hidden" name="email" value="{{ $email }}">
            <input type="hidden" name="tel" value="{{ $tel }}">
            <input type="hidden" name="encoding" value="UTF-8">
            <input type="hidden" name="oid" value="{{ $order_id }}"> <!-- La valeur du paramètre oid doit être unique par transaction -->
            
    </form>

</center>