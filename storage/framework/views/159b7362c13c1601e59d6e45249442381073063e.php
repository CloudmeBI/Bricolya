<?php $__env->startPush('seometa'); ?>
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Chez Bricolya, Retrouvez toute une gamme de matériels de bricolage en ligne chez BRICOLYA, vente de matériels d'outillage, de quincaillerie, sanitaire et plomberie, cadenas et serrure" />
<meta name="keywords" content="">
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
<section id="videoPage" class="row contentRowPad">
      <div class="container">
            <h3 class="heading">Vidéothèque</h3>
            <div class="row mb30">

                <!-- start -->
                <?php $__currentLoopData = \App\Video::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $video): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="card col-sm-6 my15">
                  <div class="card mb-4 box-shadow">
                    <div class="card-body">
                      <!-- Header -->
                      <h4 class="card-title heading"><?php echo e($video->title); ?></h4>
                      <p class="card-text"><?php echo e($video->description); ?>

                        <a href="#" class="label label-danger">more</a></p>
                      </div>
                      <!-- video -->
                      <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="<?php echo e($video->link); ?>" allowfullscreen></iframe>
                      </div>
                      <!-- Link -->
                      <p class="row">
                        <div class="col-sm-7">
                          <i class="fa fa-share-alt text-left" aria-hidden="true">  Share this video to:</i>
                        </div>
                        <div class="col-sm-5">
                          <ul class="list-inline text-right" >
                              <li ><a href="#"><i class="fa fa-facebook fa-lg" ></i></a></li>
                              <li ><a href="#"><i class="fa fa-twitter fa-lg" ></i></a></li>
                              <li ><a href="#"><i class="fa fa-instagram fa-lg "></i></a></li>
                          </ul>
                        </div>
                      </p>
                      <!-- Close link icon -->
                    </div>
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <!-- end -->
              </div>
           
        </div>
    </section>

    <!-- angle-background -->
    <section id="angle-background" class="row shortcodesRow">
        <div class="angle-background-black"></div>
        <div class="angle-background"></div>

        <div class="container mb30">
            <div class="col-sm-6 ">
                <h4 class="heading">Où nous trouver?</h4>
                <p>Adresse: High dis 99-100 rue Metz Casablanca - Maroc</p>
                <p>Telephone: +212 522 450 854</p>
                <p>Email: contact@bricolya.com</p>
            </div>
        </div>
    </section>

    <!-- Banner start -->
     <section id="contactBanner" class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <h3>Bénéficiez de nos promotions exclusives !</h3>
                </div>
                <div class="col-sm-3">
                   <a href="<?php echo e(url('flash_products')); ?>">
				   <button type="button" class="btn btn-yellow btn-sm"> J'en profite </button>
				   </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner End -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/videos/index.blade.php ENDPATH**/ ?>