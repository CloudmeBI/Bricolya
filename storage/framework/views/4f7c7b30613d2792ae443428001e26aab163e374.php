<?php $__env->startSection('content'); ?>
    <div class="mar-ver pad-btm text-center">
        <h1 class="h3">Purchase Code</h1>
        <p>
            Provide your codecanyon purchase code.<br>
            <a href="https://help.market.envato.com/hc/en-us/articles/202822600-Where-Is-My-Purchase-Code" class="text-info">Where to get purchase code?</a>
        </p>
    </div>
    <p class="text-muted font-13">
        <form method="POST" action="<?php echo e(route('purchase.code')); ?>">
            <?php echo csrf_field(); ?>
            <div class="form-group">
                <label for="purchase_code">Purchase Code</label>
                <input type="text" class="form-control" id="purchase_code" name = "purchase_code">
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-info">Continue</button>
            </div>
        </form>
    </p>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.blank', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/installation/step2.blade.php ENDPATH**/ ?>