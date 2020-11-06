<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col-sm-12">
        <a href="<?php echo e(route('customer_packages.create')); ?>" class="btn btn-rounded btn-info pull-right"><?php echo e(__('Add New Package')); ?></a>
    </div>
</div>

<br>

<div class="row">
    <?php $__currentLoopData = $customer_packages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $customer_package): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="col-lg-3">
            <div class="panel">
                <div class="panel-body text-center">
                    <img alt="Package Logo" class="img-lg img-circle mar-btm" src="<?php echo e(asset($customer_package->logo)); ?>">
                    <p class="text-lg text-semibold mar-no text-main"><?php echo e($customer_package->name); ?></p>
                    <p class="text-3x"><?php echo e(single_price($customer_package->amount)); ?></p>
                    <p class="text-sm text-overflow pad-top">
                         Product Upload:
                        <span class="text-bold"><?php echo e($customer_package->product_upload); ?></span>
                    </p>
                    <div class="mar-top">
                        <a href="<?php echo e(route('customer_packages.edit', encrypt($customer_package->id))); ?>" class="btn btn-mint"><?php echo e(__('Edit')); ?></a>
                        <a onclick="confirm_modal('<?php echo e(route('customer_packages.destroy', $customer_package->id)); ?>');" class="btn btn-danger"><?php echo e(__('Delete')); ?></a>
                    </div>
                </div>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/customer_packages/index.blade.php ENDPATH**/ ?>