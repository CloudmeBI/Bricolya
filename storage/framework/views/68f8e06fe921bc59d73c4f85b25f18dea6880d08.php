<div class="modal-header">
    <h5 class="modal-title strong-600 heading-5"><?php echo e(__('Seller Message')); ?></h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="modal-body gry-bg px-3 pt-3">
    <div class="row">
        <div class="col-lg-2">
            <label><?php echo e(__('Message')); ?> <span class="required-star">*</span></label>
        </div>
        <div class="col-lg-10">
            <textarea name="meta_description" rows="8" class="form-control" disabled><?php echo e($seller_withdraw_request->message); ?></textarea>
        </div>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal"><?php echo e(__('Cancel')); ?></button>
</div>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/partials/withdraw_message_modal.blade.php ENDPATH**/ ?>