<?php $__env->startPush('seometa'); ?>
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Chez Bricolya, Retrouvez nos produits en ligne: de matériels de bricolage, matériels d'outillage, de quincaillerie, sanitaire et plomberie, cadenas et serrure" />
<meta name="keywords" content="">
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
<section id="breadcrumbRow" class="row">
        <div class="page-top-info">
        		<div class="container">
        			<h3 style="color: black;">Tous les produits</h3>
        		</div>
        	</div>
    </section>

    <section class="row contentRowPadPage">
        <div class="container">
            <div class="row">
        <!-- Side column category filter -->
             <?php echo $__env->make('frontend.partials.sidebar_category_filter', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <!-- End side column -->

  <!-- Produt start up -->
        <div class="col-md-9  order-1 order-lg-2 mb-5 mb-lg-0">
					<div class="row">
            <div class="product">
              <div class="productHeader">
                <h3> Nos produits</h3>
              </div>
            </div>
                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-3 col-sm-3 product">
                        <div class="productInner row m0">
                            <div class="row m0 imgHov">
                                <?php if($product->thumbnail_img): ?>
                                    <img src="<?php echo e(asset($product->thumbnail_img)); ?>" alt="<?php echo e(__($product->name)); ?>">
                                <?php else: ?>
                                    <img src="https://boschbrandstore.com/wp-content/uploads/2019/01/no-image.png" alt="<?php echo e(__($product->name)); ?>">
                                <?php endif; ?>
                                <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
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
                               <a href="<?php echo e(route('product', $product->slug)); ?>"><button class="addToCart btn">Ajouter au panier</button></a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            <?php echo e($products->links()); ?>


        </div>
      </div>
    </div>
  </section>
<!-- End Produt -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/368495.cloudwaysapps.com/urvfepvzma/public_html/resources/views/frontend/products/all_products.blade.php ENDPATH**/ ?>