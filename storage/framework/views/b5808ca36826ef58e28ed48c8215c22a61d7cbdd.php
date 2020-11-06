<footer class="row">
        <div class="row m0 topFooter">

            <div class="container line2">
                <div class="row">
                    <div class="col-sm-3 widget">
                        <div class="row m0">
                          <div class="media">
                              <img class="mb15" src="https://bricolya.com/public/frontend/images/bricolya-logo-white.png" alt="Bricolya logo">
                          </div>
                            <h4>Suivez-nous</h4>
                            <ul class="list-inline">
                                <li><a href="https://www.facebook.com/Bricolya-106099687864605/?modal=admin_todo_tour" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://www.instagram.com/bricolya/" target="_blank"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="https://www.youtube.com/channel/UCME4qaKamEt7kt7JWiXa5rA/?guided_help_flow=5" target="_blank"><i class="fa fa-youtube"></i></a></li>
                                <li><a href="https://www.linkedin.com/company/66952647/admin/" target="_blank"><i class="fa fa-linkedin"></i></a></li>

                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-1 col-xs-2">
                        <!-- <div class="col-sm-6 m0"> -->


                    </div>
                    <div class="col-sm-4 widget">
                        <!-- <div class="col-sm-6 m0"> -->
                        <h4>Plan du site</h4>
                        <ul class="nav col-xs-6">
                              <li><a href="<?php echo e(url('/')); ?>">Accueil</a></li>
                              <li><a href="<?php echo e(url('aboutus')); ?>">À propos</a></li>
                              <li><a href="<?php echo e(url('all_products')); ?>">Nos produits</a></li>
                              <li><a href="<?php echo e(url('flash_products')); ?>">Promotions</a></li>
                        </ul>
                            <ul class="nav col-xs-6">
                                <li><a href="<?php echo e(url('flash_products')); ?>">Destockage</a></li>
                                <li><a href="<?php echo e(url('recruitment')); ?>">Recrutement</a></li>
                                <li><a href="<?php echo e(url('videos')); ?>">Vidéothèque</a></li>
                                <li><a href="<?php echo e(url('contact')); ?>">Contact</a></li>
                            </ul>

                    </div>

                    <div class="col-sm-4 widget">
                        <div class="text-center mb30">
                            <h4>Contact</h4>
                            <p>Adresse: High dis 99-100 rue Metz Casablanca - Maroc</p>
                            <p>Téléphone: +212 522 450 854</p>
                            <p>Email: contact@bricolya.com </p>
                        </div>
                        <form action="<?php echo e(route('subscribers.store')); ?>" method="post" role="form">
                            <?php echo csrf_field(); ?>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                <input type="email" required="" class="form-control" id="subscribeEmail" name="email" placeholder="EMAIL ADDRESS">
                            </div>
                            <input type="submit" class="form-control" value="s'inscrire" id="submit" name="submit">
                        </form>

                    </div>
                </div>
            </div>
        </div>

        <div class="m0 copyRight text-center">
          <div class="mb15"><a>Déclaration du cookie</a> | <a href="<?php echo e(asset('static_files/Politique_de_confidentialité-Bricolya.docx')); ?>" target="_blank" download>Politique de confidentialité</a>  | <a href="<?php echo e(asset('static_files/Conditions_générales_de_vente-Bricolya.docx')); ?>" target="_blank" download>Conditions générales</a></div>
          <div class="">Copyright &#169; <a href="<?php echo e(url('/')); ?>">Bricolya</a>  2020 - By Cloudme International</div>

        </div>

    </footer>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/inc/footer.blade.php ENDPATH**/ ?>