<?php $__env->startSection('body'); ?>

    <div class="container small">

        <div class="my-s">
            <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
                $page->book,
                $page->chapter,
                $page,
                $page->getUrl('/copy') => [
                    'text' => trans('entities.pages_copy'),
                    'icon' => 'copy',
                ]
            ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <div class="card content-wrap auto-height">

            <h1 class="list-heading"><?php echo e(trans('entities.pages_copy')); ?></h1>

            <form action="<?php echo e($page->getUrl('/copy')); ?>" method="POST">
                <?php echo csrf_field(); ?>


                <div class="form-group title-input">
                    <label for="name"><?php echo e(trans('common.name')); ?></label>
                    <?php echo $__themeViews->handleViewInclude('form.text', ['name' => 'name'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                </div>

                <div class="form-group" collapsible>
                    <button type="button" class="collapse-title text-link" collapsible-trigger aria-expanded="false">
                        <label for="entity_selection"><?php echo e(trans('entities.pages_copy_desination')); ?></label>
                    </button>
                    <div class="collapse-content" collapsible-content>
                        <?php echo $__themeViews->handleViewInclude('entities.selector', ['name' => 'entity_selection', 'selectorSize' => 'large', 'entityTypes' => 'book,chapter', 'entityPermission' => 'page-create'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                    </div>
                </div>

                <?php echo $__themeViews->handleViewInclude('entities.copy-considerations', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

                <div class="form-group text-right">
                    <a href="<?php echo e($page->getUrl()); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                    <button type="submit" class="button"><?php echo e(trans('entities.pages_copy')); ?></button>
                </div>
            </form>

        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/pages/copy.blade.php ENDPATH**/ ?>