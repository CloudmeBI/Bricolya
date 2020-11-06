<div style="margin-left:auto;margin-right:auto;">
<style media="all">
	@import  url('https://fonts.googleapis.com/css?family=Open+Sans:400,700');
	*{
		margin: 0;
		padding: 0;
		line-height: 1.5;
		font-family: 'Open Sans', sans-serif;
		color: #333542;
	}
	div{
		font-size: 1rem;
	}
	.gry-color *,
	.gry-color{
		color:#878f9c;
	}
	table{
		width: 100%;
	}
	table th{
		font-weight: normal;
	}
	table.padding th{
		padding: .5rem .7rem;
	}
	table.padding td{
		padding: .7rem;
	}
	table.sm-padding td{
		padding: .2rem .7rem;
	}
	.border-bottom td,
	.border-bottom th{
		border-bottom:1px solid #eceff4;
	}
	.text-left{
		text-align:left;
	}
	.text-right{
		text-align:right;
	}
	.small{
		font-size: .85rem;
	}
	.strong{
		font-weight: bold;
	}
</style>

	<?php
		$generalsetting = \App\GeneralSetting::first();
	?>

	<div style="background: #eceff4;padding: 1.5rem;">
		<table>
			<tr>
				<td>
					<?php if($generalsetting->logo != null): ?>
						<img src="<?php echo e(asset($generalsetting->logo)); ?>" height="40" style="display:inline-block;">
					<?php else: ?>
						<img src="<?php echo e(asset('frontend/images/logo/logo.png')); ?>" height="40" style="display:inline-block;">
					<?php endif; ?>
				</td>
			</tr>
		</table>

	</div>

	<div style="border-bottom:1px solid #eceff4;margin: 0 1.5rem;"></div>

    <div style="padding: 1.5rem;">
		<table class="padding text-left small border-bottom">
			<thead>
                <tr class="gry-color" style="background: #eceff4;">
					<th width="20%">Type</th>
                    <th width="50%">Name</th>
                    <th width="30%">ID</th>
					<th width="30%">Email</th>
                </tr>
			</thead>
			<tbody class="strong">
                <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	                <tr class="">
						<td><?php echo e($user->user_type); ?></td>
						<td><?php echo e($user->name); ?></td>
						<td><?php echo e($user->id); ?></td>
						<td><?php echo e($user->email); ?></td>
					</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
		</table>
	</div>

</div>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/downloads/user.blade.php ENDPATH**/ ?>