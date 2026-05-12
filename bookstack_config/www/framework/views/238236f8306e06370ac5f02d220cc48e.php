<?php if($chapter->tags->count() > 0): ?>
    <div class="mb-xl">
        <?php echo $__themeViews->handleViewInclude('entities.tag-list', ['entity' => $chapter], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
    </div>
<?php endif; ?><?php /**PATH /app/www/resources/views/chapters/parts/show-sidebar-section-tags.blade.php ENDPATH**/ ?>