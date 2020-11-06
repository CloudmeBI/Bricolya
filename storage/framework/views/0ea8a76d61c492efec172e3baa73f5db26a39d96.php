

<?php $__env->startSection('content'); ?>

    <div class="col-lg-6 col-lg-offset-3">
        <h2><a href="<?php echo e('/'.asset('/static_files/catalogue_client.pdf')); ?>" class="btn btn-primary">Catalogue actuel</a></h2>
        <?php if(session()->has('success')): ?>
            <div class="alert alert-success"><?php echo e(session()->get('success')); ?></div>
        <?php endif; ?>
        <div class="panel">
            <div class="panel-heading">

                <h3 class="panel-title"><?php echo e(__('Uploader Catalogue')); ?></h3>
            </div>

            <!--Horizontal Form-->
            <!--===================================================-->


            <form class="form-horizontal" action="<?php echo e(route('catalogue.client.store')); ?>" method="POST" enctype="multipart/form-data">
                <?php echo csrf_field(); ?>
                <div class="panel-body">

                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="file"><?php echo e(__('File')); ?> <small>PDF</small></label>
                        <div class="col-sm-10">
                            <input type="file" id="file" name="file" class="form-control" accept="application/pdf,application">
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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/catalogue/catalogue_client.blade.php ENDPATH**/ ?>