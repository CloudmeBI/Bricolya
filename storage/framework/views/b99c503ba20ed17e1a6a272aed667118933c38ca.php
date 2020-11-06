<header class="row" id="header">

<div class="row m0 top_menus">
    <div class="container">
        <div class="row">
          <div class="nav fleft">
            Tél: +212 522 450 854  I  Email: contact@bricolya.com
          </div>
            <ul class="nav nav-pills fright">
              <li><a href="https://www.facebook.com/Bricolya-106099687864605/?modal=admin_todo_tour" target="_blank"><i class="fa fa-facebook"></i></a></li>
              <li><a href="https://www.instagram.com/bricolya/" target="_blank"><i class="fa fa-instagram"></i></a></li>
              <li><a href="https://www.youtube.com/channel/UCME4qaKamEt7kt7JWiXa5rA/?guided_help_flow=5" target="_blank"><i class="fa fa-youtube"></i></a></li>
              <li><a href="https://www.linkedin.com/company/66952647/admin/" target="_blank"><i class="fa fa-linkedin"></i></a></li>
            <?php if(auth()->guard()->check()): ?>
                <li><a href="<?php echo e(route('logout')); ?>">Déconnecter</a></li>
                <li><a href="<?php echo e(route('dashboard')); ?>">Mon compte</a></li>
            <?php endif; ?>
            </ul>
        </div>
    </div>
 </div>


