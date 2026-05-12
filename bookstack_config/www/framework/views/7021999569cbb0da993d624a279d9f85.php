<?php $__env->startSection('body'); ?>

    <div class="container small">

        <div class="my-s">
            <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
                $shelf,
                $shelf->getUrl('/delete') => [
                    'text' => trans('entities.shelves_delete'),
                    'icon' => 'delete',
                ]
            ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <div class="card content-wrap auto-height">
            <h1 class="list-heading"><?php echo e(trans('entities.shelves_delete')); ?></h1>
            <p><?php echo e(trans('entities.shelves_delete_explain', ['name' => $shelf->name])); ?></p>

            <div class="grid half">
                <p class="text-neg">
                    <strong><?php echo e(trans('entities.shelves_delete_confirmation')); ?></strong>
                </p>

                <form action="<?php echo e($shelf->getUrl()); ?>" method="POST" class="text-right">
                    <?php echo csrf_field(); ?>

                    <input type="hidden" name="_method" value="DELETE">

                    <a href="<?php echo e($shelf->getUrl()); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                    <button type="submit" class="button"><?php echo e(trans('common.confirm')); ?></button>
                </form>
            </div>


        </div>
    </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/shelves/delete.blade.php ENDPATH**/ ?>