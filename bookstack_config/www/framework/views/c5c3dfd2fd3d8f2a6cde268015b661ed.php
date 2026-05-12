<?php $__env->startSection('body'); ?>

    <div class="container small">

        <?php echo $__themeViews->handleViewInclude('settings.parts.navbar', ['selected' => 'roles'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

        <div class="card content-wrap">
            <h1 class="list-heading"><?php echo e(trans('settings.role_create')); ?></h1>

            <form action="<?php echo e(url("/settings/roles/new")); ?>" method="POST">
                <?php echo e(csrf_field()); ?>


                <?php echo $__themeViews->handleViewInclude('settings.roles.parts.form', ['role' => $role ?? null], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

                <div class="form-group text-right">
                    <a href="<?php echo e(url("/settings/roles")); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                    <button type="submit" class="button"><?php echo e(trans('settings.role_save')); ?></button>
                </div>
            </form>

        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/settings/roles/create.blade.php ENDPATH**/ ?>