<div class="setting-list">

    <div class="grid half">
        <div>
            <label class="setting-list-label"><?php echo e(trans('settings.webhooks_details')); ?></label>
            <p class="small"><?php echo e(trans('settings.webhooks_details_desc')); ?></p>
            <div>
                <?php echo $__themeViews->handleViewInclude('form.toggle-switch', [
                    'name' => 'active',
                    'value' => old('active') ?? $model->active ?? true,
                    'label' => trans('settings.webhooks_active'),
                ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                <?php echo $__themeViews->handleViewInclude('form.errors', ['name' => 'active'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
            </div>
        </div>
        <div>
            <div class="form-group">
                <label for="name"><?php echo e(trans('settings.webhooks_name')); ?></label>
                <?php echo $__themeViews->handleViewInclude('form.text', ['name' => 'name'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
            </div>
            <div class="form-group">
                <label for="endpoint"><?php echo e(trans('settings.webhooks_endpoint')); ?></label>
                <?php echo $__themeViews->handleViewInclude('form.text', ['name' => 'endpoint'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
            </div>
            <div class="form-group">
                <label for="endpoint"><?php echo e(trans('settings.webhooks_timeout')); ?></label>
                <?php echo $__themeViews->handleViewInclude('form.number', ['name' => 'timeout', 'min' => 1, 'max' => 600], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
            </div>
        </div>
    </div>

    <div component="webhook-events">
        <label class="setting-list-label"><?php echo e(trans('settings.webhooks_events')); ?></label>
        <?php echo $__themeViews->handleViewInclude('form.errors', ['name' => 'events'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

        <p class="small"><?php echo e(trans('settings.webhooks_events_desc')); ?></p>
        <p class="text-warn small"><?php echo e(trans('settings.webhooks_events_warning')); ?></p>

        <div class="toggle-switch-list">
            <?php echo $__themeViews->handleViewInclude('form.custom-checkbox', [
                'name' => 'events[]',
                'value' => 'all',
                'label' => trans('settings.webhooks_events_all'),
                'checked' => old('events') ? in_array('all', old('events')) : (isset($webhook) ? $webhook->tracksEvent('all') : false),
            ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <hr class="my-s">

        <div class="dual-column-content toggle-switch-list">
            <?php $__currentLoopData = \BookStack\Activity\ActivityType::all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $activityType): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div>
                    <?php echo $__themeViews->handleViewInclude('form.custom-checkbox', [
                       'name' => 'events[]',
                       'value' => $activityType,
                       'label' => $activityType,
                       'checked' => old('events') ? in_array($activityType, old('events')) : (isset($webhook) ? $webhook->tracksEvent($activityType) : false),
                   ], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>

</div><?php /**PATH /app/www/resources/views/settings/webhooks/parts/form.blade.php ENDPATH**/ ?>