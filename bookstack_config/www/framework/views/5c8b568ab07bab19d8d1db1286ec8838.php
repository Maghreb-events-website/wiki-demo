<?php echo $__themeViews->handleViewInclude('settings.recycle-bin.parts.entity-display-item', ['entity' => $entity], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
<?php if($entity->isA('book')): ?>
    <?php $__currentLoopData = $entity->chapters()->withTrashed()->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $chapter): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php echo $__themeViews->handleViewInclude('settings.recycle-bin.parts.entity-display-item', ['entity' => $chapter], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php if($entity->isA('book') || $entity->isA('chapter')): ?>
    <?php $__currentLoopData = $entity->pages()->withTrashed()->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php echo $__themeViews->handleViewInclude('settings.recycle-bin.parts.entity-display-item', ['entity' => $page], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?><?php /**PATH /app/www/resources/views/settings/recycle-bin/parts/deletable-entity-list.blade.php ENDPATH**/ ?>