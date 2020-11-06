<?php $__env->startSection('content'); ?>

    <?php

    $orgClientId  =   "00002088";
    $orgAmount = "10.25";
    $orgOkUrl =  "https://bricolya.com/cmi/okFail";
    $orgFailUrl = "https://bricolya.com/Ok-Fail.php";
    $shopurl = "https://bricolya.com/";
    $orgTransactionType = "PreAuth";
    $orgRnd =  microtime();
    $orgCallbackUrl = "https://bricolya.com/cmi/callback";
    $orgCurrency = "504";

    ?>




    <meta http-equiv="Pragma" content="no-cache">


    <meta http-equiv="Expires" content="now">

    <form method="post" action="<?php echo e(route('cmi.sendData')); ?>">
            <table>
                <tr>

                    <td align="center" colspan="2"><input type="submit"
                                                          value="Complete Payment" /></td>
                </tr>

            </table>
        <?php echo csrf_field(); ?>
        <input type="hidden" name="clientid" value="<?php echo $orgClientId ?>">
        <input type="hidden" name="amount" value="<?php echo $orgAmount ?>">
        <input type="hidden" name="okUrl" value="<?php echo $orgOkUrl ?>">
        <input type="hidden" name="failUrl" value="<?php echo $orgFailUrl ?>">
        <input type="hidden" name="TranType" value="<?php echo $orgTransactionType ?>">
        <input type="hidden" name="callbackUrl" value="<?php echo $orgCallbackUrl ?>">
        <input type="hidden" name="shopurl" value="<?php echo $shopurl ?>">
        <input type="hidden" name="currency" value="<?php echo $orgCurrency ?>">
        <input type="hidden" name="rnd" value="<?php echo $orgRnd ?>">
        <input type="hidden" name="storetype" value="3D_PAY_HOSTING">
        <input type="hidden" name="hashAlgorithm" value="ver3">
        <input type="hidden" name="lang" value="fr">
        <input type="hidden" name="refreshtime" value="5">
        <input type="hidden" name="BillToName" value="name">
        <input type="hidden" name="BillToCompany" value="billToCompany">
        <input type="hidden" name="BillToStreet1" value="100 rue adress">
        <input type="hidden" name="BillToCity" value="casablanca">
        <input type="hidden" name="BillToStateProv" value="Maarif Casablanca">
        <input type="hidden" name="BillToPostalCode" value="20230">
        <input type="hidden" name="BillToCountry" value="504">
        <input type="hidden" name="email" value="email@domaine.com">
        <input type="hidden" name="tel" value="0021201020304">
        <input type="hidden" name="encoding" value="UTF-8">
        <input type="hidden" name="oid" value="123ABC"> <!-- La valeur du paramètre oid doit être unique par transaction -->

        </form>




<div class="col-md-8">
    <div class="card">
        <div class="card-header"><?php echo e(__('dashboard')); ?></div>

        <div class="card-body">
            <?php if(session('status')): ?>
                <div class="alert alert-success" role="alert">
                    <?php echo e(session('status')); ?>

                </div>
            <?php endif; ?>

            You are logged in!
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/home.blade.php ENDPATH**/ ?>