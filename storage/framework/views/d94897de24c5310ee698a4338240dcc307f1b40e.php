<?php $__env->startSection('content'); ?>
  <section id="slider" class="row">
      <div class="row sliderCont flexslider m0">
          <ul class="slides nav">
              <li>
                  <img src="<?php echo e(asset('frontend/images/slider/bricolya-banner1.jpg')); ?>" alt="">
                  <div class="text_lines row m0">
                      <div class="container p0">
                        <div class="col-md-5">
                          <h4><span>Profitez</span> de notre vaste gamme de matériaux de bricolage ! </h4><br>
                          <a href="<?php echo e(url('flash_products')); ?>">
                            <button type="button" class="btn btn-yellow"> Découvrez nos promotions </button>
                          </a>
                        </div>
                      </div>
                  </div> <!--Text Lines-->
              </li>
              <li>
                  <img src="<?php echo e(asset('frontend/images/slider/bricolya-banner2.jpg')); ?>" alt="">
                  <div class="text_lines row m0">
                      <div class="container p0">
                        <div class="col-md-5">
                          <h4><span>Découvrez</span> notre large gamme de materiel de bricolage !</h4><br>
                          <a href="<?php echo e(url('flash_products')); ?>">
                            <button type="button" class="btn btn-yellow"> Decouvrez nos promotions </button>
                          </a>
                        </div>
                      </div>
                  </div> <!--Text Lines-->
              </li>

          </ul>
      </div>
  </section> <!--Slider-->

  <section id="nouveautés" class="row">
      <div class="row m0 sectionTitle">
          <h3>Nouveautés</h3>
      </div>
      <div class="owl-carousel featureCats row m0">
      <?php $__currentLoopData = filter_products(\App\Product::orderBy('id', 'desc')->where('published', 1))->limit(12)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="product mx30">
            <div class="productInner row m0">
                <div class="row m0 imgHov">
                    <?php if($product->thumbnail_img): ?>
                        <img src="<?php echo e(asset($product->thumbnail_img)); ?>" alt="<?php echo e(__($product->name)); ?>">
                    <?php else: ?>
                        <img src="https://boschbrandstore.com/wp-content/uploads/2019/01/no-image.png" alt="<?php echo e(__($product->name)); ?>">
                    <?php endif; ?>
                    <div class="row m0 hovArea">
                        <div class="row m0 icons">
                            <ul class="list-inline">
                                <li><a href="javascript::void(0)" onclick="showAddToCartModal(<?php echo e($product->id); ?>)"><i class="fa fa-expand"></i></a></li>
                            </ul>
                        </div>
                        <div class="row m0 proType"><a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>

                        <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                    </div>
                </div>
                <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                <div class="row m0 proName"> <a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>
                <div class="row m0 proBuyBtn">
                      <a href="<?php echo e(route('product', $product->slug)); ?>"><button class="addToCart btn">ajouter au panier</button></a>
                </div>
            </div>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </div>
  </section>

  <!-- categories -->
  <section id="categories" class="row contentRowPad">
    <div class="container">
        <div class="row sectionTitle">
          <h3>Nos catégories</h3>
        </div>
        <div class="row">
          <div class="col-md-4">
              <div class="row categoriesCard">
                <a href="<?php echo e(url('search?category=porduit-outillage')); ?>">
                    <h4>Bricolage & Outillage</h4>
                    <div class="col-sm-3 text-center my15">
                      <img src="<?php echo e(asset('frontend/images/icons/outillage.png')); ?>">
                    </div>
                    <div class="col-sm-9" >
                      <p>Qui dit bon bricoleur dit toujours bon outil ! Retrouvez chez nous toute la gamme des outils essentiels au bricoleur qu'il soit débutant ou expert</p>
                    </div>
                </a>
              </div>
              <div class="row categoriesCard">
                <a href="<?php echo e(url('search?category=sanitaire-plomberie')); ?>">
                    <h4>Sanitaire & Plomberie</h4>
                    <div class="col-sm-3 text-center my15">
                      <img src="<?php echo e(asset('frontend/images/icons/plomberie.png')); ?>">
                    </div>
                    <div class="col-sm-9" >
                      <p>Que vous soyez un professionnel ou un particulier, vous ne manquerez pas de trouver les différents produits dans tout ce qu'il faut pour réaliser une installation de plomberie et/ou de sanitaire.</p>
                    </div>
                </a>
              </div>
          </div>
          <div class="col-md-4 text-center my15">
              <img src="<?php echo e(asset('frontend/images/categories-img1.jpg')); ?>" alt="" class="circle">
          </div>
          <div class="col-md-4">
              <div class="row categoriesCard">
                <a href="<?php echo e(url('search?category=produit-cadenas')); ?>">
                    <h4>Serrure & Cadenas</h4>
                    <div class="col-sm-3 text-center my15">
                      <img src="<?php echo e(asset('frontend/images/icons/cadenas.png')); ?>">
                    </div>
                    <div class="col-sm-9" >
                      <p>Tous nos produits sont conformes aux normes de précision et de fiabilité technique. Afin de garantir la stabilité et la sécurité dans diverses applications..</p>
                    </div>
                </a>
              </div>
              <div class="row categoriesCard">
                <a href="<?php echo e(url('search?category=peinture-et-nettoyage')); ?>">
                    <h4>Peinture & Nettoyage</h4>
                    <div class="col-sm-3 text-center my15">
                      <img src="<?php echo e(asset('frontend/images/icons/peinture.png')); ?>">
                    </div>
                    <div class="col-sm-9" >
                      <p>On vous propose une large gamme d'équipements inédite pour la peinture & nettoyage. Découvrez notre gamme de matériels pour le nettoyage professionnel de vos surfaces/espaces.</p>
                    </div>
                </a>
              </div>
          </div>
        </div>
    </div>
  </section>
  <!--categories-->

  <section id="testimonialTabs1" class="row contentRowPad">
    <div class="container">
      <h4 class="bannerHeading mb30">Des promotions à ne pas manquer chez Bricolya !</h4>
      <a href="<?php echo e(url('flash_products')); ?>">
        <button type="button" class="btn btn-yellow"> Decouvrez nos promotions </button>
      </a>
    </div>
  </section> <!--Testimonial Tabs-->

  <section id="promotions" class="row contentRowPad">
      <div class="row m0 sectionTitle">
          <h3>Promotions</h3>
      </div>
      <div class="owl-carousel featureCats row m0">
      <?php $__currentLoopData = filter_products(\App\Product::orderBy('id', 'desc')->where('published', 1)->where('featured', '1'))->limit(12)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="product mx30">
            <div class="productInner row m0">
                <div class="row m0 imgHov">
                    <?php if($product->thumbnail_img): ?>
                        <img src="<?php echo e(asset($product->thumbnail_img)); ?>" alt="<?php echo e(__($product->name)); ?>">
                    <?php else: ?>
                        <img src="https://lh3.googleusercontent.com/proxy/DRkCCIK44pKim4zeskurLAWHvBo5deib-lsXEbjVqoDcctJOE8uou_GCxZtAwkMNqfH1HLJINdsIQCUzf4RJNdoNunvHNj_e-lOcsB4VF_bTiS4" alt="<?php echo e(__($product->name)); ?>">
                    <?php endif; ?>
                    <div class="row m0 hovArea">
                        <div class="row m0 icons">
                            <ul class="list-inline">
                                <li><a href="javascript::void(0)" onclick="showAddToCartModal(<?php echo e($product->id); ?>)"><i class="fa fa-expand"></i></a></li>
                            </ul>
                        </div>
                        <div class="row m0 proType"><a href="#">Category</a></div>

                        <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                    </div>
                </div>
                <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                <div class="row m0 proName"> <a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>
                <div class="row m0 proBuyBtn">
                    <a href="<?php echo e(route('product', $product->slug)); ?>"><button class="addToCart btn">Ajouter au panier</button></a>
                </div>
            </div>
        </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </div>
  </section>

  <!-- Promotions -->
  <section id="promotion" class="row contentRowPad">
      <div class="container p0 g-pos-rel g-z-index-1 g-pt-50 g-pb-30">
        <div class="row">
          <div class="text_lines1 row m0">
          <h4 class="bannerHeading">Profitez de nos différentes offres et produits en déstockage !</h4>
            <a href="<?php echo e(url('flash_products')); ?>">
              <button type="button" class="btn btn-yellow"> J'en profite </button>
            </a>
          </div>
        </div>
      </div>
  </section>
  <!--Promotions Tabs-->

  <section id="destockage" class="row">
        <div class="row m0 sectionTitle">
            <h3>Déstockage</h3>
        </div>
        <div class="owl-carousel featureCats row m0">
        <?php $__currentLoopData = filter_products(\App\Product::orderBy('id', 'desc')->where('published', 1)->where('todays_deal', '1'))->limit(12)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <div class="product mx30">
              <div class="productInner row m0">
                  <div class="row m0 imgHov">
                      <?php if($product->thumbnail_img): ?>
                          <img src="<?php echo e(asset($product->thumbnail_img)); ?>" alt="<?php echo e(__($product->name)); ?>">
                      <?php else: ?>
                          <img src="https://lh3.googleusercontent.com/proxy/DRkCCIK44pKim4zeskurLAWHvBo5deib-lsXEbjVqoDcctJOE8uou_GCxZtAwkMNqfH1HLJINdsIQCUzf4RJNdoNunvHNj_e-lOcsB4VF_bTiS4" alt="<?php echo e(__($product->name)); ?>">
                      <?php endif; ?>
                      <div class="row m0 hovArea">
                          <div class="row m0 icons">
                              <ul class="list-inline">
                                  <li><a href="javascript::void(0)" onclick="showAddToCartModal(<?php echo e($product->id); ?>)"><i class="fa fa-expand"></i></a></li>
                              </ul>
                          </div>
                          <div class="row m0 proType"><a href="#">Category</a></div>

                          <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                      </div>
                  </div>
                  <div class="row m0 proPrice"><?php echo e(home_discounted_base_price($product->id)); ?></div>
                  <div class="row m0 proName"> <a href="<?php echo e(route('product', $product->slug)); ?>"><?php echo e(__($product->name)); ?></a></div>
                  <div class="row m0 proBuyBtn">
                      <a href="<?php echo e(route('product', $product->slug)); ?>"><button class="addToCart btn">ajouter au panier</button></a>
                  </div>
              </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </section>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/368495.cloudwaysapps.com/urvfepvzma/public_html/resources/views/frontend/index.blade.php ENDPATH**/ ?>