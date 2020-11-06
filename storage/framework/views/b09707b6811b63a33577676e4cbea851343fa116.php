<?php if(count($product_ids) > 0): ?>
    <label class="col-sm-3 control-label"><?php echo e(__('Discounts')); ?></label>
    <div class="col-sm-9">
        <table class="table table-bordered">
    		<thead>
    			<tr>
    				<td class="text-center" width="40%">
    					<label for="" class="control-label"><?php echo e(__('Product')); ?></label>
    				</td>
                    <td class="text-center">
    					<label for="" class="control-label"><?php echo e(__('Base Price')); ?></label>
    				</td>
    				<td class="text-center">
    					<label for="" class="control-label"><?php echo e(__('Discount')); ?></label>
    				</td>
                    <td>
                        <label for="" class="control-label"><?php echo e(__('Discount Type')); ?></label>
                    </td>
    			</tr>
    		</thead>
    		<tbody>
                <?php $__currentLoopData = $product_ids; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $id): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                	<?php
                		$product = \App\Product::findOrFail($id);
                	?>
                		<tr>
                			<td>
                                <div class="col-sm-3">
                                <img loading="lazy"  class="img-md" src="<?php echo e(asset($product->thumbnail_img)); ?>" alt="Image">
                                </div>
                                <div class="col-sm-9">
                				<label for="" class="control-label"><?php echo e(__($product->name)); ?></label>
                                </div>
                			</td>
                            <td>
                				<label for="" class="control-label"><?php echo e($product->unit_price); ?></label>
                			</td>
                			<td>
                				<input type="number" name="discount_<?php echo e($id); ?>" value="<?php echo e($product->discount); ?>" min="0" step="1" class="form-control" required>
                			</td>
                            <td>
                                <select class="demo-select2" name="discount_type_<?php echo e($id); ?>">
                                    <option value="amount">$</option>
                                    <option value="percent">%</option>
                                </select>
                            </td>
                		</tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
    </div>
<?php endif; ?>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/partials/flash_deal_discount.blade.php ENDPATH**/ ?>