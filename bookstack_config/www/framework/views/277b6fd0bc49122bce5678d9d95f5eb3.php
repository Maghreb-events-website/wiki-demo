<div class="actions mb-xl">
    <h5><?php echo e(trans('common.actions')); ?></h5>
    <div class="icon-list text-link">

        <?php if(userCan(\BookStack\Permissions\Permission::PageCreate, $chapter)): ?>
            <a href="<?php echo e($chapter->getUrl('/create-page')); ?>" data-shortcut="new" class="icon-list-item">
                <span><?php echo (new \BookStack\Util\SvgIcon('add'))->toHtml(); ?></span>
                <span><?php echo e(trans('entities.pages_new')); ?></span>
            </a>
        <?php endif; ?>

        <hr class="primary-background"/>

        <?php if(userCan(\BookStack\Permissions\Permission::ChapterUpdate, $chapter)): ?>
            <a href="<?php echo e($chapter->getUrl('/edit')); ?>" data-shortcut="edit" class="icon-list-item">
                <span><?php echo (new \BookStack\Util\SvgIcon('edit'))->toHtml(); ?></span>
                <span><?php echo e(trans('common.edit')); ?></span>
            </a>
        <?php endif; ?>
        <?php if(userCanOnAny(\BookStack\Permissions\Permission::Create, \BookStack\Entities\Models\Book::class) || userCan(\BookStack\Permissions\Permission::ChapterCreateAll) || userCan(\BookStack\Permissions\Permission::ChapterCreateOwn)): ?>
            <a href="<?php echo e($chapter->getUrl('/copy')); ?>" data-shortcut="copy" class="icon-list-item">
                <span><?php echo (new \BookStack\Util\SvgIcon('copy'))->toHtml(); ?></span>
                <span><?php echo e(trans('common.copy')); ?></span>
            </a>
        <?php endif; ?>
        <?php if(userCan(\BookStack\Permissions\Permission::ChapterUpdate, $chapter) && userCan(\BookStack\Permissions\Permission::ChapterDelete, $chapter)): ?>
            <a href="<?php echo e($chapter->getUrl('/move')); ?>" data-shortcut="move" class="icon-list-item">
                <span><?php echo (new \BookStack\Util\SvgIcon('folder'))->toHtml(); ?></span>
                <span><?php echo e(trans('common.move')); ?></span>
            </a>
        <?php endif; ?>
        <?php if(userCan(\BookStack\Permissions\Permission::RestrictionsManage, $chapter)): ?>
            <a href="<?php echo e($chapter->getUrl('/permissions')); ?>" data-shortcut="permissions" class="icon-list-item">
                <span><?php echo (new \BookStack\Util\SvgIcon('lock'))->toHtml(); ?></span>
                <span><?php echo e(trans('entities.permissions')); ?></span>
            </a>
        <?php endif; ?>
        <?php if(userCan(\BookStack\Permissions\Permission::ChapterDelete, $chapter)): ?>
            <a href="<?php echo e($chapter->getUrl('/delete')); ?>" data-shortcut="delete" class="icon-list-item">
                <span><?php echo (new \BookStack\Util\SvgIcon('delete'))->toHtml(); ?></span>
                <span><?php echo e(trans('common.delete')); ?></span>
            </a>
        <?php endif; ?>

        <?php if($chapter->book && userCan(\BookStack\Permissions\Permission::BookUpdate, $chapter->book)): ?>
            <hr class="primary-background"/>
            <a href="<?php echo e($chapter->book->getUrl('/sort')); ?>" data-shortcut="sort" class="icon-list-item">
                <span><?php echo (new \BookStack\Util\SvgIcon('sort'))->toHtml(); ?></span>
                <span><?php echo e(trans('entities.chapter_sort_book')); ?></span>
            </a>
        <?php endif; ?>

        <hr class="primary-background"/>

        <?php if($watchOptions->canWatch() && !$watchOptions->isWatching()): ?>
            <?php echo $__themeViews->handleViewInclude('entities.watch-action', ['entity' => $chapter], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        <?php endif; ?>
        <?php if(!user()->isGuest()): ?>
            <?php echo $__themeViews->handleViewInclude('entities.favourite-action', ['entity' => $chapter], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        <?php endif; ?>
        <?php if(userCan(\BookStack\Permissions\Permission::ContentExport)): ?>
            <?php echo $__themeViews->handleViewInclude('entities.export-menu', ['entity' => $chapter], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        <?php endif; ?>
    </div>
</div><?php /**PATH /app/www/resources/views/chapters/parts/show-sidebar-section-actions.blade.php ENDPATH**/ ?>