<div class="panel">
    <div class="panel-body">
        <div class="">
            <!-- Simple profile -->
            <div class="text-center">
                <div class="pad-ver">
                    <img src="<?php echo e(asset($seller->user->avatar_original)); ?>" class="img-lg img-circle" alt="Profile Picture">
                </div>
                <h4 class="text-lg text-overflow mar-no"><?php echo e($seller->user->name); ?></h4>
                <p class="text-sm text-muted"><?php echo e($seller->user->shop->name); ?></p>

                <div class="pad-ver btn-groups">
                    <a href="<?php echo e($seller->user->shop->facebook); ?>" class="btn btn-icon demo-pli-facebook icon-lg add-tooltip" data-original-title="Facebook" data-container="body"></a>
                    <a href="<?php echo e($seller->user->shop->twitter); ?>" class="btn btn-icon demo-pli-twitter icon-lg add-tooltip" data-original-title="Twitter" data-container="body"></a>
                    <a href="<?php echo e($seller->user->shop->google); ?>" class="btn btn-icon demo-pli-google-plus icon-lg add-tooltip" data-original-title="Google+" data-container="body"></a>
                </div>
            </div>
            <hr>

            <!-- Profile Details -->
            <p class="pad-ver text-main text-sm text-uppercase text-bold"><?php echo e(__('About')); ?> <?php echo e($seller->user->name); ?></p>
            <p><i class="demo-pli-map-marker-2 icon-lg icon-fw"></i><?php echo e($seller->user->shop->address); ?></p>
            <p><a href="<?php echo e(route('shop.visit', $seller->user->shop->slug)); ?>" class="btn-link"><i class="demo-pli-internet icon-lg icon-fw"></i><?php echo e($seller->user->shop->name); ?></a></p>
            <p><i class="demo-pli-old-telephone icon-lg icon-fw"></i><?php echo e($seller->user->phone); ?></p>

            <p class="pad-ver text-main text-sm text-uppercase text-bold"><?php echo e(__('Payout Info')); ?></p>
            <p><?php echo e(__('Bank Name')); ?> : <?php echo e($seller->bank_name); ?></p>
            <p><?php echo e(__('Bank Acc Name')); ?> : <?php echo e($seller->bank_acc_name); ?></p>
            <p><?php echo e(__('Bank Acc Number')); ?> : <?php echo e($seller->bank_acc_no); ?></p>
            <p><?php echo e(__('Bank Routing Number')); ?> : <?php echo e($seller->bank_routing_no); ?></p>

            <br>

            <div class="table-responsive">
                <table class="table table-striped mar-no">
                    <tbody>
                    <tr>
                        <td>Total Products</td>
                        <td><?php echo e(App\Product::where('user_id', $seller->user->id)->get()->count()); ?></td>
                    </tr>
                    <tr>
                        <td>Total Orders</td>
                        <td><?php echo e(App\OrderDetail::where('seller_id', $seller->user->id)->get()->count()); ?></td>
                    </tr>
                    <tr>
                        <td>Total Sold Amount</td>
                        <?php
                            $orderDetails = \App\OrderDetail::where('seller_id', $seller->user->id)->get();
                            $total = 0;
                            foreach ($orderDetails as $key => $orderDetail) {
                                if($orderDetail->order->payment_status == 'paid'){
                                    $total += $orderDetail->price;
                                }
                            }
                        ?>
                        <td><?php echo e(single_price($total)); ?></td>
                    </tr>
                    <tr>
                        <td>Wallet Balance</td>
                        <td><?php echo e(single_price($seller->user->balance)); ?></td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/sellers/profile_modal.blade.php ENDPATH**/ ?>