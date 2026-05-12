<?php $__env->startSection('body'); ?>
    <div class="container">

        <?php echo $__themeViews->handleViewInclude('settings.parts.navbar', ['selected' => 'maintenance'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

        <div class="card content-wrap auto-height">
            <h2 class="list-heading"><?php echo e(trans('settings.recycle_bin')); ?></h2>

            <div class="flex-container-row items-center gap-x-l gap-y-m wrap">
                <div class="flex-2 min-width-l">
                    <p class="text-muted mb-none"><?php echo e(trans('settings.recycle_bin_desc')); ?></p>
                </div>
                <div class="flex text-m-right min-width-m">
                    <div component="dropdown" class="dropdown-container">
                        <button refs="dropdown@toggle"
                                type="button"
                                class="button outline"><?php echo e(trans('settings.recycle_bin_empty')); ?> </button>
                        <div refs="dropdown@menu" class="dropdown-menu">
                            <p class="text-neg small px-m mb-xs"><?php echo e(trans('settings.recycle_bin_empty_confirm')); ?></p>

                            <form action="<?php echo e(url('/settings/recycle-bin/empty')); ?>" method="POST">
                                <?php echo csrf_field(); ?>

                                <button type="submit" class="text-link small delete text-item"><?php echo e(trans('common.confirm')); ?></button>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

            <hr class="mt-l mb-s">

            <div class="py-m">
                <?php echo $deletions->links(); ?>

            </div>

            <div class="item-list">
                <div class="item-list-row flex-container-row items-center px-s bold hide-under-l">
                    <div class="flex-2 px-m py-xs"><?php echo e(trans('settings.audit_deleted_item')); ?></div>
                    <div class="flex-2 px-m py-xs"><?php echo e(trans('settings.recycle_bin_deleted_parent')); ?></div>
                    <div class="flex-2 px-m py-xs"><?php echo e(trans('settings.recycle_bin_deleted_by')); ?></div>
                    <div class="flex px-m py-xs"><?php echo e(trans('settings.recycle_bin_deleted_at')); ?></div>
                    <div class="flex px-m py-xs text-right"></div>
                </div>
                <?php if(count($deletions) === 0): ?>
                    <div class="item-list-row px-l py-m">
                        <p class="text-muted mb-none"><em><?php echo e(trans('settings.recycle_bin_contents_empty')); ?></em></p>
                    </div>
                <?php endif; ?>
                <?php $__currentLoopData = $deletions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $deletion): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__themeViews->handleViewInclude('settings.recycle-bin.parts.recycle-bin-list-item', ['deletion' => $deletion], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>

            <div class="py-m">
                <?php echo $deletions->links(); ?>

            </div>

        </div>

    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/settings/recycle-bin/index.blade.php ENDPATH**/ ?>