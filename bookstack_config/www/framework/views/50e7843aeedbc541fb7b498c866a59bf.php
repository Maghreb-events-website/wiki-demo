<div component="attachments-list">
    <?php $__currentLoopData = $attachments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $attachment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="attachment icon-list">
            <div class="split-icon-list-item attachment-<?php echo e($attachment->external ? 'link' : 'file'); ?>">
                <a href="<?php echo e($attachment->getUrl()); ?>"
                   refs="attachments-list@link-type-<?php echo e($attachment->external ? 'link' : 'file'); ?>"
                   <?php if($attachment->external): ?> target="_blank" <?php endif; ?>>
                    <div class="icon"><?php echo (new \BookStack\Util\SvgIcon($attachment->external ? 'export' : 'file'))->toHtml(); ?></div>
                    <div class="label"><?php echo e($attachment->name); ?></div>
                </a>
                <?php if(!$attachment->external): ?>
                    <div component="dropdown" class="icon-list-item-dropdown">
                        <button refs="dropdown@toggle" type="button" class="icon-list-item-dropdown-toggle"><?php echo (new \BookStack\Util\SvgIcon('caret-down'))->toHtml(); ?></button>
                        <ul refs="dropdown@menu" class="dropdown-menu" role="menu">
                            <a href="<?php echo e($attachment->getUrl(false)); ?>" class="icon-item">
                                <?php echo (new \BookStack\Util\SvgIcon('download'))->toHtml(); ?>
                                <div><?php echo e(trans('common.download')); ?></div>
                            </a>
                            <a href="<?php echo e($attachment->getUrl(true)); ?>" target="_blank" class="icon-item">
                                <?php echo (new \BookStack\Util\SvgIcon('export'))->toHtml(); ?>
                                <div><?php echo e(trans('common.open_in_tab')); ?></div>
                            </a>
                        </ul>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div><?php /**PATH /app/www/resources/views/attachments/list.blade.php ENDPATH**/ ?>