<?php $__env->startPush('seometa'); ?>
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Chez Bricolya, Promotions à couper le soufle en  matériels de bricolage, matériels d'outillage, de quincaillerie, sanitaire et plomberie, cadenas et serrure, etc…" />
<meta name="keywords" content="">
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
<section id="breadcrumbRow" class="row">
        <div class="page-top-info">
        		<div class="container">
        			<h3 style="color: black;">Promotions & Destockage</h3>
        		</div>
        	</div>
    </section>

    <section class="row contentRowPadPage">
        <div class="container">
            <div class="row">
            <!-- Side column -->
            <!-- Side column category filter -->
            <?php echo $__env->make('frontend.partials.sidebar_category_filter', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- End side column -->
<!-- End side column -->

  <!-- Produt start up -->
        <div class="col-md-9  order-1 order-lg-2 mb-5 mb-lg-0">
					<div class="row">
            <div class="product">

				<div class="row m0 sectionTitle">
					<h3>Nos promotions</h3>
				</div>
            </div>
                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-4 col-sm-4 product">
                        <div class="productInner row m0">
                            <div class="row m0 imgHov">
                            <img src="<?php echo e(asset($product->featured_img)); ?>" alt="<?php echo e(__($product->name)); ?>">
                                <div class="row m0 hovArea">
                                    <div class="row m0 icons">
                                        <ul class="list-inline">
                                            <li><a href="#"><i class="glyphicon glyphicon-zoom-in"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="row m0 proType"><a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>
                                    <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                                </div>
                            </div>
                            <div class="row m0 proName"><a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>
                            <div class="row m0 proBuyBtn">
                                <button onclick="addToCart()" class="addToCart btn">Ajouter au panier</button>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
            <?php echo e($products->links()); ?>




        <!-- Destockage  -->

					<div class="row">
            <div class="product">
				<div class="row m0 sectionTitle">
					<h3>Déstockage</h3>
				</div>
            </div>
                <?php $__currentLoopData = $today_deal_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-4 col-sm-4 product">
                        <div class="productInner row m0">
                            <div class="row m0 imgHov">
                            <img src="<?php echo e(asset($product->featured_img)); ?>" alt="<?php echo e(__($product->name)); ?>">
                                <div class="row m0 hovArea">
                                    <div class="row m0 icons">
                                        <ul class="list-inline">
                                            <li><a href="#"><i class="glyphicon glyphicon-zoom-in"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="row m0 proType"><a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>
                                    <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                                </div>
                            </div>
                            <div class="row m0 proName"><a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>
                            <div class="row m0 proBuyBtn">
                                <a href="<?php echo e(route('product', $product->slug)); ?>"> <button class="addToCart btn">Ajouter au panier</button></a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
            <?php echo e($today_deal_products->links()); ?>


        </div>
        <!-- Destockage  -->

      </div>
    </div>
  </section>
<!-- End Produt -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/products/flash_products.blade.php ENDPATH**/ ?>