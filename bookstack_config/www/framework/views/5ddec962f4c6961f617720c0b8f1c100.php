<div class="entity-list <?php echo e($style ?? ''); ?>">
    <?php if(count($entities) > 0): ?>
        <?php $__currentLoopData = $entities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $entity): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php echo $__themeViews->handleViewInclude('entities.list-item-basic', ['entity' => $entity], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php else: ?>
        <p class="text-muted empty-text">
            <?php echo e($emptyText ?? trans('common.no_items')); ?>

        </p>
    <?php endif; ?>
</div><?php /**PATH /app/www/resources/views/entities/list-basic.blade.php ENDPATH**/ ?>