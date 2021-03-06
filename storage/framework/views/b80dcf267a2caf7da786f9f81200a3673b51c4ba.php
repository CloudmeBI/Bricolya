<?php $__env->startSection('content'); ?>

    <form action="<?php echo route('payment.rozer'); ?>" method="POST" id='rozer-pay' style="display: none;">
        <!-- Note that the amount is in paise = 50 INR -->
        <!--amount need to be in paisa-->
        <script src="https://checkout.razorpay.com/v1/checkout.js"
                data-key="<?php echo e($seller->razorpay_api_key); ?>"
                data-amount=<?php echo e(Session::get('payment_data')['amount']*100); ?>

                data-buttontext=""
                data-name="<?php echo e(env('APP_NAME')); ?>"
                data-description="Seller Commission Payment"
                data-image="<?php echo e(asset(\App\GeneralSetting::first()->logo)); ?>"
                data-prefill.name= <?php echo e(Auth::user()->name); ?>

                data-prefill.email= <?php echo e(Auth::user()->email); ?>

                data-theme.color="#ff7529">
        </script>
        <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
    </form>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#rozer-pay').submit()
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/razorpay/payWithRazorpay.blade.php ENDPATH**/ ?>