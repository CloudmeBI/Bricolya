<?php $__env->startSection('content'); ?>
<div class="row">
    <div class="col-sm-8 col-lg-offset-2">
        <div class="panel">
            <div class="panel-heading bord-btm">
                <h3 class="panel-title"><?php echo e(__('Edit Page')); ?></h3>
            </div>

            <!--Horizontal Form-->
            <!--===================================================-->
            <form class="form-horizontal" action="<?php echo e(route('pages.update', $page->id)); ?>" method="POST" enctype="multipart/form-data">
            	<?php echo csrf_field(); ?>
                <input type="hidden" name="_method" value="PATCH">
                <div class="panel-body">
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="title"><?php echo e(__('Title')); ?></label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="<?php echo e(__('Title')); ?>" id="title" name="title" value="<?php echo e($page->title); ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="slug"><?php echo e(__('Slug')); ?></label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="<?php echo e(__('Slug')); ?>" id="slug" name="slug" value="<?php echo e($page->slug); ?>" class="form-control" required>
                            <small><code>http://domain.com/your-slug</code> Only a-z, numbers, hypen allowed</small>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="content"><?php echo e(__('Content')); ?></label>
                        <div class="col-sm-9">
                            <textarea class="editor" name="content" required>
                                <?php
                                    echo $page->content
                                ?>
                            </textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="slug"><?php echo e(__('Meta Title')); ?></label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="<?php echo e(__('Meta Title')); ?>" id="meta_title" name="meta_title" value="<?php echo e($page->meta_title); ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="meta_description"><?php echo e(__('Meta Description')); ?></label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="<?php echo e(__('Meta Description')); ?>" id="meta_description" name="meta_description" value="<?php echo e($page->meta_description); ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="keywords"><?php echo e(__('Keywords')); ?></label>
                        <div class="col-sm-9">
                            <input type="text" placeholder="<?php echo e(__('Keywords')); ?>" id="keywords" name="keywords" value="<?php echo e($page->keywords); ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label" for="meta_image"><?php echo e(__('Meta Image')); ?> <small>(200x300)</small></label>
                        <div class="col-sm-9">
                            <input type="file" id="meta_image" name="meta_image" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="panel-footer text-right">
                    <button class="btn btn-purple" type="submit"><?php echo e(__('Update')); ?></button>
                </div>
            </form>
            <!--===================================================-->
            <!--End Horizontal Form-->

        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/pages/edit.blade.php ENDPATH**/ ?>