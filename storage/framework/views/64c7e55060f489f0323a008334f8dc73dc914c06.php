

<?php $__env->startSection('content'); ?>
    <section class="row contentRowPad">
        <div class="container">

            <!-- (.p2_relation_mv_down {  margin: 70px auto 0 auto;}) this call is for margin the header  -->
            <div class="row col-sm-8 my15">
                <div class="row m0">

                    <h3 class="heading">Créer un compte :</h3>

                </div>
                <div class="row m0 excerpt">
                    <p>
                        En créant un compte aupres de notre site, vous serez en mesure de passer vos commandes
                        plus rapidement, consulter et suivre vos commandes, et bien plus encore.
                    </p>
                </div>
                <div class="row m0 contactForm">

                    <?php if(session()->has('success')): ?>
                        <div class="alert alert-success"><?php echo e(session()->get('success')); ?></div>
                    <?php endif; ?>
                    <form class="form-default" role="form" action="<?php echo e(route('user.registration')); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <div class="row">
                            <div class="form-group col-xs-12 col-md-6">
                                <input type="text" class="form-control<?php echo e($errors->has('name') ? ' is-invalid' : ''); ?>"  value="<?php echo e(old('name')); ?>" placeholder="Nom" name="name">
                                <?php if($errors->has('name')): ?>
                                    <div class="text-danger"><?php echo e($errors->first('name')); ?></div>
                                <?php endif; ?>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <input type="text" id="phone-code" required class="border-right-0 h-100 w-100 form-control<?php echo e($errors->has('phone') ? ' is-invalid' : ''); ?>" value="<?php echo e(old('phone')); ?>" placeholder="Téléphone" name="phone">
                                <?php if($errors->has('phone')): ?>
                                    <div class="text-danger"><?php echo e($errors->first('phone')); ?></div>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-12 col-md-6">
                                <input type="email" class="form-control<?php echo e($errors->has('email') ? ' is-invalid' : ''); ?>" required value="<?php echo e(old('email')); ?>" placeholder="<?php echo e(__('E-mail')); ?>" name="email">
                                <?php if($errors->has('email')): ?>
                                    <div class="text-danger"><?php echo e($errors->first('email')); ?></div>
                                <?php endif; ?>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <input type="password" class="form-control<?php echo e($errors->has('password') ? ' is-invalid' : ''); ?>" required placeholder="Mot de passe" name="password">
                                <?php if($errors->has('password')): ?>
                                    <div class="text-danger"><?php echo e($errors->first('password')); ?></div>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-xs-12 col-md-6">
                                <input type="text" class="form-control" placeholder="Ville" name="city"> <br>
                                <?php if($errors->has('city')): ?>
                                    <div class="text-danger"><?php echo e($errors->first('city')); ?></div> <br>
                                <?php endif; ?>
                                <input type="text" class="form-control" required placeholder="Adresse" name="address">
                                <?php if($errors->has('address')): ?>
                                    <div class="text-danger"><?php echo e($errors->first('address')); ?></div> <br>
                                <?php endif; ?>
                            </div>
                            <div class="form-group col-xs-12 col-md-6">
                                <input type="password" class="form-control" required placeholder="Confirmer le mot de passe" name="password_confirmation">
                                <?php if($errors->has('password_confirmation')): ?>
                                    <div class="text-danger"><?php echo e($errors->first('password_confirmation')); ?></div>
                                <?php endif; ?>
                            </div>
                        </div>
                        <div class="row">
                                <div class="form-group col-xs-12 col-md-6">
                                    <button type="submit" class="btn btn-black_hover_yellow btn-block">Valider</button>
                                </div>
                            </div>
                    </form>



                    <div id="error">
                            <span>
                                Something went wrong, try refreshing and submitting the form again.
                            </span>
                    </div>
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
                    <h3>Bénéficiez de nos promotions exclusives!</h3>
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
<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/user_registration.blade.php ENDPATH**/ ?>