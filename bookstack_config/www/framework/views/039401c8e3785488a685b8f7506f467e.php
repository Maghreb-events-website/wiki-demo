<?php $__env->startSection('body'); ?>

    <div class="container small">

        <?php echo $__themeViews->handleViewInclude('settings.parts.navbar', ['selected' => 'webhooks'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

        <div class="card content-wrap auto-height">
            <h1 class="list-heading"><?php echo e(trans('settings.webhooks_create')); ?></h1>

            <form action="<?php echo e(url("/settings/webhooks/create")); ?>" method="POST">
                <?php echo csrf_field(); ?>

                <?php echo $__themeViews->handleViewInclude('settings.webhooks.parts.form', ['title' => trans('settings.webhooks_create')], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

                <div class="form-group text-right">
                    <a href="<?php echo e(url("/settings/webhooks")); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                    <button type="submit" class="button"><?php echo e(trans('settings.webhooks_save')); ?></button>
                </div>
            </form>
        </div>

        <?php echo $__themeViews->handleViewInclude('settings.webhooks.parts.format-example', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/settings/webhooks/create.blade.php ENDPATH**/ ?>