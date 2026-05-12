<?php $__env->startSection('body'); ?>
    <div class="container very-small py-xl">

        <div class="card content-wrap auto-height">
            <h1 class="list-heading"><?php echo e(trans('auth.mfa_verify_access')); ?></h1>
            <p class="mb-none"><?php echo e(trans('auth.mfa_verify_access_desc')); ?></p>

            <?php if(!$method): ?>
                <hr class="my-l">
                <h5><?php echo e(trans('auth.mfa_verify_no_methods')); ?></h5>
                <p class="small"><?php echo e(trans('auth.mfa_verify_no_methods_desc')); ?></p>
                <div>
                    <a href="<?php echo e(url('/mfa/setup')); ?>" class="button outline"><?php echo e(trans('common.configure')); ?></a>
                </div>
            <?php endif; ?>

            <?php if($method): ?>
                <hr class="my-l">
                <?php echo $__themeViews->handleViewInclude('mfa.parts.verify-' . $method, array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
            <?php endif; ?>

            <?php if(count($otherMethods) > 0): ?>
                <hr class="my-l">
                <?php $__currentLoopData = $otherMethods; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $otherMethod): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="text-center">
                        <a href="<?php echo e(url("/mfa/verify?method={$otherMethod}")); ?>"><?php echo e(trans('auth.mfa_verify_use_' . $otherMethod)); ?></a>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>

        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/mfa/verify.blade.php ENDPATH**/ ?>