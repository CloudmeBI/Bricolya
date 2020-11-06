<?php $__env->startSection('content'); ?>

    <section class="gry-bg py-4 profile">
        <div class="container">
            <div class="row cols-xs-space cols-sm-space cols-md-space">
                <div class="col-lg-3 d-none d-lg-block">
                    <?php echo $__env->make('frontend.inc.seller_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>

                <div class="col-lg-9">
                    <div class="main-content">
                        <!-- Page title -->
                        <div class="page-title">
                            <div class="row align-items-center">
                                <div class="col-md-6">
                                    <h2 class="heading heading-6 text-capitalize strong-600 mb-0">
                                        <?php echo e(__('Orders')); ?>

                                    </h2>
                                </div>
                                <div class="col-md-6">
                                    <div class="float-md-right">
                                        <ul class="breadcrumb">
                                            <li><a href="<?php echo e(route('home')); ?>"><?php echo e(__('Home')); ?></a></li>
                                            <li><a href="<?php echo e(route('dashboard')); ?>"><?php echo e(__('Dashboard')); ?></a></li>
                                            <li class="active"><a href="<?php echo e(route('orders.index')); ?>"><?php echo e(__('Orders')); ?></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Order history table -->
                        <div class="card no-border mt-4">
                            <div class="card-header">
                                <form id="sort_orders" action="" method="GET">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <input type="text" class="form-control" id="search" name="search" <?php if(isset($sort_search)): ?> value="<?php echo e($sort_search); ?>" <?php endif; ?> placeholder="Type Order code & hit Enter">
                                        </div>
                                        <div class="col-md-3 ml-auto">
                                            <select class="form-control mb-3 selectpicker" data-placeholder="<?php echo e(__('Filter by Payment Status')); ?>" name="payment_status" onchange="sort_orders()">
                                                <option value=""><?php echo e(__('Filter by Payment Status')); ?></option>
                                                <option value="paid" <?php if(isset($payment_status)): ?> <?php if($payment_status == 'paid'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Paid')); ?></option>
                                                <option value="unpaid" <?php if(isset($payment_status)): ?> <?php if($payment_status == 'unpaid'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Un-Paid')); ?></option>
                                            </select>
                                        </div>
                                        <div class="col-md-3">
                                            <select class="form-control mb-3 selectpicker" data-placeholder="<?php echo e(__('Filter by Payment Status')); ?>" name="delivery_status" onchange="sort_orders()">
                                                <option value=""><?php echo e(__('Filter by Deliver Status')); ?></option>
                                                <option value="pending" <?php if(isset($delivery_status)): ?> <?php if($delivery_status == 'pending'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Pending')); ?></option>
                                                <option value="on_review" <?php if(isset($delivery_status)): ?> <?php if($delivery_status == 'on_review'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('On review')); ?></option>
                                                <option value="on_delivery" <?php if(isset($delivery_status)): ?> <?php if($delivery_status == 'on_delivery'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('On delivery')); ?></option>
                                                <option value="delivered" <?php if(isset($delivery_status)): ?> <?php if($delivery_status == 'delivered'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Delivered')); ?></option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="card-body">
                                <?php if(count($orders) > 0): ?>
                                    <table class="table table-sm table-hover table-responsive-md">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th width="20%"><?php echo e(__('Order Code')); ?></th>
                                            <th><?php echo e(__('Num. of Products')); ?></th>
                                            <th><?php echo e(__('Customer')); ?></th>
                                            <th><?php echo e(__('Amount')); ?></th>
                                            <th><?php echo e(__('Delivery Status')); ?></th>
                                            <th><?php echo e(__('Payment Status')); ?></th>
                                            <th><?php echo e(__('Options')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $order_id): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $order = \App\Order::find($order_id->id);
                                            ?>
                                            <?php if($order != null): ?>
                                                <tr>
                                                    <td>
                                                        <?php echo e($key+1); ?>

                                                    </td>
                                                    <td>
                                                        <a href="#<?php echo e($order->code); ?>" onclick="show_order_details(<?php echo e($order->id); ?>)"><?php echo e($order->code); ?></a>
                                                    </td>
                                                    <td>
                                                        <?php echo e(count($order->orderDetails->where('seller_id', Auth::user()->id))); ?>

                                                    </td>
                                                    <td>
                                                        <?php if($order->user_id != null): ?>
                                                            <?php echo e($order->user->name); ?>

                                                        <?php else: ?>
                                                            Guest (<?php echo e($order->guest_id); ?>)
                                                        <?php endif; ?>
                                                    </td>
                                                    <td>
                                                        <?php echo e(single_price($order->orderDetails->where('seller_id', Auth::user()->id)->sum('price'))); ?>

                                                    </td>
                                                    <td>
                                                        <?php
                                                            $status = $order->orderDetails->first()->delivery_status;
                                                        ?>
                                                        <?php echo e(ucfirst(str_replace('_', ' ', $status))); ?>

                                                    </td>
                                                    <td>
                                                        <span class="badge badge--2 mr-4">
                                                            <?php if($order->orderDetails->where('seller_id', Auth::user()->id)->first()->payment_status == 'paid'): ?>
                                                                <i class="bg-green"></i> <?php echo e(__('Paid')); ?>

                                                            <?php else: ?>
                                                                <i class="bg-red"></i> <?php echo e(__('Unpaid')); ?>

                                                            <?php endif; ?>
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <div class="dropdown">
                                                            <button class="btn" type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-v"></i>
                                                            </button>

                                                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="">
                                                                <button onclick="show_order_details(<?php echo e($order->id); ?>)" class="dropdown-item"><?php echo e(__('Order Details')); ?></button>
                                                                <a href="<?php echo e(route('seller.invoice.download', $order->id)); ?>" class="dropdown-item"><?php echo e(__('Download Invoice')); ?></a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                                <?php endif; ?>
                            </div>
                        </div>

                        <div class="pagination-wrapper py-4">
                            <ul class="pagination justify-content-end">
                                <?php echo e($orders->links()); ?>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="modal fade" id="order_details" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-zoom product-modal" id="modal-size" role="document">
            <div class="modal-content position-relative">
                <div class="c-preloader">
                    <i class="fa fa-spin fa-spinner"></i>
                </div>
                <div id="order-details-modal-body">

                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        function sort_orders(el){
            $('#sort_orders').submit();
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/seller/orders.blade.php ENDPATH**/ ?>