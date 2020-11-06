<script src="//voguepay.com/js/voguepay.js"></script>

<script>
    closedFunction=function() {
        alert('window closed');
        location.href = '<?php echo e(env('APP_URL')); ?>'+'/admin/sellers'
    }

    successFunction=function(transaction_id) {
        location.href = '<?php echo e(env('APP_URL')); ?>'+'/vogue-pay/success/'+transaction_id
    }
    failedFunction=function(transaction_id) {
         location.href = '<?php echo e(env('APP_URL')); ?>'+'/vogue-pay/success/'+transaction_id
    }
</script>

<input type="hidden" id="merchant_id" name="v_merchant_id" value="<?php echo e($seller->voguepay_merchand_id); ?>">


<script>

        window.onload = function(){
            pay3();
        }

        function pay3() {
         Voguepay.init({
             v_merchant_id: document.getElementById("merchant_id").value,
             total: '<?php echo e(Session::get('payment_data')['amount']); ?>',
             cur: '<?php echo e(\App\Currency::findOrFail(\App\BusinessSetting::where('type', 'system_default_currency')->first()->value)->code); ?>',
             merchant_ref: 'ref123',
             loadText:'Custom load text',
             customer: {
                name: '<?php echo e(Auth::user()->name); ?>',

                email: '<?php echo e(Auth::user()->email); ?>',
                phone: '<?php echo e(Auth::user()->phone); ?>'
            },
             closed:closedFunction,
             success:successFunction,
             failed:failedFunction
         });
        }
</script>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/voguepay/seller_payment_vogue.blade.php ENDPATH**/ ?>