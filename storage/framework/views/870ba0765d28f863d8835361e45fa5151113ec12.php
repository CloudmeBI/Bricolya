<?php $__env->startSection('content'); ?>

    <section class="row">

        <?php if(session()->has('success')): ?>
            <div class="alert alert-success"><?php echo e(session()->get('success')); ?></div>
        <?php endif; ?>
        <div class="container contentRowPad">
            <div class="row col-sm-6">
                <div class="row m0 titleRow mb30">
                    <h3 class="contactHeading heading">Espace Revendeur</h3>
                    <div class="row m0 excerpt">
                        <p>
                            En Créant un compte auprès de notre site, vous serez en mesure de passer vos commandes
                            plus rapidement, consulter et suivre vos commandes, et bien plus encore.
                        </p>
                    </div>
                </div>

                <a href="<?php echo e(route('reseller.register.get')); ?>" type="button" class="btn btn-dark btn-sm" >Créer un compte</a>
            </div>
            <div class="row col-sm-6 my15">
                <div class="row m0">
                    <h3 class="heading">Vous avez déjà un compte?</h3>
                    <h3 class="heading">Connectez-vous!</h3>
                </div>
                <div class="row m0">
         
                    <form class="row m0" id="contactForm" method="post" name="contact" action="/reseller/login">
                        <?php echo csrf_field(); ?>
                        <div class="row m0">
                            <label for="email">Email:</label>
                            <input type="text" class="form-control" name="email" id="email">
                            <?php if ($errors->has('email')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('email'); ?>
                            <div class="text-danger"><?php echo e($message); ?></div>
                            <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                        </div>
                        <div class="row m0">
                            <label for="password">Mot de passe:</label>
                            <input type="password" class="form-control" name="password" id="password">
                        </div>
                        <div class="row m0">
                            <label for="subject">
                                <a href="#"> Mot de passe oublié </a>
                            </label>
                        </div>

                        <button class="btn btn-dark btn-sm" type="submit">Se connecter</button>
                    </form>

                </div>
            </div>
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
                <p>Adresse: High dis 99-100 rue Metz Casablance - Macroc</p>
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
                    <a href="<?php echo e(url('flash_products')); ?>" class="btn btn-yellow">J'en profite</a>
                </div>
            </div>
        </div>
    </section>
    <!-- Banner End -->

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        function autoFillSeller(){
            $('#email').val('seller@example.com');
            $('#password').val('123456');
        }
        function autoFillCustomer(){
            $('#email').val('customer@example.com');
            $('#password').val('123456');
        }
    </script>
<?php $__env->stopSection(); ?>













<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/reseller_login.blade.php ENDPATH**/ ?>