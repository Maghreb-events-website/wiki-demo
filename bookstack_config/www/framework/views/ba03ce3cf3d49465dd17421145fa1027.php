<?php $__env->startSection('body'); ?>
    <div class="container small">

        <?php echo $__themeViews->handleViewInclude('settings.parts.navbar', ['selected' => 'roles'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

        <div class="card content-wrap auto-height">
            <h1 class="list-heading"> <?php echo e(trans('settings.role_delete')); ?></h1>

            <p><?php echo e(trans('settings.role_delete_confirm', ['roleName' => $role->display_name])); ?></p>

            <form action="<?php echo e(url("/settings/roles/delete/{$role->id}")); ?>" method="POST">
                <?php echo csrf_field(); ?>

                <input type="hidden" name="_method" value="DELETE">

                <?php if($role->users->count() > 0): ?>
                    <div class="form-group">
                        <p><?php echo e(trans('settings.role_delete_users_assigned', ['userCount' => $role->users->count()])); ?></p>
                        <?php echo $__themeViews->handleViewInclude('form.role-select', ['options' => $roles, 'name' => 'migrate_role_id'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                    </div>
                <?php endif; ?>

                <div class="grid half v-center">
                    <div>
                        <p class="text-neg">
                            <strong><?php echo e(trans('settings.role_delete_sure')); ?></strong>
                        </p>
                    </div>
                    <div>
                        <div class="form-group text-right">
                            <a href="<?php echo e(url("/settings/roles/{$role->id}")); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                            <button type="submit" class="button"><?php echo e(trans('common.confirm')); ?></button>
                        </div>
                    </div>
                </div>


            </form>
        </div>

    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/settings/roles/delete.blade.php ENDPATH**/ ?>