<div class="row m0 logo_line">
    <div class="container">
        <div class="row">
          <div class="responsive-header">
            <div class="responsive-menubar">
              <div class="menu-resaction">
                <div class="res-openmenu">
                  <i class="fa fa-bars fa-2x"></i> Menu
                </div>
                <div class="res-closemenu">
                  <i class="fa fa-close fa-2x"></i> Close
                </div>
              </div>
            </div>
            <div class="responsive-opensec">
              <div class="responsivemenu">
                <ul class="nav navbar-nav">
                    <li class="<?php echo e(Request::is('/') ? 'active' : ''); ?>">
                        <a href="<?php echo e(url('/')); ?>">Accueil</a>
                    </li>

                    <li class="<?php echo e(Request::is('aboutus') ? 'active' : ''); ?>">
                        <a href="<?php echo e(url('aboutus')); ?>">À propos</a>
                    </li>

                    <li class="<?php echo e(Request::is('all_products') ? 'active' : ''); ?>">
                        <a href="<?php echo e(url('all_products')); ?>">Nos produits</a>
                    </li>

                    <li class="<?php echo e(Request::is('flash_products') ? 'active' : ''); ?>">
                        <a href="<?php echo e(url('flash_products')); ?>">Promotions & Destockage</a>
                    </li>

                    <li class="<?php echo e(Request::is('recruitment') ? 'active' : ''); ?>">
                        <a href="<?php echo e(url('recruitment')); ?>">Recrutement</a>
                    </li>

                    <li class="<?php echo e(Request::is('videos') ? 'active' : ''); ?>">
                        <a href="<?php echo e(url('videos')); ?>">Vidéothèque</a>
                    </li>

                    <li class="<?php echo e(Request::is('contact') ? 'active' : ''); ?>">
                        <a href="<?php echo e(url('contact')); ?>">Contact</a>
                    </li>

                </ul>
              </div>
              <div class="btn-extra">
                  <a href="<?php echo e(route('pdf.export_product_pdf')); ?>"><button class="btn btn-yellow"><i class="fa fa-book"></i><span class="d-none d-lg-inline-block">Télécharger catalogue</span></button></a>
                </div><!-- Btn Extras -->
              <div class="espace">
                <ul class="nav">
                    <li><a href="<?php echo e(url('supplier/login')); ?>"><i class="fa fa-exchange"></i>Espace fournisseur </a></li>
                    <li><a href="<?php echo e(url('users/login')); ?>"><i class="fa fa-heart"></i>Espace client</a></li>
                    <li><a href="<?php echo e(url('reseller/login')); ?>"><i class="fa fa-dashboard"></i>Espace revendeur</a></li>
                </ul>
              </div>
            </div>
          </div>

            <div class="col-sm-5 logo">
                <a href="<?php echo e(url('/')); ?>" class="logo_a"><img src="https://bricolia.dev.cloudme.cloud/public/frontend/images/bricolya-logo-new.png" alt="Bricolya logo"></a>
            </div>

            <div class="col-sm-7 searchSec">
                <!-- search list -->
                <div class="typed-search-box d-none">
                    <div class="search-preloader">
                        <div class="loader"><div></div><div></div><div></div></div>
                    </div>
                    <div class="search-nothing d-none">

                    </div>
                    <div id="search-content">

                    </div>
                </div>
                <!-- search list end -->

                <div class="fleft searchForm">
                    <form action="#" method="get">
                        <div class="input-group">
                            <input type="hidden" name="search_param" value="all" id="search_param">
                            <input type="search" id="search" class="form-control" placeholder="Rechercher un produit">

                            <span class="input-group-btn searchIco">
                                <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                            </span>


                        </div><!-- /input-group -->
                    </form>
                </div>
                <div class="fleft wishlistCompare">
                    <ul class="nav">
                        <li><a href="<?php echo e(url('supplier/login')); ?>"><i class="fa fa-exchange"></i>Espace fournisseur </a></li>
                        <li><a href="<?php echo e(url('users/login')); ?>"><i class="fa fa-heart"></i>Espace client</a></li>
                        <li><a href="<?php echo e(url('reseller/login')); ?>"><i class="fa fa-dashboard"></i>Espace revendeur</a></li>
                    </ul>
                </div>
                <div class="fleft cartCount">
                    <div class="cartCountInner row m0">
                        <?php if(Session::has('cart')): ?>
                            <a href="<?php echo e(url('cart')); ?>"><span class="badge"><?php echo e(count(Session::get('cart'))); ?></span></a>
                        <?php else: ?>
                            <span class="badge">0</span>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-default m0 navbar-static-top">
    <div class="container-fluid container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainNav">
                <i class="fa fa-bars"></i> Navigation
            </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="mainNav">
            <ul class="nav navbar-nav">
                <li class="<?php echo e(Request::is('/') ? 'active' : ''); ?>">
                    <a href="<?php echo e(url('/')); ?>">Accueil</a>
                </li>

                <li class="<?php echo e(Request::is('aboutus') ? 'active' : ''); ?>">
                    <a href="<?php echo e(url('aboutus')); ?>">À propos</a>
                </li>

                <li class="<?php echo e(Request::is('all_products') ? 'active' : ''); ?>">
                    <a href="<?php echo e(url('all_products')); ?>">Nos produits</a>
                </li>

                <li class="<?php echo e(Request::is('flash_products') ? 'active' : ''); ?>">
                    <a href="<?php echo e(url('flash_products')); ?>">Promotions & Destockage</a>
                </li>

                <li class="<?php echo e(Request::is('recruitment') ? 'active' : ''); ?>">
                    <a href="<?php echo e(url('recruitment')); ?>">Recrutement</a>
                </li>

                <li class="<?php echo e(Request::is('videos') ? 'active' : ''); ?>">
                    <a href="<?php echo e(url('videos')); ?>">Vidéothèque</a>
                </li>

                <li class="<?php echo e(Request::is('contact') ? 'active' : ''); ?>">
                    <a href="<?php echo e(url('contact')); ?>">Contact</a>
                </li>
                <li class="">

                    <a href="<?php echo e('/'.asset('/static_files/catalogue_client.pdf')); ?>"><button class="btn btn-yellow"><i class="fa fa-book"></i><span class="d-none d-lg-inline-block">Télécharger catalogue</span></button></a>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

</header> <!--Header-->
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/inc/nav.blade.php ENDPATH**/ ?>