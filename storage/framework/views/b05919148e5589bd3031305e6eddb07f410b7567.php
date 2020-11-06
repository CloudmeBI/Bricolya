<div class="panel">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo e(__('Home Categories')); ?></h3>
    </div>

    <!--Horizontal Form-->
    <!--===================================================-->
    <form class="form-horizontal" action="<?php echo e(route('home_categories.update', $homeCategory->id)); ?>" method="POST" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <input type="hidden" name="_method" value="PATCH">
        <div class="panel-body">
            <div class="form-group" id="category">
                <label class="col-lg-2 control-label"><?php echo e(__('Category')); ?></label>
                <div class="col-lg-7">
                    <select class="form-control demo-select2-placeholder" name="category_id" id="category_id" required>
                        <?php $__currentLoopData = \App\Category::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($category->id); ?>" <?php if($homeCategory->category_id == $category->id) echo "selected"; ?>><?php echo e(__($category->name)); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </select>
                </div>
            </div>
        </div>
        <div class="panel-footer text-right">
            <button class="btn btn-purple" type="submit"><?php echo e(__('Save')); ?></button>
        </div>
    </form>
    <!--===================================================-->
    <!--End Horizontal Form-->

</div>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/home_categories/edit.blade.php ENDPATH**/ ?>