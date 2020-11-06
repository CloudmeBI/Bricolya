<?php $__env->startSection('meta_title'); ?><?php echo e($shop->meta_title); ?><?php $__env->stopSection(); ?>

<?php $__env->startSection('meta_description'); ?><?php echo e($shop->meta_description); ?><?php $__env->stopSection(); ?>

<?php $__env->startSection('meta'); ?>
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="<?php echo e($shop->meta_title); ?>">
    <meta itemprop="description" content="<?php echo e($shop->meta_description); ?>">
    <meta itemprop="image" content="<?php echo e(asset($shop->logo)); ?>">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="<?php echo e($shop->meta_title); ?>">
    <meta name="twitter:description" content="<?php echo e($shop->meta_description); ?>">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="<?php echo e(asset($shop->meta_img)); ?>">

    <!-- Open Graph data -->
    <meta property="og:title" content="<?php echo e($shop->meta_title); ?>" />
    <meta property="og:type" content="Shop" />
    <meta property="og:url" content="<?php echo e(route('shop.visit', $shop->slug)); ?>" />
    <meta property="og:image" content="<?php echo e(asset($shop->logo)); ?>" />
    <meta property="og:description" content="<?php echo e($shop->meta_description); ?>" />
    <meta property="og:site_name" content="<?php echo e($shop->name); ?>" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <!-- <section>
        <img loading="lazy"  src="https://via.placeholder.com/2000x300.jpg" alt="" class="img-fluid">
    </section> -->

    <?php
        $total = 0;
        $rating = 0;
        foreach ($shop->user->products as $key => $seller_product) {
            $total += $seller_product->reviews->count();
            $rating += $seller_product->reviews->sum('rating');
        }
    ?>

    <section class="gry-bg pt-4 ">
        <div class="container">
            <div class="row align-items-baseline">
                <div class="col-md-6">
                    <div class="d-flex">
                        <img height="70" src="<?php echo e(asset('frontend/images/placeholder.jpg')); ?>" data-src="<?php echo e(asset($shop->logo)); ?>" alt="Shop Logo">
                        <div class="pl-4">
                            <h3 class="strong-700 heading-4 mb-0"><?php echo e($shop->name); ?>

                                <?php if($shop->user->seller->verification_status == 1): ?>
                                    <span class="ml-2"><i class="fa fa-check-circle" style="color:green"></i></span>
                                <?php else: ?>
                                    <span class="ml-2"><i class="fa fa-times-circle" style="color:red"></i></span>
                                <?php endif; ?>
                            </h3>
                            <div class="star-rating star-rating-sm mb-1">
                                <?php if($total > 0): ?>
                                    <?php echo e(renderStarRating($rating/$total)); ?>

                                <?php else: ?>
                                    <?php echo e(renderStarRating(0)); ?>

                                <?php endif; ?>
                            </div>
                            <div class="location alpha-6"><?php echo e($shop->address); ?></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="text-md-right mt-4 mt-md-0 social-nav model-2">
                        <?php if($shop->facebook != null): ?>
                            <li>
                                <a href="<?php echo e($shop->facebook); ?>" class="facebook social_a" target="_blank" data-toggle="tooltip" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                        <?php endif; ?>
                        <?php if($shop->twitter != null): ?>
                            <li>
                                <a href="<?php echo e($shop->twitter); ?>" class="twitter social_a" target="_blank" data-toggle="tooltip" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                        <?php endif; ?>
                        <?php if($shop->instagram != null): ?>
                            <li>
                                <a href="<?php echo e($shop->instagram); ?>" class="instagram social_a" target="_blank" data-toggle="tooltip" data-original-title="Instagram">
                                    <i class="fa fa-instagram"></i>
                                </a>
                            </li>
                        <?php endif; ?>
                        <?php if($shop->google != null): ?>
                            <li>
                                <a href="<?php echo e($shop->google); ?>" class="google-plus social_a" target="_blank" data-toggle="tooltip" data-original-title="Google">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                        <?php endif; ?>
                        <?php if($shop->youtube != null): ?>
                            <li>
                                <a href="<?php echo e($shop->youtube); ?>" class="youtube social_a" target="_blank" data-toggle="tooltip" data-original-title="Youtube">
                                    <i class="fa fa-youtube"></i>
                                </a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="sct-color-1 pt-5 pb-4">
        <div class="container">
            <div class="section-title section-title--style-1 text-center mb-4">
                <h3 class="section-title-inner heading-3 strong-600">
                    <?php echo e($seller->user->name); ?> <?php echo e(__('has not been verified yet.')); ?>

                    <div class="icon-block icon-block--style-3">
                        <i class="la la-hourglass-half"></i>
                    </div>
                </h3>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/seller_shop_without_verification.blade.php ENDPATH**/ ?>