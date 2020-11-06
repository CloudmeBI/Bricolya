<?php $__env->startSection('content'); ?>
<div id="page-content">
    <section class="pb-4 pt-5">
        <div class="container">
            <div class="text-center">
                <h1 class="heading-3 strong-600"><?php echo e(__('Premium Packages for Customers')); ?></h1>
            </div>
            <div class="row justify-content-center gutters-10">
                <?php $__currentLoopData = $customer_packages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $customer_package): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="dashboard-widget text-center mt-4 c-pointer">
                            <img alt="Package Logo" src="<?php echo e(asset($customer_package->logo)); ?>" width="200" class="img-fluid mb-4">
                            <span class="d-block title"><?php echo e($customer_package->name); ?></span>
                            <p><?php echo e(__('Product Upload')); ?>: <?php echo e($customer_package->product_upload); ?> <?php echo e(__('Times')); ?></p>
                            <span class="d-block title"><?php echo e(__('Price')); ?>: <?php echo e(single_price($customer_package->amount)); ?></span>
                            <hr>
                            <?php if($customer_package->amount == 0): ?>
                                <button class="btn btn-base-1 w-100" onclick="get_free_package(<?php echo e($customer_package->id); ?>)"><?php echo e(__('Free Package')); ?></button>
                            <?php else: ?>
                                <button class="btn btn-base-1 w-100" onclick="show_price_modal(<?php echo e($customer_package->id); ?>)"><?php echo e(__('Get Package')); ?></button>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </section>
</div>

<div class="modal fade" id="price_modal" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size" role="document">
        <div class="modal-content position-relative">
            <div class="modal-header">
                <h5 class="modal-title strong-600 heading-5"><?php echo e(__('Purchase Your Package')); ?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="" id="package_payment_form" action="<?php echo e(route('customer_packages.purchase')); ?>" method="post">
                <?php echo csrf_field(); ?>
                <input type="hidden" name="customer_package_id" value="">
                <div class="modal-body gry-bg px-3 pt-3">
                    <div class="row">
                        <div class="col-md-2">
                            <label><?php echo e(__('Payment Method')); ?></label>
                        </div>
                        <div class="col-md-10">
                            <div class="mb-3">
                                <select class="form-control selectpicker" data-minimum-results-for-search="Infinity" name="payment_option">
                                    <?php if(\App\BusinessSetting::where('type', 'paypal_payment')->first()->value == 1): ?>
                                        <option value="paypal"><?php echo e(__('Paypal')); ?></option>
                                    <?php endif; ?>
                                    <?php if(\App\BusinessSetting::where('type', 'stripe_payment')->first()->value == 1): ?>
                                        <option value="stripe"><?php echo e(__('Stripe')); ?></option>
                                    <?php endif; ?>
                                    <?php if(\App\BusinessSetting::where('type', 'sslcommerz_payment')->first()->value == 1): ?>
                                        <option value="sslcommerz"><?php echo e(__('sslcommerz')); ?></option>
                                    <?php endif; ?>
                                    <?php if(\App\BusinessSetting::where('type', 'instamojo_payment')->first()->value == 1): ?>
                                        <option value="instamojo"><?php echo e(__('Instamojo')); ?></option>
                                    <?php endif; ?>
                                    <?php if(\App\BusinessSetting::where('type', 'razorpay')->first()->value == 1): ?>
                                        <option value="razorpay"><?php echo e(__('RazorPay')); ?></option>
                                    <?php endif; ?>
                                    <?php if(\App\BusinessSetting::where('type', 'paystack')->first()->value == 1): ?>
                                        <option value="paystack"><?php echo e(__('PayStack')); ?></option>
                                    <?php endif; ?>
                                    <?php if(\App\BusinessSetting::where('type', 'voguepay')->first()->value == 1): ?>
                                        <option value="voguepay"><?php echo e(__('Voguepay')); ?></option>
                                    <?php endif; ?>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('cancel')); ?></button>
                    <button type="submit" class="btn btn-base-1"><?php echo e(__('Confirm')); ?></button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        function show_price_modal(id){
            $('input[name=customer_package_id]').val(id);
            $('#price_modal').modal('show');
        }

        function get_free_package(id){
            $('input[name=customer_package_id]').val(id);
            $('#package_payment_form').submit();
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/customer_packages_lists.blade.php ENDPATH**/ ?>