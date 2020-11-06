<?php $__env->startSection('content'); ?>

    <section class="gry-bg py-4 profile">
        <div class="container">
            <div class="row cols-xs-space cols-sm-space cols-md-space">
                <div class="col-lg-3 d-none d-lg-block">
                    <?php if(Auth::user()->user_type == 'seller'): ?>
                        <?php echo $__env->make('frontend.inc.seller_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php elseif(Auth::user()->user_type == 'customer'): ?>
                        <?php echo $__env->make('frontend.inc.customer_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endif; ?>
                </div>

                <div class="col-lg-9">
                    <div class="main-content">
                        <!-- Page title -->
                        <div class="page-title">
                            <div class="row align-items-center">
                                <div class="col-md-6">
                                    <h2 class="heading heading-6 text-capitalize strong-600 mb-0 d-inline-block">
                                        <?php echo e(__('Products')); ?>

                                    </h2>
                                </div>
                                <div class="col-md-6">
                                    <div class="float-md-right">
                                        <ul class="breadcrumb">
                                            <li><a href="<?php echo e(route('home')); ?>"><?php echo e(__('Home')); ?></a></li>
                                            <li><a href="<?php echo e(route('dashboard')); ?>"><?php echo e(__('Dashboard')); ?></a></li>
                                            <li><a href="<?php echo e(route('customer_products.index')); ?>"><?php echo e(__('Products')); ?></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="dashboard-widget text-center green-widget text-white mt-4 c-pointer">
                                    <i class="la la-dropbox"></i>
                                    <span class="d-block title heading-3 strong-400"><?php echo e(max(0, Auth::user()->remaining_uploads)); ?></span>
                                    <span class="d-block sub-title"><?php echo e(__('Remaining Uploads')); ?></span>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <a class="dashboard-widget text-center plus-widget mt-4 d-block" href="<?php echo e(route('customer_products.create')); ?>">
                                    <i class="la la-plus"></i>
                                    <span class="d-block title heading-6 strong-400 c-base-1"><?php echo e(__('Add New Product')); ?></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <?php
                                    $customer_package = \App\CustomerPackage::find(Auth::user()->customer_package_id);
                                ?>
                                <a href="<?php echo e(route('customer_packages_list_show')); ?>" class="dashboard-widget text-center red-widget text-white mt-4 d-block">
                                    <?php if($customer_package != null): ?>
                                    <img src="<?php echo e(asset($customer_package->logo)); ?>" height="44" class="img-fit mw-100 mx-auto mb-1">
                                    <span class="d-block sub-title mb-2"><?php echo e(__('Current Package')); ?>: <?php echo e($customer_package->name); ?></span>
                                    <?php else: ?>
                                        <i class="la la-frown-o mb-1"></i>
                                        <div class="d-block sub-title mb-2"><?php echo e(__('No Package Found')); ?></div>
                                    <?php endif; ?>
                                    <div class="btn btn-styled btn-white btn-outline py-1"><?php echo e(__('Upgrade Package')); ?></div>
                                </a>
                            </div>
                        </div>

                        <!-- Order history table -->
                        <div class="card no-border mt-4">
                            <div>
                                <table class="table table-sm table-hover table-responsive-md">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th><?php echo e(__('Name')); ?></th>
                                            <th><?php echo e(__('Price')); ?></th>
                                            <th><?php echo e(__('Available Status')); ?></th>
                                            <th><?php echo e(__('Admin Status')); ?></th>
                                            <th><?php echo e(__('Options')); ?></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($key+1); ?></td>
                                            <td><a href="<?php echo e(route('customer.product', $product->slug)); ?>"><?php echo e($product->name); ?></a></td>
                                            <td><?php echo e(single_price($product->unit_price)); ?></td>
                                            <td><label class="switch">
                                                <input onchange="update_status(this)" value="<?php echo e($product->id); ?>" type="checkbox" <?php if($product->status == 1) echo "checked";?> >
                                                <span class="slider round"></span></label>
                                            </td>
                                            <td>
                                                <?php if($product->published == '1'): ?>
                                                    <span class="ml-2" style="color:green"><strong><?php echo e(__('PUBLISHED')); ?></strong></span>
                                                <?php else: ?>
                                                    <span class="ml-2" style="color:red"><strong><?php echo e(__('PENDING')); ?></strong></span>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fa fa-ellipsis-v"></i>
                                                    </button>

                                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
                                                        <a href="<?php echo e(route('customer_products.edit',encrypt($product->id))); ?>" class="dropdown-item"><?php echo e(__('Edit')); ?></a>
                                                        <button onclick="confirm_modal('<?php echo e(route('customer_products.destroy', $product->id)); ?>')" class="dropdown-item"><?php echo e(__('Delete')); ?></button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="pagination-wrapper py-4">
                            <ul class="pagination justify-content-end">
                                <?php echo e($products->links()); ?>

                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">

        function update_status(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }
            $.post('<?php echo e(route('customer_products.update.status')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el.value, status:status}, function(data){
                if(data == 1){
                    showFrontendAlert('success', 'Status has been updated successfully');
                }
                else{
                    showFrontendAlert('danger', 'Something went wrong');
                }
            });
        }

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/customer/products.blade.php ENDPATH**/ ?>