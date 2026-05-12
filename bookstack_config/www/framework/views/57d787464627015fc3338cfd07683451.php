<?php $__env->startSection('body'); ?>

    <div class="container">

        <div class="my-s">
            <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
                $page->book,
                $page->chapter,
                $page,
                $page->getUrl('/permissions') => [
                    'text' => trans('entities.pages_permissions'),
                    'icon' => 'lock',
                ]
            ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <main class="card content-wrap auto-height">
            <?php echo $__themeViews->handleViewInclude('form.entity-permissions', ['model' => $page, 'title' => trans('entities.pages_permissions')], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </main>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/pages/permissions.blade.php ENDPATH**/ ?>