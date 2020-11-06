

<?php $__env->startSection('content'); ?>

    <section class="row">
        <?php if(session()->has('success')): ?>
            <div class="alert alert-success"><?php echo e(session()->get('success')); ?></div>
        <?php endif; ?>
        <div class="container contentRowPad">
            <div class="row col-sm-12">
                <div class="fleft titlePart">
                    <h3 class="contactHeading heading">Espace Revendeur</h3>
                    <div class="row m0 excerpt">
                        <p>
                            En Créant un compte auprès de notre site, vous serez en mesure de passer vos commandes
                            plus rapidement, consulter et suivre vos commandes, et bien plus encore.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row col-sm-12">
                <div class="row m0 titleRow  ">
                    <div class="titlePart">

                        <form action="<?php echo e(route('reseller.register')); ?>" method="post" id="sellerForm" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Nom" name="last_name">
                                        <?php if ($errors->has('last_name')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('last_name'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Description de l’activité" name="activity_descrition">
                                        <?php if ($errors->has('activity_descrition')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('activity_descrition'); ?>
                                            <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control"placeholder="Prénom" name="first_name">
                                        <?php if ($errors->has('first_name')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('first_name'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Produits vendus" name="products_sold">
                                        <?php if ($errors->has('products_sold')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('products_sold'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="email" class="form-control" placeholder="E-mail" name="email">
                                        <?php if ($errors->has('email')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('email'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Ville" name="city">
                                        <?php if ($errors->has('city')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('city'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-12">
                                        <input type="text" class="form-control" placeholder="Adresse" name="address">
                                        <?php if ($errors->has('address')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('address'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Téléphone" name="telephone">
                                        <?php if ($errors->has('telephone')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('telephone'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Site web" name="website">
                                        <?php if ($errors->has('website')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('website'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="password" class="form-control" placeholder="Mot de passe" name="password">
                                        <?php if ($errors->has('password')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('password'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>

                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="password" class="form-control" placeholder="Confirmer le mot de passe" name="confirm_password">
                                        <?php if ($errors->has('confirm_password')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('confirm_password'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Catégorie / Spécialité" name="category_Specialty">
                                        <?php if ($errors->has('category_Specialty')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('category_Specialty'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>


                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="file" name="document" value="Choisir un fichier" style="color: black;">
                                        <p style="font-size: 13px;">Formats autorisés: pdf, doc</p>
                                        <?php if ($errors->has('document')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('document'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <button type="submit" class="btn btn-black_hover_yellow btn-lg btn-block" form="sellerForm">Valider</button>
                                    </div>
                                </div>
                            </div>
                        </form>
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

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/reseller_register.blade.php ENDPATH**/ ?>