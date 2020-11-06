
<div class="modal-header">
    <h5 class="modal-title strong-600 heading-5"><?php echo e(__('Add New Currency')); ?></h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<form class="form-horizontal" action="<?php echo e(route('currency.store')); ?>" method="POST" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="panel-body">
        <div class="form-group">
            <label class="col-sm-2 control-label" for="name"><?php echo e(__('Name')); ?></label>
            <div class="col-sm-10">
                <input type="text" placeholder="<?php echo e(__('Name')); ?>" id="name" name="name" class="form-control" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="symbol"><?php echo e(__('Symbol')); ?></label>
            <div class="col-sm-10">
                <input type="text" placeholder="<?php echo e(__('Symbol')); ?>" id="symbol" name="symbol" class="form-control" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="code"><?php echo e(__('Code')); ?></label>
            <div class="col-sm-10">
                <input type="text" placeholder="<?php echo e(__('Code')); ?>" id="code" name="code" class="form-control" required>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label" for="exchange_rate"><?php echo e(__('Exchange Rate')); ?></label>
            <div class="col-sm-10">
                <input type="number" step="0.01" min="0" placeholder="<?php echo e(__('Exchange Rate')); ?>" id="exchange_rate" name="exchange_rate" class="form-control" required>
            </div>
        </div>
    </div>
    <div class="panel-footer text-right">
        <button class="btn btn-purple" type="submit"><?php echo e(__('Save')); ?></button>
    </div>
</form>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/partials/currency_create.blade.php ENDPATH**/ ?>