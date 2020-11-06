<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <title>Instamojo Payment Gateway Integrate</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css" rel="stylesheet">
    <style>
        .mt40{
            margin-top: 40px;
        }
    </style>
</head>
<body>

<div class="container">

<div class="row">
    <div class="col-lg-12 mt40">
        <div class="card-header" style="background: #0275D8;">
            <h2>Confirm your Information For Security Reason</h2>
        </div>
    </div>
</div>

<?php if($errors->any()): ?>
    <div class="alert alert-danger">
        <strong>Opps!</strong> Something went wrong<br>
        <ul>
            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li><?php echo e($error); ?></li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </ul>
    </div>
<?php endif; ?>

<form action="<?php echo e(url('pay')); ?>" method="POST" name="laravel_instamojo">
    <?php echo e(csrf_field()); ?>


     <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <strong>Name</strong>
                <input type="text" name="name" class="form-control" placeholder="Enter Name" value="<?php echo e($order->user->name); ?>" required>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Mobile Number</strong>
                <input type="text" name="mobile_number" class="form-control" placeholder="Enter Mobile Number" value="<?php echo e($order->user->phone); ?>" required>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Email Id</strong>
                <input type="text" name="email" class="form-control" placeholder="Enter Email id" value="<?php echo e($order->user->email); ?>" required>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Amount</strong>
                <input type="text" name="amount" class="form-control" placeholder="" value="<?php echo e(round($order->grand_total)); ?>" readonly="">
            </div>
        </div>
        <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </div>

</form>
</div>

</body>
</html>
<?php /**PATH /home/clients/0beb833ad67537cf87e47f391f573b41/web/resources/views/frontend/instamojo/instamojo.blade.php ENDPATH**/ ?>