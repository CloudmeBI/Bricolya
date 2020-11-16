<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use PDF;
use Auth;

class InvoiceController extends Controller
{
    //downloads customer invoice
    public function customer_invoice_download($id)
    {
        $order = Order::findOrFail($id);
        $city = ((array) json_decode($order->shipping_address))["city"];
        $shipping = $this->shippingCost($city);
        $pdf = PDF::setOptions([
                        'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
                        'logOutputFile' => storage_path('logs/log.htm'),
                        'tempDir' => storage_path('logs/')
                    ])->loadView('invoices.customer_invoice', compact('order', 'shipping'));
        return $pdf->download('order-'.$order->code.'.pdf');
    }

    //downloads seller invoice
    public function seller_invoice_download($id)
    {
        $order = Order::findOrFail($id);
        $pdf = PDF::setOptions([
                        'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
                        'logOutputFile' => storage_path('logs/log.htm'),
                        'tempDir' => storage_path('logs/')
                    ])->loadView('invoices.seller_invoice', compact('order'));
        return $pdf->download('order-'.$order->code.'.pdf');
    }

    //downloads admin invoice
    public function admin_invoice_download($id)
    {
        $order = Order::findOrFail($id);
        $city = ((array) json_decode($order->shipping_address))["city"];
        $shipping = $this->shippingCost($city);
        $pdf = PDF::setOptions([
                        'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
                        'logOutputFile' => storage_path('logs/log.htm'),
                        'tempDir' => storage_path('logs/')
                    ])->loadView('invoices.admin_invoice', compact('order'));
        return $pdf->download('order-'.$order->code.'.pdf');
    }

    //delivery invoice
    public function delivery_invoice_download($id)
    {
        $order = Order::findOrFail($id);
        $pdf = PDF::setOptions([
                        'isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true,
                        'logOutputFile' => storage_path('logs/log.htm'),
                        'tempDir' => storage_path('logs/')
                    ])->loadView('invoices.delivery-invoice', compact('order'));
        return $pdf->download('order-delivery-'.$order->code.'.pdf');
        // return view('invoices.delivery-invoice', compact('order'));
    }

    static public function shippingCost($city)
    {
        $shippingCostConfig = config('app.shipping_cost');

        if ($city == config('app.business_city'))
            return $shippingCostConfig['same_city'];
            
        if ($city == 'oujda')
            return $shippingCostConfig['oujda'];
            
        return $shippingCostConfig['outside_city'];
    }
}
