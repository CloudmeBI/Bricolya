

<?php $__env->startSection('content'); ?>

    <section class="row">
        <?php if(session()->has('success')): ?>
            <div class="alert alert-success"><?php echo e(session()->get('success')); ?></div>
        <?php endif; ?>
        <div class="container contentRowPad">
            <div class="row col-sm-12">
                <div class="row m0 titleRow mb30">
                    <div class="fleft titlePart">
                        <h3 class="contactHeading heading">Espace Fournisseur</h3>
                        <div class="row m0 excerpt">
                            <p>
                                En Créant un compte auprès de notre site, vous serez en mesure de passer vos commandes
                                plus rapidement, consulter et suivre vos commandes, et bien plus encore.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="row m0 titleRow mb30">
                    
                    <div class="">
                        <div class="row m0 excerpt">


                            <form action="<?php echo e(route('supplier.register')); ?>" method="post" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <input type="text" class="form-control" placeholder="Nom" name="last_name">
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
                                    </div>
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
                                </div>
                                <div class="row">
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

                                </div>
                                <div class="row">
                                    <div class="form-group col-xs-12 col-md-6">
                                        <label class="col-sm-12">
                                            Votre catalogue
                                        </label>
                                        <div class="col-sm-12">
                                            <input type="file" name="document" value="Choisir un fichier" style="color: black;">
                                            <p style="font-size: 13px;">Formats autorisés: pdf, doc</p>
                                        </div>
                                        <?php if ($errors->has('document')) :
if (isset($message)) { $messageCache = $message; }
$message = $errors->first('document'); ?>
                                        <div class="text-danger"><?php echo e($message); ?></div>
                                        <?php unset($message);
if (isset($messageCache)) { $message = $messageCache; }
endif; ?>
                                    </div>
                                    <div class="form-group col-xs-12 col-md-6">
                                        
                                        <button type="submit" class="btn btn-black_hover_yellow btn-lg btn-block d-flex justify-content-center align-items-center text-center" style="justify-content:center !important;">Valider</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>



                <div class="modal fade" id="mesg" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h3 class="heading my15">
                                    Cher "Nom Prenom",
                                </h3>
                            </div>
                            <div class="modal-body">
                                <div class="spaceline">
                                    <p>
                                        Nous Vous souhaitons la bienvenue sur bricolya.com. Pour vous connecter lors de vos visites
                                        sur notre site, cliquez sur connexion ou Mon compte en haut de chaque page, puis saisissez
                                        votre adress electronique et votre mot de passe.
                                    </p>
                                </div>
                                <br>
                                <div class="spaceline">
                                    <p> Utilisez les valeurs suivants lorsque vous etes invite a vous connecter: </p>
                                    <p> Courriel: xxxxx@xxxx.com </p>
                                    <p> Mot de passe: xxxxxxxx </p>
                                </div>
                                <div class="spaceline">
                                    <p> En vous connectant a votre compte, vous pourrez: </p>
                                    <br>
                                    <ul>
                                        <li><p>Passez vos commandes plus repidement</p></li>
                                        <li><p>Suivez I'evolution de vos commandes</p></li>
                                        <li><p>Consultez vos commandes passees</p></li>
                                        <li><p>Modifier Les informations de votre compte</p></li>
                                        <li><p>changer votre mot de passe</p></li>
                                        <li><p>Enregistrement de plusieurs adresses</p></li>
                                    </ul>
                                    <br>
                                    <p> Si vous avez des questions concernant votre compte ou toute autre question, n'hesitez pas a nous contacter a
                                        I'adresse contact@bricolya.com ou par telephone au 05 22 450 077865872314</p>
                                </div>
                            </div>

                        </div>
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
<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/supplier_register.blade.php ENDPATH**/ ?>