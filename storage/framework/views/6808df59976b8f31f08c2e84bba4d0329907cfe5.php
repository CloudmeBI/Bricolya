<?php $__env->startPush('seometa'); ?>
<title>BRICOLYA -  Matériel de bricolage et outillage en ligne</title>
<meta name="description" content="Vous êtes à la recherche d'un emploi passionnant ? Chez Bricolya, nous sommes toujours à la recherche de nouveaux talents, déposez votre candidature en ligne." />
<meta name="keywords" content="">
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
  <?php if(session()->has('success')): ?>
    <div class="alert alert-success"><?php echo e(session()->get('success')); ?></div>
  <?php endif; ?>
  <?php if(session()->has('error')): ?>
    <div class="alert alert-danger"><?php echo e(session()->get('error')); ?></div>
  <?php endif; ?>
<section id="recrute_head" class="row">
        <div class="container mt50">
          <div class="row">
              <div class="col">
                <h3 class="heading"> Recrutement </h3>
                <p> <p>Vous êtes à la recherche d'un emploi passionnant ? Chez Bricolya, nous sommes toujours à la recherche de nouveaux talents.
				Vous êtes motivé ? Vous souhaitez travailler en équipe ? Vous êtes un bon vendeur ?
				Déposez votre candidature, peut-être que vous ferez bientôt partie de la famille Bricolya !
                </p>
              </div>
          </div>
        </div>
    </section>

    <section class="row  contentRowPad">
        <div class="container innerHover">
                <div class="row mb30">
                    <div class="img_center col-xs-12 col-md-6">
                      <img src="<?php echo e(asset('frontend/images/Nos-offres.jpg')); ?>" class="image" alt="Avatar" style="width:100%">
                      <div class="middle">
                        <h3 class="heading"> Nos offres d'emploi </h3>
                      </div>
                      <div class="downbut">
                        <button type="button" class="btn btn-yellow btn-rec" data-toggle="modal" data-target="#myModal">En savoir plus</button>
                      </div>
                    </div>

                      <div class="img_center col-xs-12 col-md-6">
                        <img src="<?php echo e(asset('frontend/images/Candidature-spontanee.jpg')); ?>" class="image" alt="Avatar" style="width:100%">
                        <div class="middle">
                          <h3 class="heading">Candidature spontanée</h3>
                        </div>
                        <div class="downbut">
                          <button type="button" class="btn btn-yellow btn-rec" data-toggle="modal" data-target="#myModal">Déposez votre candidature
                        </button>
                        </div>
                      </div>
                      </div>
                    </div>
                </div>
        </div>
    </section>

    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h3 class="heading my15">
              Veuillez remplir les champs suivants:
            </h3>
          </div>
          <div class="modal-body ">
            <form action="<?php echo e(url('/send_recruitment')); ?>" method="POST" enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
              <div class="row">
                <div class="form-group col-xs-12 col-md-6">
                  <select class="form-control" id="Civilité" name="civil">
                      <option readonly value=""> Civilité:</option>
                      <option value="Ms">Mlle</option>
                      <option value="Mr">Mr</option>
                      <option value="Mrs">Mme</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <input type="text" class="form-control" placeholder="Diplôme" name ="diploma" required>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-md-6">
                  <input type="text" class="form-control" placeholder="Prénom" name="first_name" required>
                </div>
                <div class="form-group col-xs-12 col-md-6">
                  <input type="text" class="form-control" placeholder="Spécialité" name="specialization" required>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-xs-12 col-md-6">
                  <input type="text" class="form-control" placeholder="Nom" name="name" required>
                </div>
                <div class="form-group col-xs-12 col-md-6">
                  <input type="text" class="form-control" placeholder="Expérience" name="expirence" required>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-xs-12 col-md-6">
                  <input type="text" class="form-control" placeholder="Téléphone" name="telephone" required>
                </div>
                <div class="form-group col-xs-12 col-md-6">
                  <input type="text" class="form-control" placeholder="Secteur" name="sector" required>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-xs-12 col-md-6">
                  <input type="email" class="form-control"placeholder="E-mail" name="email" required>
                </div>
                <div class="form-group col-xs-12 col-md-6">
                  <input type="text" class="form-control" placeholder="Fonction occupée" name="current_position">
                </div>
              </div>
              <div class="row">
                <div class="form-group col-xs-12 col-md-6">
                  <label class="inputEmail4 col-sm-5">
                    Votre CV:
                  </label>
                  <div class="col-sm-7">
                    <input style="color: black;" name="document" type="file" value="Choisir un fichier">
                    <p style="font-size: 13px;">Formats autorises: pdf, doc</p>
                    <p>Aucun fichier choisi</p>
                  </div>
                </div>
                <div class="form-group col-md-6">
                  <button type="submit" class="btn btn-dark btn-block">Envoyer ma candidature</button>
                </div>
              </div>
            </form>
          </div>

        </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/368495.cloudwaysapps.com/urvfepvzma/public_html/resources/views/frontend/recruitment/index.blade.php ENDPATH**/ ?>