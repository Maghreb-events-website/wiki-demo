<div class="grid half gap-xl">
    <div>
        <div class="setting-list-label"><?php echo e(trans('auth.mfa_option_' . $method . '_title')); ?></div>
        <p class="small">
            <?php echo e(trans('auth.mfa_option_' . $method . '_desc')); ?>

        </p>
    </div>
    <div class="pt-m">
        <?php if($userMethods->has($method)): ?>
            <div class="text-pos">
                <?php echo (new \BookStack\Util\SvgIcon('check-circle'))->toHtml(); ?>
                <?php echo e(trans('auth.mfa_setup_configured')); ?>

            </div>
            <a href="<?php echo e(url('/mfa/' . $method . '/generate')); ?>" class="button outline small"><?php echo e(trans('auth.mfa_setup_reconfigure')); ?></a>
            <div component="dropdown" class="inline relative">
                <button type="button" refs="dropdown@toggle" class="button outline small"><?php echo e(trans('common.remove')); ?></button>
                <div refs="dropdown@menu" class="dropdown-menu">
                    <p class="text-neg small px-m mb-xs"><?php echo e(trans('auth.mfa_setup_remove_confirmation')); ?></p>
                    <form action="<?php echo e(url('/mfa/' . $method . '/remove')); ?>" method="post">
                        <?php echo e(csrf_field()); ?>

                        <?php echo e(method_field('delete')); ?>

                        <button class="text-link small text-item"><?php echo e(trans('common.confirm')); ?></button>
                    </form>
                </div>
            </div>
        <?php else: ?>
            <a href="<?php echo e(url('/mfa/' . $method . '/generate')); ?>" class="button outline"><?php echo e(trans('auth.mfa_setup_action')); ?></a>
        <?php endif; ?>
    </div>
</div><?php /**PATH /app/www/resources/views/mfa/parts/setup-method-row.blade.php ENDPATH**/ ?>