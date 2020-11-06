<!-- FOOTER -->
<!--===================================================-->
<footer id="footer" style="padding-top:0px !important">
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
    <!-- Remove the class "show-fixed" and "hide-fixed" to make the content always appears. -->
    <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

	<div class="col-sm-10">
		<p class="pad-lft">&#0169; <?php echo e(date('Y')); ?> <?php echo e(\App\GeneralSetting::first()->site_name); ?> v<?php echo e(\App\BusinessSetting::where('type', 'current_version')->first()->value); ?></p>
	</div>

</footer>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/inc/admin_footer.blade.php ENDPATH**/ ?>