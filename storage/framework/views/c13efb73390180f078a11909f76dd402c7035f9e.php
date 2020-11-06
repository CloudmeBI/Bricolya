<?php $__env->startSection('content'); ?>

    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title"><?php echo e(__('Countries')); ?></h3>
        </div>
        <div class="panel-body">
            <table class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th width="10%">#</th>
                        <th><?php echo e(__('Name')); ?></th>
                        <th><?php echo e(__('Code')); ?></th>
                        <th><?php echo e(__('Show/Hide')); ?></th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e(($key+1) + ($countries->currentPage() - 1)*$countries->perPage()); ?></td>
                            <td><?php echo e($country->name); ?></td>
                            <td><?php echo e($country->code); ?></td>
                            <td><label class="switch">
                                    <input onchange="update_status(this)" value="<?php echo e($country->id); ?>" type="checkbox" <?php if($country->status == 1) echo "checked";?> >
                                    <span class="slider round"></span></label></td>
                        </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
            <div class="clearfix">
                <div class="pull-right">
                    <?php echo e($countries->links()); ?>

                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">

        function update_status(el){
            if(el.checked){
                var status = 1;
            }
            else{
                var status = 0;
            }
            $.post('<?php echo e(route('countries.status')); ?>', {_token:'<?php echo e(csrf_token()); ?>', id:el.value, status:status}, function(data){
                if(data == 1){
                    showAlert('success', 'Country status updated successfully');
                }
                else{
                    showAlert('danger', 'Something went wrong');
                }
            });
        }

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/countries/index.blade.php ENDPATH**/ ?>