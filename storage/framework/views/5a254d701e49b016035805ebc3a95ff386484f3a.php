<?php $__env->startPush('seometa'); ?>
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Chez Bricolya, Retrouvez toute une gamme de matériels de bricolage en ligne chez BRICOLYA, vente de matériels d'outillage, de quincaillerie, sanitaire et plomberie, cadenas et serrure" />
<meta name="keywords" content="">
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
<section class="row contentRowPad">
        <div class="container">
              <div class="col-sm-6">
                  <div class="row m0">
                    <h3 class="heading mb30"> À propos de nous </h3>
                        <div class="row m0 shortDesc mb30">
                            <p>BRICOLYA est la plateforme électronique liée à l’entreprise HIGH DIST crée en 2005 et spécialisée dans la vente des produits de la droguerie aux distributeurs grossistes et détaillants. </p>
                            <p>Nous accordons une importance primordiale à la qualité de nos articles, à leur praticité et à leur bonne durée de vie.</p>
                            <p>Visitez-nous et découvrez plusieurs gammes de produits pour garnir vos drogueries et vos points de vente (serrures, articles de bricolage, électricité, peinture, produits industriels, etc.) vous y trouverez certainement les articles qui répondront à vos besoins.</p>
                            <p>Pour les clients étrangers, il est possible d'exporter certains de nos produits.</p>
                        </div>
                        <div class="col-sm-3">
						   <a href="<?php echo e(url('contact')); ?>">
								 <button type="button" class="btn btn-dark btn-sm"> Demander un devis</button></center>
						   </a>
                      </div>
                  </div>
              </div>
                <div class="col-sm-6">
                    <div class="row m0 flexslider" id="productImageSlider">
                        <img class="img-responsive" src="https://bricolia.dev.cloudme.cloud/public/frontend/images/bricolya-about-image1.jpg" alt="">
                    </div>
                </div>
        </div>
    </section>
    <!-- Banner start -->
		<section id="promotion" class="row contentRowPad">
			<div class="container">
				<div class="row text_lines1 m0">
					<h3 class="bannerHeading">Découvrez tous nos produits en ligne !</h3>
				   <a href="<?php echo e(url('flash_products')); ?>">
					<button type="button" class="btn btn-yellow"> J'en profite </button>
				   </a>
				</div>
			</div>
		</section>
    <!-- Banner End -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/368495.cloudwaysapps.com/urvfepvzma/public_html/resources/views/frontend/aboutus/index.blade.php ENDPATH**/ ?>