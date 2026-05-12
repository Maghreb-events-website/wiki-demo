<?php $__env->startSection('body'); ?>
    <div class="container small">

        <?php echo $__themeViews->handleViewInclude('settings.parts.navbar', ['selected' => 'maintenance'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

        <div class="card content-wrap auto-height">
            <h2 class="list-heading"><?php echo e(trans('settings.recycle_bin_restore')); ?></h2>
            <p class="text-muted"><?php echo e(trans('settings.recycle_bin_restore_confirm')); ?></p>
            <form action="<?php echo e($deletion->getUrl('/restore')); ?>" method="post">
                <?php echo csrf_field(); ?>

                <a href="<?php echo e(url('/settings/recycle-bin')); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                <button type="submit" class="button"><?php echo e(trans('settings.recycle_bin_restore')); ?></button>
            </form>

            <?php if($deletion->deletable instanceof \BookStack\Entities\Models\Entity): ?>
                <hr class="mt-m">
                <h5><?php echo e(trans('settings.recycle_bin_restore_list')); ?></h5>
                <div class="flex-container-row mb-s items-center">
                    <?php if($deletion->deletable->getParent() && $deletion->deletable->getParent()->trashed()): ?>
                        <div class="text-neg flex"><?php echo e(trans('settings.recycle_bin_restore_deleted_parent')); ?></div>
                    <?php endif; ?>
                    <?php if($parentDeletion): ?>
                        <div class="flex fit-content ml-m">
                            <a class="button outline" href="<?php echo e($parentDeletion->getUrl('/restore')); ?>"><?php echo e(trans('settings.recycle_bin_restore_parent')); ?></a>
                        </div>
                    <?php endif; ?>
                </div>

                <?php echo $__themeViews->handleViewInclude('settings.recycle-bin.parts.deletable-entity-list', ['entity' => $deletion->deletable], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
            <?php endif; ?>

        </div>

    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/settings/recycle-bin/restore.blade.php ENDPATH**/ ?>