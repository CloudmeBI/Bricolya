<?php $__env->startSection('content'); ?>
    <div class="mar-ver pad-btm text-center">
        <h1 class="h3">Congratulations!!!</h1>
        <p>You have successfully completed the updating process. Please Login to continue.</p>
    </div>
    <div class="text-center">
        <a href="<?php echo e(env('APP_URL')); ?>" class="btn btn-primary">Go to Home</a>
        <a href="<?php echo e(env('APP_URL')); ?>/admin" class="btn btn-success">Login to Admin panel</a>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.blank', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/update/done.blade.php ENDPATH**/ ?>