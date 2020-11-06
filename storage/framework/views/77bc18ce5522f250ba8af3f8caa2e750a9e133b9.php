<?php $__currentLoopData = $conversation->messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $message): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php if($message->user_id == Auth::user()->id): ?>
        <div class="block block-comment mb-3">
            <div class="d-flex flex-row-reverse">
                <div class="pl-3">
                    <div class="block-image">
                        <?php if($message->user->avatar_original != null): ?>
                            <img src="<?php echo e(asset($message->user->avatar_original)); ?>" class="rounded-circle">
                        <?php else: ?>
                            <img src="<?php echo e(asset('frontend/images/user.png')); ?>" class="rounded-circle">
                        <?php endif; ?>
                    </div>
                </div>
                <div class="flex-grow-1 ml-5 pl-5">
                    <div class="p-3 bg-gray rounded">
                        <?php echo e($message->message); ?>

                    </div>
                    <span class="comment-date alpha-7 small mt-1 d-block text-right">
                        <?php echo e(date('h:i:m d-m-Y', strtotime($message->created_at))); ?>

                    </span>
                </div>
            </div>
        </div>
    <?php else: ?>
        <div class="block block-comment mb-3">
            <div class="d-flex">
                <div class="pr-3">
                    <div class="block-image">
                        <?php if($message->user->avatar_original != null): ?>
                            <img src="<?php echo e(asset($message->user->avatar_original)); ?>" class="rounded-circle">
                        <?php else: ?>
                            <img src="<?php echo e(asset('frontend/images/user.png')); ?>" class="rounded-circle">
                        <?php endif; ?>
                    </div>
                </div>
                <div class="flex-grow-1 mr-5 pr-5">
                    <div class="p-3 bg-gray rounded">
                        <?php echo e($message->message); ?>

                    </div>
                    <span class="comment-date alpha-7 small mt-1 d-block">
                        <?php echo e(date('h:i:m d-m-Y', strtotime($message->created_at))); ?>

                    </span>
                </div>
            </div>
        </div>
    <?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/partials/messages.blade.php ENDPATH**/ ?>