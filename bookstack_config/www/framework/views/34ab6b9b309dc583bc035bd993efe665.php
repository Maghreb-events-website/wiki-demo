<?php $__env->startSection('body'); ?>
    <div class="container small">

        <?php echo $__themeViews->handleViewInclude('settings.parts.navbar', ['selected' => 'users'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

        <form action="<?php echo e(url("/settings/users/{$user->id}")); ?>" method="POST">
            <?php echo e(csrf_field()); ?>

            <?php echo e(method_field('delete')); ?>


            <div class="card content-wrap auto-height">
                <h1 class="list-heading"><?php echo e(trans('settings.users_delete')); ?></h1>

                <p><?php echo e(trans('settings.users_delete_warning', ['userName' => $user->name])); ?></p>

                <hr class="my-l">

                <div class="grid half gap-xl v-center">
                    <div>
                        <label class="setting-list-label"><?php echo e(trans('settings.users_migrate_ownership')); ?></label>
                        <p class="small"><?php echo e(trans('settings.users_migrate_ownership_desc')); ?></p>
                    </div>
                    <div>
                        <?php echo $__themeViews->handleViewInclude('form.user-select', ['name' => 'new_owner_id', 'user' => null], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                    </div>
                </div>

                <hr class="my-l">

                <div class="grid half">
                    <p class="text-neg"><strong><?php echo e(trans('settings.users_delete_confirm')); ?></strong></p>
                    <div class="text-right">
                        <a href="<?php echo e(url("/settings/users/{$user->id}")); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                        <button type="submit" class="button"><?php echo e(trans('common.confirm')); ?></button>
                    </div>
                </div>

            </div>
        </form>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/users/delete.blade.php ENDPATH**/ ?>