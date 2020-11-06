<?php $__env->startSection('content'); ?>
    <div class="mar-ver pad-btm text-center">
        <h1 class="h3">Active eCommerce CMS Update Process</h1>
        <p>You will need to know the following items before
        proceeding.</p>
    </div>
    <ol class="list-group">
        <li class="list-group-item text-semibold"><i class="fa fa-check"></i> Codecanyon purchase code</li>
        <li class="list-group-item text-semibold"><i class="fa fa-check"></i> Database Name</li>
        <li class="list-group-item text-semibold"><i class="fa fa-check"></i> Database Username</li>
        <li class="list-group-item text-semibold"><i class="fa fa-check"></i> Database Password</li>
        <li class="list-group-item text-semibold"><i class="fa fa-check"></i> Database Hostname</li>
    </ol>
    <br>
    <div class="text-center">
        <a href="<?php echo e(route('step1')); ?>" class="btn btn-info text-light">
            Update Now
        </a>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.blank', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/update/step0.blade.php ENDPATH**/ ?>