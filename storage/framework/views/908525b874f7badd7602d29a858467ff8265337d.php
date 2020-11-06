<?php $__env->startSection('content'); ?>

<div class="col-lg-12">
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title"><?php echo e(__('Product Stock Information')); ?></h3>
        </div>

        <!--Horizontal Form-->
        <!--===================================================-->
        <form class="form-horizontal" action="<?php echo e(route('stocks.store')); ?>" method="POST" enctype="multipart/form-data">
        	<?php echo csrf_field(); ?>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-lg-3 control-label" for="name"><?php echo e(__('Category')); ?></label>
                    <div class="col-lg-9">
                        <select name="category_id" id="category_id" class="form-control demo-select2-placeholder" required>
                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($category->id); ?>"><?php echo e(__($category->name)); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" for="name"><?php echo e(__('Subcategory')); ?></label>
                    <div class="col-lg-9">
                        <select name="subcategory_id" id="subcategory_id" class="form-control demo-select2-placeholder" required>

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" for="name"><?php echo e(__('Sub Subcategory')); ?></label>
                    <div class="col-lg-9">
                        <select name="subsubcategory_id" id="subsubcategory_id" class="form-control demo-select2-placeholder" required>

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label" for="name"><?php echo e(__('Product')); ?></label>
                    <div class="col-lg-9">
                        <select name="product_id" id="product_id" class="form-control demo-select2-placeholder" required>

                        </select>
                    </div>
                </div>
            </div>

            <div class="panel-heading">
                <h3 class="panel-title"><?php echo e(__('SKU')); ?></h3>
            </div>

            <div class="panel-body">

                <div class="stock_info" id="stock_info">

                </div>

            </div>

            <div class="panel-footer text-right">
                <button class="btn btn-purple" type="submit"><?php echo e(__('Save')); ?></button>
            </div>
        </form>
        <!--===================================================-->
        <!--End Horizontal Form-->

    </div>
</div>

<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>

<script type="text/javascript">

    function get_subcategories_by_category(){
        var category_id = $('#category_id').val();
        $.post('<?php echo e(route('subcategories.get_subcategories_by_category')); ?>',{_token:'<?php echo e(csrf_token()); ?>', category_id:category_id}, function(data){
            $('#subcategory_id').html(null);
            for (var i = 0; i < data.length; i++) {
                $('#subcategory_id').append($('<option>', {
                    value: data[i].id,
                    text: data[i].name
                }));
                $('.demo-select2').select2();
            }
            get_subsubcategories_by_subcategory();
        });
    }

    function get_subsubcategories_by_subcategory(){
        var subcategory_id = $('#subcategory_id').val();
        $.post('<?php echo e(route('subsubcategories.get_subsubcategories_by_subcategory')); ?>',{_token:'<?php echo e(csrf_token()); ?>', subcategory_id:subcategory_id}, function(data){
            $('#subsubcategory_id').html(null);
            for (var i = 0; i < data.length; i++) {
                $('#subsubcategory_id').append($('<option>', {
                    value: data[i].id,
                    text: data[i].name
                }));
                $('.demo-select2').select2();
            }
            get_products_by_subsubcategory();
        });
    }

    function get_products_by_subsubcategory(){
        var subsubcategory_id = $('#subsubcategory_id').val();
        $.post('<?php echo e(route('products.get_products_by_subsubcategory')); ?>',{_token:'<?php echo e(csrf_token()); ?>', subsubcategory_id:subsubcategory_id}, function(data){
            $('#product_id').html(null);
            for (var i = 0; i < data.length; i++) {
                $('#product_id').append($('<option>', {
                    value: data[i].id,
                    text: data[i].name
                }));
                $('.demo-select2').select2();
            }
            get_sku_combinations();
        });
    }

    function get_sku_combinations(){
        var subsubcategory_id = $('#subsubcategory_id').val();
        var product_id = $('#product_id').val();
        $.post('<?php echo e(route('stocks.sku_combinations')); ?>',{_token:'<?php echo e(csrf_token()); ?>', subsubcategory_id:subsubcategory_id, product_id:product_id}, function(data){
            $('#stock_info').html(data);

                $('.color').spectrum({
                    preferredFormat: "hex",
                    showPalette: false
                });
        });
    }

    $(document).ready(function(){
        get_subcategories_by_category();
    });

    $('#category_id').on('change', function() {
        get_subcategories_by_category();
    });

    $('#subcategory_id').on('change', function() {
        get_subsubcategories_by_subcategory();
    });

    $('#subsubcategory_id').on('change', function() {
        get_products_by_subsubcategory();
    });

</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/stocks/create.blade.php ENDPATH**/ ?>