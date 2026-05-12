<p class="text-warn mb-none mt-l">
    <?php echo (new \BookStack\Util\SvgIcon('warning'))->toHtml(); ?> <strong><?php echo e(trans('entities.copy_consider')); ?></strong>
</p>

<div class="grid half no-gap no-row-gap text-warn mb-m">
    <ul class="pr-s mb-none">
        <li><?php echo e(trans('entities.copy_consider_permissions')); ?></li>
        <li><?php echo e(trans('entities.copy_consider_owner')); ?></li>
        <li><?php echo e(trans('entities.copy_consider_images')); ?></li>
    </ul>
    <ul class="pr-s mb-none">
        <li><?php echo e(trans('entities.copy_consider_attachments')); ?></li>
        <li><?php echo e(trans('entities.copy_consider_access')); ?></li>
    </ul>
</div><?php /**PATH /app/www/resources/views/entities/copy-considerations.blade.php ENDPATH**/ ?>