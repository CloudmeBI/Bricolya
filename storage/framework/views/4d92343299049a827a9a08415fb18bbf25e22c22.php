
<?php $__currentLoopData = json_decode($subsubcategory->options); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $option): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="form-group clearfix row">
        <div class="col-sm-2">
            <label class="control-label"><?php echo e($option->title); ?></label>
        </div>
        <div class="col-sm-10">
            <div class="customer_choice_options_types_wrap">
                <div class="customer_choice_options_types_wrap_child">
                    <?php if($option->type == 'radio' || $option->type == 'select'): ?>
                        <?php $__currentLoopData = $option->options; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $options): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="form-group clearfix row">
                                <div class="col-sm-4">
                                    <input class="form-control" type="text" value="<?php echo e($options); ?>" disabled>
                                </div>
                                <div class="col-sm-4">
                                    <input class="form-control" type="number" min="0" step="0.01" name="<?php echo e($option->name); ?>_<?php echo e($options); ?>_price" required>
                                </div>
                                <div class="col-sm-4">
                                    <select class="form-control selectpicker" name="<?php echo e($option->name); ?>_<?php echo e($options); ?>_variation">
                                        <option value="increase"><?php echo e(__('Increase')); ?></option>
                                        <option value="decrease"><?php echo e(__('Decrease')); ?></option>
                                    </select>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/partials/price_variations.blade.php ENDPATH**/ ?>