<div class="item-list-row flex-container-row items-center wrap">
    <div class="flex fit-content min-width-xxxxs px-m py-xs">
        <span class="hide-over-l"><?php echo e(trans('entities.pages_revisions_number')); ?></span>
        <?php echo e($revision->revision_number == 0 ? '' : $revision->revision_number); ?>

    </div>
    <div class="flex-2 px-m py-xs min-width-s">
        <?php echo e($revision->name); ?>

        <br>
        <small class="text-muted">(<strong class="hide-over-l"><?php echo e(trans('entities.pages_revisions_editor')); ?>: </strong><?php echo e($revision->is_markdown ? 'Markdown' : 'WYSIWYG'); ?>)</small>
    </div>
    <div class="flex-3 px-m py-xs min-width-l">
        <div class="flex-container-row items-center gap-s">
            <?php if($revision->createdBy): ?>
                <img class="avatar flex-none" height="30" width="30" src="<?php echo e($revision->createdBy->getAvatar(30)); ?>" alt="<?php echo e($revision->createdBy->name); ?>">
            <?php endif; ?>
            <div>
                <?php if($revision->createdBy): ?> <?php echo e($revision->createdBy->name); ?> <?php else: ?> <?php echo e(trans('common.deleted_user')); ?> <?php endif; ?>
                <br>
                <div class="text-muted">
                    <small><?php echo e($dates->absolute($revision->created_at)); ?></small>
                    <small>(<?php echo e($dates->relative($revision->created_at)); ?>)</small>
                </div>
            </div>
        </div>
    </div>
    <div class="flex-2 px-m py-xs min-width-m text-small">
        <?php echo e($revision->summary); ?>

    </div>
    <div class="flex-2 px-m py-xs actions text-small text-l-right min-width-l">
        <?php if(!$oldest): ?>
            <a href="<?php echo e($revision->getUrl('changes')); ?>" target="_blank" rel="noopener"><?php echo e(trans('entities.pages_revisions_changes')); ?></a>
            <span class="text-muted opacity-70">&nbsp;|&nbsp;</span>
        <?php endif; ?>


        <?php if($current): ?>
            <a target="_blank" rel="noopener" href="<?php echo e($revision->page->getUrl()); ?>"><i><?php echo e(trans('entities.pages_revisions_current')); ?></i></a>
        <?php else: ?>
            <a href="<?php echo e($revision->getUrl()); ?>" target="_blank" rel="noopener"><?php echo e(trans('entities.pages_revisions_preview')); ?></a>

            <?php if(userCan(\BookStack\Permissions\Permission::PageUpdate, $revision->page)): ?>
                <span class="text-muted opacity-70">&nbsp;|&nbsp;</span>
                <div component="dropdown" class="dropdown-container">
                    <a refs="dropdown@toggle" href="#" aria-haspopup="true" aria-expanded="false"><?php echo e(trans('entities.pages_revisions_restore')); ?></a>
                    <ul refs="dropdown@menu" class="dropdown-menu" role="menu">
                        <li class="px-m py-s"><small class="text-muted"><?php echo e(trans('entities.revision_restore_confirm')); ?></small></li>
                        <li>
                            <form action="<?php echo e($revision->getUrl('/restore')); ?>" method="POST">
                                <?php echo csrf_field(); ?>

                                <input type="hidden" name="_method" value="PUT">
                                <button type="submit" class="text-link icon-item">
                                    <?php echo (new \BookStack\Util\SvgIcon('history'))->toHtml(); ?>
                                    <div><?php echo e(trans('entities.pages_revisions_restore')); ?></div>
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
            <?php endif; ?>

            <?php if(userCan(\BookStack\Permissions\Permission::PageDelete, $revision->page)): ?>
                <span class="text-muted opacity-70">&nbsp;|&nbsp;</span>
                <div component="dropdown" class="dropdown-container">
                    <a refs="dropdown@toggle" href="#" aria-haspopup="true" aria-expanded="false"><?php echo e(trans('common.delete')); ?></a>
                    <ul refs="dropdown@menu" class="dropdown-menu" role="menu">
                        <li class="px-m py-s"><small class="text-muted"><?php echo e(trans('entities.revision_delete_confirm')); ?></small></li>
                        <li>
                            <form action="<?php echo e($revision->getUrl('/delete/')); ?>" method="POST">
                                <?php echo csrf_field(); ?>

                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="text-neg icon-item">
                                    <?php echo (new \BookStack\Util\SvgIcon('delete'))->toHtml(); ?>
                                    <div><?php echo e(trans('common.delete')); ?></div>
                                </button>
                            </form>
                        </li>
                    </ul>
                </div>
            <?php endif; ?>
        <?php endif; ?>
    </div>
</div><?php /**PATH /app/www/resources/views/pages/parts/revisions-index-row.blade.php ENDPATH**/ ?>