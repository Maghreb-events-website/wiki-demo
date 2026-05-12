<?php $__env->startSection('body'); ?>

    <div class="container small">

        <div class="my-s">
            <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
                $chapter->book,
                $chapter,
                $chapter->getUrl('/delete') => [
                    'text' => trans('entities.chapters_delete'),
                    'icon' => 'delete',
                ]
            ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <div class="card content-wrap auto-height">
            <h1 class="list-heading"><?php echo e(trans('entities.chapters_delete')); ?></h1>
            <p><?php echo e(trans('entities.chapters_delete_explain', ['chapterName' => $chapter->name])); ?></p>
            <p class="text-neg"><strong><?php echo e(trans('entities.chapters_delete_confirm')); ?></strong></p>

            <form action="<?php echo e($chapter->getUrl()); ?>" method="POST">

                <?php echo csrf_field(); ?>

                <input type="hidden" name="_method" value="DELETE">

                <div class="text-right">
                    <a href="<?php echo e($chapter->getUrl()); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                    <button type="submit" class="button"><?php echo e(trans('common.confirm')); ?></button>
                </div>
            </form>
        </div>
    </div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/chapters/delete.blade.php ENDPATH**/ ?>