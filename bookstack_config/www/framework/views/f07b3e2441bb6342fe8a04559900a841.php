<div class="item-list-row flex-container-row items-center px-s wrap">
    <div class="flex-2 px-m py-xs min-width-xl">
        <div class="flex-container-row items-center py-xs">
            <span role="presentation" class="flex-none icon text-<?php echo e($deletion->deletable->getType()); ?>"><?php echo (new \BookStack\Util\SvgIcon($deletion->deletable->getType()))->toHtml(); ?></span>
            <div class="text-<?php echo e($deletion->deletable->getType()); ?>">
                <?php echo e($deletion->deletable->name); ?>

            </div>
        </div>
        <?php if($deletion->deletable instanceof \BookStack\Entities\Models\Book): ?>
            <div class="pl-l block inline">
                <div class="text-chapter">
                    <?php echo (new \BookStack\Util\SvgIcon('chapter'))->toHtml(); ?> <?php echo e(trans_choice('entities.x_chapters', $deletion->deletable->chapters()->withTrashed()->count())); ?>

                </div>
            </div>
        <?php endif; ?>
        <?php if($deletion->deletable instanceof \BookStack\Entities\Models\Book || $deletion->deletable instanceof \BookStack\Entities\Models\Chapter): ?>
            <div class="pl-l block inline">
                <div class="text-page">
                    <?php echo (new \BookStack\Util\SvgIcon('page'))->toHtml(); ?> <?php echo e(trans_choice('entities.x_pages', $deletion->deletable->pages()->withTrashed()->count())); ?>

                </div>
            </div>
        <?php endif; ?>
    </div>
    <div class="flex-2 px-m py-xs min-width-m">
        <?php if($deletion->deletable->getParent()): ?>
            <strong class="hide-over-l"><?php echo e(trans('settings.recycle_bin_deleted_parent')); ?>:<br></strong>
            <div class="flex-container-row items-center">
                <span role="presentation" class="flex-none icon text-<?php echo e($deletion->deletable->getParent()->getType()); ?>"><?php echo (new \BookStack\Util\SvgIcon($deletion->deletable->getParent()->getType()))->toHtml(); ?></span>
                <div class="text-<?php echo e($deletion->deletable->getParent()->getType()); ?>">
                    <?php echo e($deletion->deletable->getParent()->name); ?>

                </div>
            </div>
        <?php endif; ?>
    </div>
    <div class="flex-2 px-m py-xs flex-container-row items-center min-width-m">
        <div>
            <strong class="hide-over-l"><?php echo e(trans('settings.recycle_bin_deleted_by')); ?>:<br></strong>
            <?php if($deletion->deleter): ?>
                <?php echo $__themeViews->handleViewInclude('settings.parts.table-user', ['user' => $deletion->deleter, 'user_id' => $deletion->deleted_by], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
            <?php else: ?>
                <?php echo e(trans('common.deleted_user')); ?>

            <?php endif; ?>
        </div>
    </div>
    <div class="flex px-m py-xs min-width-s"><strong class="hide-over-l"><?php echo e(trans('settings.recycle_bin_deleted_at')); ?>:<br></strong><?php echo e($deletion->created_at); ?></div>
    <div class="flex px-m py-xs text-m-right min-width-s">
        <div component="dropdown" class="dropdown-container">
            <button type="button"
                    refs="dropdown@toggle"
                    aria-haspopup="menu"
                    aria-expanded="false"
                    class="button outline"><?php echo e(trans('common.actions')); ?></button>
            <ul refs="dropdown@menu" class="dropdown-menu" role="menu">
                <li><a class="text-item" href="<?php echo e($deletion->getUrl('/restore')); ?>" role="menuitem"><?php echo e(trans('settings.recycle_bin_restore')); ?></a></li>
                <li><a class="text-item" href="<?php echo e($deletion->getUrl('/destroy')); ?>" role="menuitem"><?php echo e(trans('settings.recycle_bin_permanently_delete')); ?></a></li>
            </ul>
        </div>
    </div>
</div><?php /**PATH /app/www/resources/views/settings/recycle-bin/parts/recycle-bin-list-item.blade.php ENDPATH**/ ?>