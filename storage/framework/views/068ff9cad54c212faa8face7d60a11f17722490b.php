

<?php $__env->startSection('content'); ?>

    <!-- Basic Data Tables -->
    <!--===================================================-->
    <div class="panel">
        <div class="panel-heading bord-btm clearfix pad-all h-100">
            <h3 class="panel-title pull-left pad-no"><?php echo e(__('Orders')); ?></h3>

            <div class="pull-right clearfix">
                <form class="" id="sort_orders" action="" method="GET">
                    <div class="box-inline pad-rgt pull-left">
                        <div class="" style="min-width: 200px;">
                            <input type="text" class="form-control" id="search" name="search"<?php if(isset($sort_search)): ?> value="<?php echo e($sort_search); ?>" <?php endif; ?> placeholder="Type Order code & hit Enter">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="panel-body">
            <table class="table table-striped res-table mar-no" cellspacing="0" width="100%">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Nom</th>
                    <th>Email</th>
                    <th>Téléphone</th>
                    <th width="10%"><?php echo e(__('Catalogue')); ?></th>
                    <th width="10%"><?php echo e(__('options')); ?></th>
                </tr>
                </thead>
                <tbody>
                <?php $__currentLoopData = $suppliers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $supplier): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td>
                            <?php echo e($supplier->id); ?>

                        </td>
                        <td>
                            <?php echo e($supplier->name); ?>

                        </td>
                        <td>
                            <?php echo e($supplier->email); ?>

                        </td>
                        <td>
                            <?php echo e($supplier->phone); ?>

                        </td>
                        <td>
                            <?php if($supplier->catalogue): ?>
                                <a href="/public/<?php echo e(($supplier->catalogue)); ?>">Télécharger</a>
                            <?php endif; ?>
                        </td>
                        <td>
                            <div class="btn-group dropdown">
                                <button class="btn btn-primary dropdown-toggle dropdown-toggle-icon" data-toggle="dropdown" type="button">
                                    <?php echo e(__('Actions')); ?> <i class="dropdown-caret"></i>
                                </button>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li><a href="<?php echo e(route('suppliers.show', ($supplier->id))); ?>"><?php echo e(__('Détails')); ?></a></li>

                                </ul>
                            </div>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
            <div class="clearfix">
                <div class="pull-right">
                    <?php echo e($suppliers->appends(request()->input())->links()); ?>

                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <script type="text/javascript">

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/suppliers/index.blade.php ENDPATH**/ ?>