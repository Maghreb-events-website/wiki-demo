<?php $__env->startSection('container-attrs'); ?>
    component="entity-search"
    option:entity-search:entity-id="<?php echo e($chapter->id); ?>"
    option:entity-search:entity-type="chapter"
<?php $__env->stopSection(); ?>

<?php $__env->startPush('social-meta'); ?>
    <meta property="og:description" content="<?php echo e(Str::limit($chapter->description, 100, '...')); ?>">
<?php $__env->stopPush(); ?>

<?php echo $__themeViews->handleViewInclude('entities.body-tag-classes', ['entity' => $chapter], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

<?php $__env->startSection('body'); ?>

    <div class="mb-m print-hidden">
        <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
            $chapter->book,
            $chapter,
        ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    </div>

    <main class="content-wrap card">
        <h1 class="break-text"><?php echo e($chapter->name); ?></h1>
        <div refs="entity-search@contentView" class="chapter-content">
            <div class="text-muted break-text"><?php echo $chapter->descriptionInfo()->getHtml(); ?></div>
            <?php if(count($pages) > 0): ?>
                <div class="entity-list book-contents">
                    <?php $__currentLoopData = $pages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $__themeViews->handleViewInclude('pages.parts.list-item', ['page' => $page], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            <?php else: ?>
                <div class="mt-xl">
                    <hr>
                    <p class="text-muted italic mb-m mt-xl"><?php echo e(trans('entities.chapters_empty')); ?></p>

                    <div class="icon-list block inline">
                        <?php if(userCan(\BookStack\Permissions\Permission::PageCreate, $chapter)): ?>
                            <a href="<?php echo e($chapter->getUrl('/create-page')); ?>" class="icon-list-item text-page">
                                <span class="icon"><?php echo (new \BookStack\Util\SvgIcon('page'))->toHtml(); ?></span>
                                <span><?php echo e(trans('entities.books_empty_create_page')); ?></span>
                            </a>
                        <?php endif; ?>
                        <?php if(userCan(\BookStack\Permissions\Permission::BookUpdate, $book)): ?>
                            <a href="<?php echo e($book->getUrl('/sort')); ?>" class="icon-list-item text-book">
                                <span class="icon"><?php echo (new \BookStack\Util\SvgIcon('book'))->toHtml(); ?></span>
                                <span><?php echo e(trans('entities.books_empty_sort_current_book')); ?></span>
                            </a>
                        <?php endif; ?>
                    </div>

                </div>
            <?php endif; ?>
        </div>

        <?php echo $__themeViews->handleViewInclude('entities.search-results', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    </main>

    <?php echo $__themeViews->handleViewInclude('entities.sibling-navigation', ['next' => $next, 'previous' => $previous], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('right'); ?>
    <?php echo $__themeViews->handleViewInclude('chapters.parts.show-sidebar-section-details', ['chapter' => $chapter, 'book' => $book, 'watchOptions' => $watchOptions], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    <?php echo $__themeViews->handleViewInclude('chapters.parts.show-sidebar-section-actions', ['chapter' => $chapter, 'watchOptions' => $watchOptions], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('left'); ?>
    <?php echo $__themeViews->handleViewInclude('entities.search-form', ['label' => trans('entities.chapters_search_this')], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    <?php echo $__themeViews->handleViewInclude('chapters.parts.show-sidebar-section-tags', ['chapter' => $chapter], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    <?php echo $__themeViews->handleViewInclude('entities.book-tree', ['book' => $book, 'sidebarTree' => $sidebarTree], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.tri', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/chapters/show.blade.php ENDPATH**/ ?>