

<?php $__env->startSection('content'); ?>

    <!-- Basic Data Tables -->
    <!--===================================================-->
    <div class="panel">
        <div class="panel-body">
            <div class="invoice-masthead">
                <div class="invoice-text">
                    <h3 class="h1 text-thin mar-no text-primary"><?php echo e(__('Supplier Details')); ?></h3>
                </div>
            </div>
            <div class="invoice-bill row">

                <div class="col-sm-12 text-xs-center">
                    <table class="invoice-details">
                        <tbody>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('# Order')); ?>

                            </td>
                            <td class="text-right text-info text-bold">
                                <?php echo e($supplier->id); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Nom et prénom')); ?>

                            </td>

                            <td class="text-right text-info text-bold">
                                <?php echo e($supplier->name); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Ville')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->city)); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Ville')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->city)); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Téléphone')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->phone)); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Web Site')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->website)); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Category Specialty')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->category_Specialty)); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Catalogue')); ?>

                            </td>
                            <td class="text-right">
                                <?php if($supplier->catalogue): ?>
                                    <a href="/public/<?php echo e(($supplier->catalogue)); ?>">Télécharger</a>
                                <?php endif; ?>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Products sold')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->products_sold)); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Activity descrition')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->activity_descrition)); ?>

                            </td>
                        </tr>
                        <tr>
                            <td class="text-main text-bold">
                                <?php echo e(__('Referral code')); ?>

                            </td>
                            <td class="text-right">
                                <?php echo e(($supplier->referral_code)); ?>

                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <hr class="new-section-sm bord-no">
        </div>
    </div>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <script type="text/javascript">

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/suppliers/show.blade.php ENDPATH**/ ?>