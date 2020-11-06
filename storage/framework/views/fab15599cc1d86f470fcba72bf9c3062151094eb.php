<?php $__env->startSection('content'); ?>

    <div class="col-lg-10 col-lg-offset-1">
        <div class="panel">
            <div class="panel-heading">
                <h3 class="panel-title"><?php echo e(__('Update Package Information')); ?></h3>
            </div>

            <!--Horizontal Form-->
            <!--===================================================-->
            <form class="form-horizontal" action="<?php echo e(route('customer_packages.update', $customer_package->id)); ?>" method="POST" enctype="multipart/form-data">
                <input type="hidden" name="_method" value="PATCH">
            	<?php echo csrf_field(); ?>
                <div class="panel-body">
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name"><?php echo e(__('Package Name')); ?></label>
                        <div class="col-sm-10">
                            <input type="text" placeholder="<?php echo e(__('Name')); ?>" value="<?php echo e($customer_package->name); ?>" id="name" name="name" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name"><?php echo e(__('Amount')); ?></label>
                        <div class="col-sm-10">
                            <input type="number" min="0" step="0.01" placeholder="<?php echo e(__('Amount')); ?>" value="<?php echo e($customer_package->amount); ?>" id="amount" name="amount" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="name"><?php echo e(__('Product Upload')); ?></label>
                        <div class="col-sm-10">
                            <input type="number" min="0" step="1" placeholder="<?php echo e(__('Product Upload')); ?>" value="<?php echo e($customer_package->product_upload); ?>" id="product_upload" name="product_upload" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="logo"><?php echo e(__('Package Logo')); ?></label>
                        <div class="col-sm-10">
                            <input type="file" id="logo" name="logo" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="panel-footer text-right">
                    <button class="btn btn-purple" type="submit"><?php echo e(__('Save')); ?></button>
                </div>
            </form>
            <!--===================================================-->
            <!--End Horizontal Form-->

        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/customer_packages/edit.blade.php ENDPATH**/ ?>