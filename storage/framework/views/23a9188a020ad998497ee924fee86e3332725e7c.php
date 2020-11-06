<?php $__env->startSection('content'); ?>
    <section class="gry-bg py-4 profile">
        <div class="container">
            <div class="row cols-xs-space cols-sm-space cols-md-space">
                <div class="col-lg-3 d-none d-lg-block">
                    <?php if(Auth::user()->user_type == 'seller'): ?>
                        <?php echo $__env->make('frontend.inc.seller_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php elseif(Auth::user()->user_type == 'customer'): ?>
                        <?php echo $__env->make('frontend.inc.customer_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php endif; ?>
                </div>

                <div class="col-lg-9">
                    <div class="main-content">
                        <!-- Page title -->
                        <div class="card no-border p-3">
                            <h2 class="heading heading-6 text-capitalize strong-600 mb-0 d-inline-block">
                                <?php echo e($conversation->title); ?>

                            </h2>
                            <br>
                            <?php echo e(__('Between you and')); ?>

                            <?php if($conversation->sender_id == Auth::user()->id): ?>
                                <?php echo e($conversation->receiver->name); ?>

                            <?php else: ?>
                                <?php echo e($conversation->sender->name); ?>

                            <?php endif; ?>
                            <br>
                            <?php if($conversation->sender_id == Auth::user()->id && $conversation->receiver->shop != null): ?>
                                <a href="<?php echo e(route('shop.visit', $conversation->receiver->shop->slug)); ?>"><?php echo e($conversation->receiver->shop->name); ?></a>
                            <?php endif; ?>
                        </div>

                        <div class="card no-border mt-4 p-3">
                            <div class="py-4">
                                <div id="messages">
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
                                </div>
                                <form class="mt-4" action="<?php echo e(route('messages.store')); ?>" method="POST">
                                    <?php echo csrf_field(); ?>
                                    <input type="hidden" name="conversation_id" value="<?php echo e($conversation->id); ?>">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <textarea class="form-control" rows="4" name="message" placeholder="Type your reply" required></textarea>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <button type="submit" class="btn btn-base-1 mt-3"><?php echo e(__('Send')); ?></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
    function refresh_messages(){
        $.post('<?php echo e(route('conversations.refresh')); ?>', {_token:'<?php echo e(@csrf_token()); ?>', id:'<?php echo e(encrypt($conversation->id)); ?>'}, function(data){
            $('#messages').html(data);
        })
    }

    refresh_messages(); // This will run on page load
    setInterval(function(){
        refresh_messages() // this will run after every 5 seconds
    }, 4000);
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/conversations/show.blade.php ENDPATH**/ ?>