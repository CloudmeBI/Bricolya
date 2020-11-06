<?php if(isset($subsubcategory_id)): ?>
    <?php
        $meta_title = \App\SubSubCategory::find($subsubcategory_id)->meta_title;
        $meta_description = \App\SubSubCategory::find($subsubcategory_id)->meta_description;
    ?>
<?php elseif(isset($subcategory_id)): ?>
    <?php
        $meta_title = \App\SubCategory::find($subcategory_id)->meta_title;
        $meta_description = \App\SubCategory::find($subcategory_id)->meta_description;
    ?>
<?php elseif(isset($category_id)): ?>
    <?php
        $meta_title = \App\Category::find($category_id)->meta_title;
        $meta_description = \App\Category::find($category_id)->meta_description;
    ?>
<?php elseif(isset($brand_id)): ?>
    <?php
        $meta_title = \App\Brand::find($brand_id)->meta_title;
        $meta_description = \App\Brand::find($brand_id)->meta_description;
    ?>
<?php else: ?>
    <?php
        $meta_title = env('APP_NAME');
        $meta_description = \App\SeoSetting::first()->description;
    ?>
<?php endif; ?>

<?php $__env->startSection('meta_title'); ?><?php echo e($meta_title); ?><?php $__env->stopSection(); ?>
<?php $__env->startSection('meta_description'); ?><?php echo e($meta_description); ?><?php $__env->stopSection(); ?>

