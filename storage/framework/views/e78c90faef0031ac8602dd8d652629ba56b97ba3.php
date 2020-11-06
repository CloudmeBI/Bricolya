<form class="" action="<?php echo e(route('wallet_recharge.make_payment')); ?>" method="post" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="modal-body gry-bg px-3 pt-3 mx-auto">
        <div class="align-items-center gutters-5 row">
            <?php $__currentLoopData = \App\ManualPaymentMethod::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $method): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="col-6">
                  <label class="payment_option mb-4" data-toggle="tooltip" data-title="<?php echo e($method->heading); ?>">
                      <input type="radio" id="" name="payment_option" value="<?php echo e($method->heading); ?>" onchange="toggleManualPaymentData(<?php echo e($method->id); ?>)" required>
                      <span>
                          <img loading="lazy"  src="<?php echo e(asset($method->photo)); ?>" class="img-fluid">
                      </span>
                  </label>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>

        <div id="manual_payment_data">

            <div class="card mb-3 p-3 d-none">
                <div id="manual_payment_description">

                </div>
            </div>

            <div class="card mb-3 p-3">
                <div class="row mt-3">
                    <div class="col-md-3">
                        <label><?php echo e(__('Amount')); ?> <span class="required-star">*</span></label>
                    </div>
                    <div class="col-md-9">
                        <input type="number" class="form-control mb-3" min="0" name="amount" placeholder="Amount" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <label><?php echo e(__('Name')); ?> <span class="required-star">*</span></label>
                    </div>
                    <div class="col-md-9">
                        <input type="text" class="form-control mb-3" name="name" placeholder="Name" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <label><?php echo e(__('Transaction ID')); ?> <span class="required-star">*</span></label>
                    </div>
                    <div class="col-md-9">
                        <input type="text" class="form-control mb-3" name="trx_id" placeholder="Transaction ID" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <label><?php echo e(__('Payment screenshot')); ?> <span class="required-star">*</span></label>
                    </div>
                    <div class="col-md-9">
                        <input type="file" name="photo" id="file-1" class="custom-input-file custom-input-file--4" data-multiple-caption="{count} files selected" accept="image/*" required />
                        <label for="file-1" class="mw-100 mb-3">
                            <span></span>
                            <strong>
                                <i class="fa fa-upload"></i>
                                <?php echo e(__('Choose image')); ?>

                            </strong>
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-base-1"><?php echo e(__('Confirm')); ?></button>
    </div>
</form>

<?php $__currentLoopData = \App\ManualPaymentMethod::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $method): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <div id="manual_payment_info_<?php echo e($method->id); ?>" class="d-none">
      <div><?php echo $method->description ?></div>
      <?php if($method->bank_info != null): ?>
          <ul>
              <?php $__currentLoopData = json_decode($method->bank_info); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $info): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <li>Bank Name - <?php echo e($info->bank_name); ?>, Account Name - <?php echo e($info->account_name); ?>, Account Number - <?php echo e($info->account_number); ?>, Routing Number - <?php echo e($info->routing_number); ?></li>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </ul>
      <?php endif; ?>
  </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

<script type="text/javascript">
    // $(document).ready(function(){
    //     toggleManualPaymentData(null);
    // });

    function toggleManualPaymentData(id){
        $('#manual_payment_description').parent().removeClass('d-none');
        $('#manual_payment_description').html($('#manual_payment_info_'+id).html());
    }
</script>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/partials/offline_recharge_modal.blade.php ENDPATH**/ ?>