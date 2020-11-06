<?php
    $coupon_det = json_decode($coupon->details);
?>

<div class="panel-heading">
   <h3 class="panel-title"><?php echo e(__('Add Your Cart Base Coupon')); ?></h3>
</div>
<div class="form-group">
   <label class="col-lg-3 control-label" for="coupon_code"><?php echo e(__('Coupon code')); ?></label>
   <div class="col-lg-9">
       <input type="text" value="<?php echo e($coupon->code); ?>" id="coupon_code" name="coupon_code" class="form-control" required>
   </div>
</div>


<div class="form-group">
  <label class="col-lg-3 control-label"><?php echo e(__('Minimum Shopping')); ?></label>
  <div class="col-lg-9">
     <input type="number" min="0" step="0.01" name="min_buy" class="form-control" value="<?php echo e($coupon_det->min_buy); ?>" required>
  </div>
</div>
<div class="form-group">
  <label class="col-lg-3 control-label"><?php echo e(__('Discount')); ?></label>
  <div class="col-lg-8">
     <input type="number" min="0" step="0.01" placeholder="<?php echo e(__('Discount')); ?>" name="discount" class="form-control" value="<?php echo e($coupon->discount); ?>" required>
  </div>
  <div class="col-lg-1">
     <select class="demo-select2" name="discount_type">
        <option value="amount" <?php if($coupon->discount_type == 'amount'): ?> selected  <?php endif; ?> >$</option>
        <option value="percent" <?php if($coupon->discount_type == 'percent'): ?> selected  <?php endif; ?>>%</option>
     </select>
  </div>
</div>
<div class="form-group">
  <label class="col-lg-3 control-label"><?php echo e(__('Maximum Discount Amount')); ?></label>
  <div class="col-lg-9">
     <input type="number" min="0" step="0.01" placeholder="<?php echo e(__('Maximum Discount Amount')); ?>" name="max_discount" class="form-control" value="<?php echo e($coupon_det->max_discount); ?>" required>
  </div>
</div>
<div class="form-group">
   <label class="col-lg-3 control-label" for="start_date"><?php echo e(__('Date')); ?></label>
   <div class="col-lg-9">
       <div id="demo-dp-range">
           <div class="input-daterange input-group" id="datepicker">
               <input type="text" class="form-control" name="start_date" value="<?php echo e(date('m/d/Y', $coupon->start_date)); ?>">
               <span class="input-group-addon"><?php echo e(__('to')); ?></span>
               <input type="text" class="form-control" name="end_date" value="<?php echo e(date('m/d/Y', $coupon->end_date)); ?>">
           </div>
       </div>
   </div>
</div>

<script type="text/javascript">

   $(document).ready(function(){
       $('.demo-select2').select2();
   });

</script>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/partials/cart_base_coupon_edit.blade.php ENDPATH**/ ?>