<?php $__env->startSection('meta'); ?>
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="<?php echo e($meta_title); ?>">
    <meta itemprop="description" content="<?php echo e($meta_description); ?>">

    <!-- Twitter Card data -->
    <meta name="twitter:title" content="<?php echo e($meta_title); ?>">
    <meta name="twitter:description" content="<?php echo e($meta_description); ?>">

    <!-- Open Graph data -->
    <meta property="og:title" content="<?php echo e($meta_title); ?>" />
    <meta property="og:description" content="<?php echo e($meta_description); ?>" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>

    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col">
                    <ul class="breadcrumb">
                        <li><a href="<?php echo e(route('home')); ?>"><?php echo e(__('Home')); ?></a></li>
                        <li><a href="<?php echo e(route('customer.products')); ?>"><?php echo e(__('All Categories')); ?></a></li>
                        <?php if(isset($category_id)): ?>
                            <li class="active"><a href="<?php echo e(route('customer_products.category', \App\Category::find($category_id)->slug)); ?>"><?php echo e(\App\Category::find($category_id)->name); ?></a></li>
                        <?php endif; ?>
                        <?php if(isset($subcategory_id)): ?>
                            <li ><a href="<?php echo e(route('products.category', \App\SubCategory::find($subcategory_id)->category->slug)); ?>"><?php echo e(\App\SubCategory::find($subcategory_id)->category->name); ?></a></li>
                            <li class="active"><a href="<?php echo e(route('customer_products.subcategory', \App\SubCategory::find($subcategory_id)->slug)); ?>"><?php echo e(\App\SubCategory::find($subcategory_id)->name); ?></a></li>
                        <?php endif; ?>
                        <?php if(isset($subsubcategory_id)): ?>
                            <li ><a href="<?php echo e(route('customer_products.category', \App\SubSubCategory::find($subsubcategory_id)->subcategory->category->slug)); ?>"><?php echo e(\App\SubSubCategory::find($subsubcategory_id)->subcategory->category->name); ?></a></li>
                            <li ><a href="<?php echo e(route('customer_products.subcategory', \App\SubsubCategory::find($subsubcategory_id)->subcategory->slug)); ?>"><?php echo e(\App\SubsubCategory::find($subsubcategory_id)->subcategory->name); ?></a></li>
                            <li class="active"><a href="<?php echo e(route('customer_products.subsubcategory', \App\SubSubCategory::find($subsubcategory_id)->slug)); ?>"><?php echo e(\App\SubSubCategory::find($subsubcategory_id)->name); ?></a></li>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <section class="gry-bg py-4">
        <div class="container sm-px-0">
            <form class="" id="search-form" action="" method="GET">
                <div class="row">
                <div class="col-xl-3 side-filter d-xl-block">
                    <div class="filter-overlay filter-close"></div>
                    <div class="filter-wrapper c-scrollbar">
                        <div class="filter-title d-flex d-xl-none justify-content-between pb-3 align-items-center">
                            <h3 class="h6">Filters</h3>
                            <button type="button" class="close filter-close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="bg-white sidebar-box mb-3">
                            <div class="box-title text-center">
                                <?php echo e(__('Categories')); ?>

                            </div>
                            <div class="box-content">
                                <div class="category-filter">
                                    <ul>
                                        <?php if(!isset($category_id) && !isset($subcategory_id) && !isset($subsubcategory_id)): ?>
                                            <?php $__currentLoopData = \App\Category::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class=""><a href="<?php echo e(route('customer_products.category', $category->slug)); ?>"><?php echo e(__($category->name)); ?> (<?php echo e(count($category->classified_products)); ?>)</a></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                        <?php if(isset($category_id)): ?>
                                            <li class="active"><a href="<?php echo e(route('customer.products')); ?>"><?php echo e(__('All Categories')); ?></a></li>
                                            <li class="active"><a href="<?php echo e(route('customer_products.category', \App\Category::find($category_id)->slug)); ?>"><?php echo e(__(\App\Category::find($category_id)->name)); ?></a></li>
                                            <?php $__currentLoopData = \App\Category::find($category_id)->subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key2 => $subcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class="child"><a href="<?php echo e(route('customer_products.subcategory', $subcategory->slug)); ?>"><?php echo e(__($subcategory->name)); ?> (<?php echo e(count($subcategory->classified_products)); ?>)</a></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                        <?php if(isset($subcategory_id)): ?>
                                            <li class="active"><a href="<?php echo e(route('customer.products')); ?>"><?php echo e(__('All Categories')); ?></a></li>
                                            <li class="active"><a href="<?php echo e(route('customer_products.category', \App\SubCategory::find($subcategory_id)->category->slug)); ?>"><?php echo e(__(\App\SubCategory::find($subcategory_id)->category->name)); ?></a></li>
                                            <li class="active"><a href="<?php echo e(route('customer_products.subcategory', \App\SubCategory::find($subcategory_id)->slug)); ?>"><?php echo e(__(\App\SubCategory::find($subcategory_id)->name)); ?></a></li>
                                            <?php $__currentLoopData = \App\SubCategory::find($subcategory_id)->subsubcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key3 => $subsubcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class="child"><a href="<?php echo e(route('customer_products.subsubcategory', $subsubcategory->slug)); ?>"><?php echo e(__($subsubcategory->name)); ?> (<?php echo e(count($subsubcategory->classified_products)); ?>)</a></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                        <?php if(isset($subsubcategory_id)): ?>
                                            <li class="active"><a href="<?php echo e(route('customer.products')); ?>"><?php echo e(__('All Categories')); ?></a></li>
                                            <li class="active"><a href="<?php echo e(route('customer_products.category', \App\SubsubCategory::find($subsubcategory_id)->subcategory->category->slug)); ?>"><?php echo e(__(\App\SubSubCategory::find($subsubcategory_id)->subcategory->category->name)); ?></a></li>
                                            <li class="active"><a href="<?php echo e(route('customer_products.subcategory', \App\SubsubCategory::find($subsubcategory_id)->subcategory->slug)); ?>"><?php echo e(__(\App\SubsubCategory::find($subsubcategory_id)->subcategory->name)); ?></a></li>
                                            <li class="current"><a href="<?php echo e(route('customer_products.subsubcategory', \App\SubsubCategory::find($subsubcategory_id)->slug)); ?>"><?php echo e(__(\App\SubsubCategory::find($subsubcategory_id)->name)); ?> (<?php echo e(count(\App\SubsubCategory::find($subsubcategory_id)->classified_products)); ?>)</a></li>
                                        <?php endif; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9">
                    <!-- <div class="bg-white"> -->
                        <?php if(isset($category_id)): ?>
                            <input type="hidden" name="category" value="<?php echo e(\App\Category::find($category_id)->slug); ?>">
                        <?php endif; ?>
                        <?php if(isset($subcategory_id)): ?>
                            <input type="hidden" name="subcategory" value="<?php echo e(\App\SubCategory::find($subcategory_id)->slug); ?>">
                        <?php endif; ?>
                        <?php if(isset($subsubcategory_id)): ?>
                            <input type="hidden" name="subsubcategory" value="<?php echo e(\App\SubSubCategory::find($subsubcategory_id)->slug); ?>">
                        <?php endif; ?>
                        <div class="sort-by-bar row no-gutters bg-white mb-3 px-3 pt-2">
                            <div class="col-xl-4 d-flex d-xl-block justify-content-between align-items-end ">
                                <div class="sort-by-box flex-grow-1">
                                    <div class="form-group">
                                        <label><?php echo e(__('Search')); ?></label>
                                        <div class="search-widget">
                                            <input class="form-control input-lg" type="text" name="q" placeholder="<?php echo e(__('Search products')); ?>" <?php if(isset($query)): ?> value="<?php echo e($query); ?>" <?php endif; ?>>
                                            <button type="submit" class="btn-inner">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="d-xl-none ml-3 form-group">
                                    <button type="button" class="btn p-1 btn-sm" id="side-filter">
                                        <i class="la la-filter la-2x"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="col-xl-7 offset-xl-1">
                                <div class="row no-gutters">
                                    <div class="col-4">
                                        <div class="sort-by-box px-1">
                                            <div class="form-group">
                                                <label><?php echo e(__('Sort by')); ?></label>
                                                <select class="form-control sortSelect" data-minimum-results-for-search="Infinity" name="sort_by" onchange="filter()">
                                                    <option value="1" <?php if(isset($sort_by)): ?> <?php if($sort_by == '1'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Newest')); ?></option>
                                                    <option value="2" <?php if(isset($sort_by)): ?> <?php if($sort_by == '2'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Oldest')); ?></option>
                                                    <option value="3" <?php if(isset($sort_by)): ?> <?php if($sort_by == '3'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Price low to high')); ?></option>
                                                    <option value="4" <?php if(isset($sort_by)): ?> <?php if($sort_by == '4'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Price high to low')); ?></option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="sort-by-box px-1">
                                            <div class="form-group">
                                                <label><?php echo e(__('Condition')); ?></label>
                                                <select class="form-control sortSelect" data-minimum-results-for-search="Infinity" name="condition" onchange="filter()">
                                                    <option value=""><?php echo e(__('All Type')); ?></option>
                                                    <option value="new" <?php if(isset($condition)): ?> <?php if($condition == 'new'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('New')); ?></option>
                                                    <option value="used" <?php if(isset($condition)): ?> <?php if($condition == 'used'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e(__('Used')); ?></option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <div class="sort-by-box px-1">
                                            <div class="form-group">
                                                <label><?php echo e(__('Brands')); ?></label>
                                                <select class="form-control sortSelect" data-placeholder="<?php echo e(__('All Brands')); ?>" name="brand" onchange="filter()">
                                                    <option value=""><?php echo e(__('All Brands')); ?></option>
                                                    <?php $__currentLoopData = \App\Brand::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $brand): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <option value="<?php echo e($brand->slug); ?>" <?php if(isset($brand_id)): ?> <?php if($brand_id == $brand->id): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e($brand->name); ?></option>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- <hr class=""> -->
                        <div class="products-box-bar p-3 bg-white">
                            <div class="row sm-no-gutters gutters-5">
                                <?php $__currentLoopData = $customer_products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="col-xxl-3 col-xl-4 col-lg-3 col-md-4 col-6">
                                        <div class="product-box-2 bg-white alt-box my-md-2">
                                            <div class="position-relative overflow-hidden">
                                                <a href="<?php echo e(route('customer.product', $product->slug)); ?>" class="d-block product-image h-100 text-center" tabindex="0">
                                                    <img class="img-fit lazyload" src="<?php echo e(asset('frontend/images/placeholder.jpg')); ?>" data-src="<?php echo e(asset($product->thumbnail_img)); ?>" alt="<?php echo e(__($product->name)); ?>">
                                                </a>
                                            </div>
                                            <div class="p-md-3 p-2">
                                                <div class="price-box">
                                                    <span class="product-price strong-600"><?php echo e(single_price($product->unit_price)); ?></span>
                                                </div>
                                                <h2 class="product-title p-0">
                                                    <a href="<?php echo e(route('customer.product', $product->slug)); ?>" class=" text-truncate"><?php echo e(__($product->name)); ?></a>
                                                </h2>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                        <div class="products-pagination bg-white p-3">
                            <nav aria-label="Center aligned pagination">
                                <ul class="pagination justify-content-center">
                                    <?php echo e($customer_products->links()); ?>

                                </ul>
                            </nav>
                        </div>

                    <!-- </div> -->
                </div>
            </div>
            </form>
        </div>
    </section>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        function filter(){
            $('#search-form').submit();
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/customer_product_listing.blade.php ENDPATH**/ ?>