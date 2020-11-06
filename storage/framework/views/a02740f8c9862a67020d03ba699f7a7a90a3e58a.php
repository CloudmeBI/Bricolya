<?php $__env->startSection('content'); ?>

<!-- Basic Data Tables -->
<!--===================================================-->
<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo e(__('Seller Payments')); ?></h3>
    </div>
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-striped table-responsive mar-no" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><?php echo e(__('Date')); ?></th>
                        <th><?php echo e(__('Seller')); ?></th>
                        <th><?php echo e(__('Amount')); ?></th>
                        <th><?php echo e(__('Payment Method')); ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $payments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $payment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if(\App\Seller::find($payment->seller_id) != null && \App\Seller::find($payment->seller_id)->user != null): ?>
                            <tr>
                                <td><?php echo e($key+1); ?></td>
                                <td><?php echo e($payment->created_at); ?></td>
                                <td>
                                    <?php if(\App\Seller::find($payment->seller_id) != null): ?>
                                        <?php echo e(\App\Seller::find($payment->seller_id)->user->name); ?> (<?php echo e(\App\Seller::find($payment->seller_id)->user->shop->name); ?>)
                                    <?php endif; ?>
                                </td>
                                <td>
                                    <?php echo e(single_price($payment->amount)); ?>

                                </td>
                                <td><?php echo e(ucfirst(str_replace('_', ' ', $payment->payment_method))); ?> <?php if($payment->txn_code != null): ?> (TRX ID : <?php echo e($payment->txn_code); ?>) <?php endif; ?></td>
                            </tr>
                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
            <div class="clearfix">
                <div class="pull-right">
                    <?php echo e($payments->links()); ?>

                </div>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/sellers/payment_histories.blade.php ENDPATH**/ ?>