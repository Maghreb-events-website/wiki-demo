<?php $type = $entity->getType(); ?>
<div class="<?php echo e($type); ?> <?php echo e($type === 'page' && $entity->draft ? 'draft' : ''); ?> <?php echo e($classes ?? ''); ?> entity-list-item no-hover">
    <span role="presentation" class="icon text-<?php echo e($type); ?> <?php echo e($type === 'page' && $entity->draft ? 'draft' : ''); ?>"><?php echo (new \BookStack\Util\SvgIcon($type))->toHtml(); ?></span>
    <div class="content">
        <div class="entity-list-item-name break-text"><?php echo e($entity->name); ?></div>
    </div>
</div><?php /**PATH /app/www/resources/views/settings/recycle-bin/parts/entity-display-item.blade.php ENDPATH**/ ?>