<?php $__env->startSection('body'); ?>

    <div class="container">

        <div class="my-s">
            <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
                $shelf,
                $shelf->getUrl('/permissions') => [
                    'text' => trans('entities.shelves_permissions'),
                    'icon' => 'lock',
                ]
            ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <div class="card content-wrap auto-height">
            <?php echo $__themeViews->handleViewInclude('form.entity-permissions', ['model' => $shelf, 'title' => trans('entities.shelves_permissions')], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <div class="card content-wrap auto-height flex-container-row items-center gap-x-xl wrap">
            <div class="flex">
                <h2 class="list-heading"><?php echo e(trans('entities.shelves_copy_permissions_to_books')); ?></h2>
                <p><?php echo e(trans('entities.shelves_copy_permissions_explain')); ?></p>
            </div>
            <form action="<?php echo e($shelf->getUrl('/copy-permissions')); ?>" method="post" class="flex text-right">
                <?php echo e(csrf_field()); ?>

                <button class="button"><?php echo e(trans('entities.shelves_copy_permissions')); ?></button>
            </form>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/shelves/permissions.blade.php ENDPATH**/ ?>