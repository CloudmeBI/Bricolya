<?php $__env->startSection('content'); ?>

    <section class="gry-bg py-4">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="card">
                        <div class="align-items-center card-header d-flex justify-content-center text-center" >
                            <h3 class="d-inline-block heading-4 mb-0 mr-3 strong-600" ><?php echo e(__('Payment Details')); ?></h3>
                            <img loading="lazy"  class="img-fluid" src="http://i76.imgup.net/accepted_c22e0.png" height="30">
                        </div>
                        <div class="card-body">
                            <form role="form" action="<?php echo e(route('stripe.post')); ?>" method="post" class="require-validation"
                                data-cc-on-file="false"
                                data-stripe-publishable-key="<?php echo e(env('STRIPE_KEY')); ?>"
                                id="payment-form">
                                <?php echo csrf_field(); ?>

                                <div class='form-row'>
                                    <div class='col-12 form-group required'>
                                        <label class='control-label'><?php echo e(__('Name on Card')); ?></label>
                                        <input class='form-control' size='4' type='text'>
                                    </div>
                                </div>

                                <div class='form-row'>
                                    <div class='col-12 form-group required'>
                                        <label class='control-label'><?php echo e(__('Card Number')); ?></label>
                                        <input autocomplete='off' class='form-control card-number' size='20' type='text'>
                                    </div>
                                </div>

                                <div class='form-row'>
                                    <div class='col-12 col-md-4 form-group cvc required'>
                                        <label class='control-label'><?php echo e(__('CVC')); ?></label>
                                        <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311' size='4' type='text'>
                                    </div>
                                    <div class='col-12 col-md-4 form-group expiration required'>
                                        <label class='control-label'><?php echo e(__('Expiration Month')); ?></label>
                                        <input class='form-control card-expiry-month' placeholder='MM' size='2' type='text'>
                                    </div>
                                    <div class='col-12 col-md-4 form-group expiration required'>
                                        <label class='control-label'><?php echo e(__('Expiration Year')); ?></label>
                                        <input class='form-control card-expiry-year' placeholder='YYYY' size='4' type='text'>
                                    </div>
                                </div>

                                <div class='form-row'>
                                    <div class='col-12 error form-group d-none'>
                                        <div class='alert-danger alert'><?php echo e(__('Please correct the errors and try again.')); ?></div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-12">
                                        <?php if(Session::get('payment_type') == 'cart_payment'): ?>
                                            <button class="btn btn-base-1 btn-block" type="submit"><?php echo e(__('Pay Now')); ?> ($<?php echo e(number_format(convert_to_usd(\App\Order::findOrFail(Session::get('order_id'))->grand_total), 2)); ?>)</button>
                                        <?php elseif(Session::get('payment_type') == 'wallet_payment'): ?>
                                            <button class="btn btn-base-1 btn-block" type="submit"><?php echo e(__('Pay Now')); ?> ($<?php echo e(number_format(convert_to_usd(Session::get('payment_data')['amount']), 2)); ?>)</button>
                                        <?php elseif(Session::get('payment_type') == 'customer_package_payment'): ?>
                                            <button class="btn btn-base-1 btn-block" type="submit"><?php echo e(__('Pay Now')); ?> ($<?php echo e(number_format(convert_to_usd($customer_package->amount,2))); ?>)</button>
                                        <?php elseif(Session::get('payment_type') == 'seller_package_payment'): ?>
                                            <button class="btn btn-base-1 btn-block" type="submit"><?php echo e(__('Pay Now')); ?> ($<?php echo e(number_format(convert_to_usd($seller_package->amount,2))); ?>)</button>
                                        <?php endif; ?>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript" src="https://js.stripe.com/v2/"></script>

    <script type="text/javascript">
        $(function() {
            var $form         = $(".require-validation");
            $('form.require-validation').bind('submit', function(e) {
                var $form         = $(".require-validation"),
                inputSelector = ['input[type=email]', 'input[type=password]',
                                 'input[type=text]', 'input[type=file]',
                                 'textarea'].join(', '),
                $inputs       = $form.find('.required').find(inputSelector),
                $errorMessage = $form.find('div.error'),
                valid         = true;
                $errorMessage.addClass('d-none');

                $('.has-error').removeClass('has-error');
                $inputs.each(function(i, el) {
                  var $input = $(el);
                  if ($input.val() === '') {
                    $input.parent().addClass('has-error');
                    $errorMessage.removeClass('d-none');
                    e.preventDefault();
                  }
                });

                if (!$form.data('cc-on-file')) {
                  e.preventDefault();
                  Stripe.setPublishableKey($form.data('stripe-publishable-key'));
                  Stripe.createToken({
                    number: $('.card-number').val(),
                    cvc: $('.card-cvc').val(),
                    exp_month: $('.card-expiry-month').val(),
                    exp_year: $('.card-expiry-year').val()
                  }, stripeResponseHandler);
                }

            });

          function stripeResponseHandler(status, response) {
                if (response.error) {
                    $('.error')
                        .removeClass('d-none')
                        .find('.alert')
                        .text(response.error.message);
                } else {
                    // token contains id, last4, and card type
                    var token = response['id'];
                    // insert the token into the form so it gets submitted to the server
                    $form.find('input[type=text]').empty();
                    $form.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
                    $form.get(0).submit();
                }
            }
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/payment/stripe.blade.php ENDPATH**/ ?>