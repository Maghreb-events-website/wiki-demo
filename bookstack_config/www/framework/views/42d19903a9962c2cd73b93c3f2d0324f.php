<?php $__env->startSection('body'); ?>
    <div class="container small py-xl">

        <div class="card content-wrap auto-height">
            <h1 class="list-heading"><?php echo e(trans('auth.mfa_setup')); ?></h1>
            <p class="mb-none"> <?php echo e(trans('auth.mfa_setup_desc')); ?></p>

            <div class="setting-list">
                <?php $__currentLoopData = ['totp', 'backup_codes']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $method): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__themeViews->handleViewInclude('mfa.parts.setup-method-row', ['method' => $method], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>

        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/mfa/setup.blade.php ENDPATH**/ ?>