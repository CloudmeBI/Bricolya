<div class="col-md-3 order-2 order-lg-1">
   <div class="filter-widget mb-0">
      <h5 class="fw-title">Trier par</h5>
      <div class="slidecontainer sidebar-box mb30">
        <h4 class="box-title text-center">Prix</h4>
        <div slider id="slider-distance">
          <div>
            <div inverse-left style="width:70%;"></div>
            <div inverse-right style="width:70%;"></div>
            <div range style="left:0%;right:0%;"></div>
            <span thumb style="left:0%;"></span>
            <span thumb style="left:100%;"></span>
            <div sign style="left:0%;">
              <span id="value">
              <?php if(isset($min_price)): ?>
                <?php echo e($min_price); ?>

                <?php else: ?>
                  <?php echo e(10); ?>

                
              <?php endif; ?>
                                              
              </span>
            </div>
            <div sign style="left:100%;">
              <span id="value">
              <?php if(isset($max_price)): ?>
                <?php echo e($max_price); ?>

                <?php else: ?>
                  <?php echo e(999); ?>

                
              <?php endif; ?>
              </span>

            </div>
          </div>
          <input type="range" tabindex="0" id="minimum_price" value="0" max="999" min="10" step="10" oninput="
          this.value=Math.min(this.value,this.parentNode.childNodes[5].value-1);
          var value=(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.value)-(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.min);
          var children = this.parentNode.childNodes[1].childNodes;
          children[1].style.width=value+'%';
          children[5].style.left=value+'%';
          children[7].style.left=value+'%';children[11].style.left=value+'%';
          children[11].childNodes[1].innerHTML=this.value;" />

          <input type="range" tabindex="0" id="maximum_price" value="999" max="999" min="0" step="10" oninput="
          this.value=Math.max(this.value,this.parentNode.childNodes[3].value-(-1));
          var value=(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.value)-(100/(parseInt(this.max)-parseInt(this.min)))*parseInt(this.min);
          var children = this.parentNode.childNodes[1].childNodes;
          children[3].style.width=(100-value)+'%';
          children[5].style.right=(100-value)+'%';
          children[9].style.left=value+'%';children[13].style.left=value+'%';
          children[13].childNodes[1].innerHTML=this.value;" />
        </div>



      </div>

      <div id="categoriesSidebar" class="sidebar-box mb-3">
        <h5 class="fw-title box-title">Toutes les catégories: </h5>
        <ul class="nav flex-column heading">
                <?php $__currentLoopData = \App\Category::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                 <li class="nav-item">
                    <a  class="nav-link" href="<?php echo e(route('products.category', $category->slug)); ?>"><span><?php echo e(__($category->name)); ?></span></a>
                 </li>
                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
      </div>
   </div>
</div>
<?php
if(isset($min_price))
{
  $minPrice = $min_price; 
}
else{
  $minPrice = 10; 
}

if(isset($max_price))
{
  $maxPrice = $max_price;
}
else{
  $maxPrice = 999;
}

?>
<!-- on change range slider -->
<script>
  $(document).ready(function(){
    // minimum price
    $('#minimum_price').on('change',function(e){
       var min_price= $(this).val();
       var max_price = "<?php echo e($maxPrice); ?>";
       var url = "search?min_price="+min_price+"&max_price="+max_price;
       window.location.href = url;

    });
   //maximum price
    $('#maximum_price').on('change',function(e){
       var max_price= $(this).val();
       var min_price = "<?php echo e($minPrice); ?>";
       var url = "search?min_price="+min_price+"&max_price="+max_price;
       window.location.href = url;
    });

  });
</script><?php /**PATH /home/368495.cloudwaysapps.com/urvfepvzma/public_html/resources/views/frontend/partials/sidebar_category_filter.blade.php ENDPATH**/ ?>