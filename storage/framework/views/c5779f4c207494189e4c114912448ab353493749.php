<?php $__env->startSection('content'); ?>
    <!-- SHOP GRID WRAPPER -->
    <section class="row contentRowPad">
        <div class="container">
            <div class="row singleProduct">
                <div class="col-sm-7">
                    <?php if($detailedProduct->photos): ?>
                        <div class="row m0 flexslider" id="productImageSlider">
                            <ul class="slides">
                                <?php $__currentLoopData = json_decode($detailedProduct->photos); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $photo): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><img src="https://bricolia.dev.cloudme.cloud/public/<?php echo e($photo); ?>" alt=""></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    <?php endif; ?>
                    <?php if($detailedProduct->photos): ?>
                        <div class="row m0 flexslider" id="productImageSliderNav">
                            <ul class="slides">
                                <?php $__currentLoopData = json_decode($detailedProduct->photos); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $photo): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li><img class="img-thumbnail" src="https://bricolia.dev.cloudme.cloud/public/<?php echo e($photo); ?>" alt=""></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                        <?php else: ?>
                            <div class="row m0" id="productImageSliderNav">

                                        <img class="img-thumbnail" src="https://boschbrandstore.com/wp-content/uploads/2019/01/no-image.png">

                            </div>

                    <?php endif; ?>
                </div>
                <div class="col-sm-5">
                    <div class="row m0">
                        <h4 class="heading"><?php echo e(__($detailedProduct->name)); ?></h4>
                        <h3 class="heading price"> <?php echo e(home_discounted_price($detailedProduct->id)); ?></h3>

                        <div class="row descList m0">
                        <?php
                                    $qty = 0;
                                    if($detailedProduct->variant_product){
                                        foreach ($detailedProduct->stocks as $key => $stock) {
                                            $qty += $stock->qty;
                                        }
                                    }
                                    else{
                                        $qty = $detailedProduct->current_stock;
                                    }
                                ?>
                            <dl class="dl-horizontal">

                                <dt>Disponibilité :</dt>
                                <dd><?php echo e($qty); ?> articles en stock</dd>

                            </dl>

                            <dl class="dl-horizontal">

                                <dt>Référence :</dt>
                                <dd><?php echo e($detailedProduct->ref ? $detailedProduct->ref : ''); ?></dd>

                            </dl>

                            <dl class="dl-horizontal">

                                <dt>Prix unit :</dt>
                                <dd><?php echo e($detailedProduct->unit_price); ?> MAD / HT</dd>

                            </dl>

                            <dl class="dl-horizontal">

                                <dt>Remise :</dt>
                                <dd><?php echo e($detailedProduct->discount); ?> <?php echo e($detailedProduct->discount_type == 'amount' ? 'DH' : '%'); ?></dd>

                            </dl>

                            <dl class="dl-horizontal">

                                <dt>Impôt :</dt>
                                <dd><?php echo e($detailedProduct->tax); ?> <?php echo e($detailedProduct->tax_type == 'amount' ? 'DH' : '%'); ?></dd>

                            </dl>

                            <dl class="dl-horizontal">

                                <dt>Total :</dt>
                                <dd><?php echo e(home_discounted_price($detailedProduct->id)); ?> / TTC</dd>

                            </dl>

                      

                        </div>
                        <div class="row m0 shortDesc">
                            <p class="m0"><?php echo $detailedProduct->description; ?></p>
                        </div>

                        <br>

                        <div class="row m0 qtyAtc">
                            <div class="fleft quantity">
                                <div class="fleft">Qté <span>=</span></div>
                                <div class="input-group spinner">
                                    <input type="text" name="quantity" class="form-control" value="1">
                                    <div class="input-group-btn-vertical">
                                        <button class="btn btn-default"><i class="fa fa-angle-up"></i></button>
                                        <button class="btn btn-default"><i class="fa fa-angle-down"></i></button>
                                    </div>
                                </div>
                            </div>
                            <form id="option-choice-form">
                                <?php echo csrf_field(); ?>
                                <input type="hidden" name="id" value="<?php echo e($detailedProduct->id); ?>">
                                <button class="fleft btn btn-default" onclick="event.preventDefault();addToCart()"><img src="https://bricolia.dev.cloudme.cloud/public/frontend/images/icons/cart3.png" alt=""> achat</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row m0 tabRow">
                <ul class="nav nav-tabs" role="tablist" id="shortcodeTab">
                    <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">
                        <i class="fa fa-align-left"></i> description
                    </a></li>
                </ul>
                <div class="tab-content shortcodeTabContent">
                    <div role="tabpanel" class="tab-pane row m0 active" id="description">

                        <div class="fleft desc">
                            <h5 class="heading">Product Details</h5>
                            <?php echo $detailedProduct->description; ?>
                        </div>
                    </div>
                </div>
            </div> <!--Tabs Row-->

        </div>
    </section>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        $(document).ready(function() {
    		$('#share').jsSocials({
    			showLabel: false,
                showCount: false,
                shares: ["email", "twitter", "facebook", "linkedin", "pinterest", "stumbleupon", "whatsapp"]
    		});
            getVariantPrice();
    	});

        function CopyToClipboard(containerid) {
            if (document.selection) {
                var range = document.body.createTextRange();
                range.moveToElementText(document.getElementById(containerid));
                range.select().createTextRange();
                document.execCommand("Copy");

            } else if (window.getSelection) {
                var range = document.createRange();
                document.getElementById(containerid).style.display = "block";
                range.selectNode(document.getElementById(containerid));
                window.getSelection().addRange(range);
                document.execCommand("Copy");
                document.getElementById(containerid).style.display = "none";

            }
            showFrontendAlert('success', 'Copied');
        }

        function show_chat_modal(){
            <?php if(Auth::check()): ?>
                $('#chat_modal').modal('show');
            <?php else: ?>
                $('#login_modal').modal('show');
            <?php endif; ?>
        }

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/368495.cloudwaysapps.com/urvfepvzma/public_html/resources/views/frontend/product_details.blade.php ENDPATH**/ ?>