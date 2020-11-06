<?php $__env->startSection('content'); ?>

<div class="row">
    <div class="col-sm-12">
        <a href="<?php echo e(route('stocks.create')); ?>" class="btn btn-danger pull-right"><?php echo e(__('Destroy')); ?></a>
        <a href="<?php echo e(route('stocks.create')); ?>" class="btn btn-info pull-right" style="margin-right: 10px;"><?php echo e(__('Create Stock')); ?></a>
    </div>
</div>

<br>

<!-- Basic Data Tables -->
<!--===================================================-->
<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo e(__('Product Stocks')); ?></h3>
    </div>
    <div class="panel-body">
        <table class="table table-striped table-bordered demo-dt-basic" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>#</th>
                    <th><?php echo e(__('Product Name')); ?></th>
                    <th><?php echo e(__('Entry Type')); ?></th>
                    <th><?php echo e(__('Quantity')); ?></th>
                    <th><?php echo e(__('Note')); ?></th>
                    <th width="10%"><?php echo e(__('Options')); ?></th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>

    </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/stocks/index.blade.php ENDPATH**/ ?>