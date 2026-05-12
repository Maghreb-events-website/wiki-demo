<?php $__env->startSection('body'); ?>
    <div class="container">

        <div class="my-s">
            <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
                $page->book,
                $page->chapter,
                $page,
                $page->getUrl('/revisions') => [
                    'text' => trans('entities.pages_revisions'),
                    'icon' => 'history',
                ]
            ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <main class="card content-wrap">
            <h1 class="list-heading"><?php echo e(trans('entities.pages_revisions')); ?></h1>

            <p class="text-muted"><?php echo e(trans('entities.pages_revisions_desc')); ?></p>

            <div class="flex-container-row my-m items-center justify-space-between wrap gap-x-m gap-y-s">
                <?php echo e($revisions->links()); ?>

                <div>
                    <?php echo $__themeViews->handleViewInclude('common.sort', $listOptions->getSortControlData(), array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                </div>
            </div>

            <?php if(count($revisions) > 0): ?>
                <div class="item-list">
                    <div class="item-list-row flex-container-row items-center strong hide-under-l">
                        <div class="flex fit-content min-width-xxxxs px-m py-xs"><?php echo e(trans('entities.pages_revisions_number')); ?></div>
                        <div class="flex-2 px-m py-xs"><?php echo e(trans('entities.pages_name')); ?> / <?php echo e(trans('entities.pages_revisions_editor')); ?></div>
                        <div class="flex-3 px-m py-xs"><?php echo e(trans('entities.pages_revisions_created_by')); ?> / <?php echo e(trans('entities.pages_revisions_date')); ?></div>
                        <div class="flex-2 px-m py-xs"><?php echo e(trans('entities.pages_revisions_changelog')); ?></div>
                        <div class="flex-2 px-m py-xs text-right"><?php echo e(trans('common.actions')); ?></div>
                    </div>
                    <?php $__currentLoopData = $revisions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $revision): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $__themeViews->handleViewInclude('pages.parts.revisions-index-row', [
                                'revision' => $revision,
                                'current' => $page->revision_count === $revision->revision_number,
                                'oldest' => $oldestRevisionId === $revision->id,
                            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            <?php else: ?>
                <p><?php echo e(trans('entities.pages_revisions_none')); ?></p>
            <?php endif; ?>

            <div class="my-m">
                <?php echo e($revisions->links()); ?>

            </div>
        </main>

    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/pages/revisions.blade.php ENDPATH**/ ?>