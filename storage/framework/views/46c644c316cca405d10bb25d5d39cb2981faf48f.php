<?php if($data['quantity'] >= 1): ?>
    <div class="modal-body p-4 added-to-cart">
        <div class="text-center text-success">
            <i class="fa fa-check"></i>
            <h3><?php echo e(__('Item added to your cart!')); ?></h3>
        </div>
        <div class="product-box">
            <div class="block">
                <div class="block-image">
                    <img src="<?php echo e(asset('frontend/images/placeholder.jpg')); ?>" data-src="<?php echo e(asset($product->thumbnail_img)); ?>" class="lazyload" alt="Product Image">
                </div>
                <div class="block-body">
                    <h6 class="strong-600">
                        <?php echo e(__($product->name)); ?>

                    </h6>
                    <div class="row align-items-center no-gutters mt-2 mb-2">
                        <div class="col-sm-2">
                            <div><?php echo e(__('Price')); ?>:</div>
                        </div>
                        <div class="col-sm-10">
                            <div class="heading-6 text-danger">
                                <strong>
                                    <?php echo e(single_price(($data['price']+$data['tax'])*$data['quantity'])); ?>

                                </strong>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center">
            <button class="btn btn-styled btn-base-1 btn-outline mb-3 mb-sm-0" data-dismiss="modal"><?php echo e(__('Back to shopping')); ?></button>
            <a href="<?php echo e(route('cart')); ?>" class="btn btn-styled btn-base-1 mb-3 mb-sm-0"><?php echo e(__('Proceed to Checkout')); ?></a>
        </div>
    </div>
<?php else: ?>
    <div class="modal-body p-4 added-to-cart">

        <div class="product-box">
            <div class="heading-6 text-danger text-center">
                <h2>
                    Stock épuisé 
                </h2>
            </div>
        </div>

    </div>
<?php endif; ?>
<?php /**PATH /home/368495.cloudwaysapps.com/urvfepvzma/public_html/resources/views/frontend/partials/addedToCart.blade.php ENDPATH**/ ?>