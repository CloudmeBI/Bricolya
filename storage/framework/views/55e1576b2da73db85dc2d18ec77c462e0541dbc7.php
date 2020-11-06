<script src="//voguepay.com/js/voguepay.js"></script>

<script>
    closedFunction=function() {
        alert('window closed');
        location.href = '<?php echo e(env('APP_URL')); ?>'
    }

    successFunction=function(transaction_id) {
        location.href = '<?php echo e(env('APP_URL')); ?>'+'/vogue-pay/success/'+transaction_id
    }
    failedFunction=function(transaction_id) {
         location.href = '<?php echo e(env('APP_URL')); ?>'+'/vogue-pay/success/'+transaction_id
    }
</script>
<?php if(\App\BusinessSetting::where('type', 'voguepay_sandbox')->first()->value == 1): ?>
    <input type="hidden" id="merchant_id" name="v_merchant_id" value="demo">
<?php else: ?>
    <input type="hidden" id="merchant_id" name="v_merchant_id" value="<?php echo e(env('VOGUE_MERCHANT_ID')); ?>">
<?php endif; ?>

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
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/voguepay/wallet_payment_vogue.blade.php ENDPATH**/ ?>