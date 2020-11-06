<div class="card-header bg-white py-3">
    <h5 class="heading-6 mb-0"><?php echo e(__('Select Nearest Pick-up Point')); ?></h5>
</div>
<?php
    $admin_products = array();
    $seller_products = array();
    foreach (Session::get('cart') as $key => $cartItem){
        if(\App\Product::find($cartItem['id'])->added_by == 'admin'){
            array_push($admin_products, $cartItem['id']);
        }
        else{
            $product_ids = array();
            if(array_key_exists(\App\Product::find($cartItem['id'])->user_id, $seller_products)){
                $product_ids = $seller_products[\App\Product::find($cartItem['id'])->user_id];
            }
            array_push($product_ids, $cartItem['id']);
            $seller_products[\App\Product::find($cartItem['id'])->user_id] = $product_ids;
        }
    }
    // dd($seller_products);
?>
<?php if(!empty($admin_products)): ?>
    <?php $__currentLoopData = $pick_up_points; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $pick_up_point): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <label class="mega-radio w-100">
        <input type="radio" name="pickup_point_id" value="<?php echo e($pick_up_point->id); ?>" checked required>
        <span class="d-block">
            <br><strong><?php echo e(__('Address')); ?>: <?php echo e($pick_up_point->name); ?></strong>
            <br><strong><?php echo e(__('Address')); ?>: <?php echo e($pick_up_point->address); ?></strong>
            <br><strong><?php echo e(__('Phone')); ?>: <?php echo e($pick_up_point->phone); ?></strong>
        </span>
    </label>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php if(!empty($seller_products)): ?>
    <?php $__currentLoopData = $seller_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $seller_product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php $__currentLoopData = $seller_product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php echo e($value); ?><br>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/partials/pick_up_points.blade.php ENDPATH**/ ?>