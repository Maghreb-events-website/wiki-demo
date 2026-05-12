<?php $__env->startSection('body'); ?>

    <div class="container very-small py-xl">
        <div class="card content-wrap auto-height">
            <h1 class="list-heading"><?php echo e(trans('auth.mfa_gen_totp_title')); ?></h1>
            <p><?php echo e(trans('auth.mfa_gen_totp_desc')); ?></p>
            <p><?php echo e(trans('auth.mfa_gen_totp_scan')); ?></p>

            <div class="text-center">
                <div class="block inline">
                    <?php echo $svg; ?>

                </div>
                <div class="code-base small text-muted px-s py-xs my-xs" style="overflow-x: scroll; white-space: nowrap;">
                    <?php echo e($url); ?>

                </div>
            </div>

            <h2 class="list-heading"><?php echo e(trans('auth.mfa_gen_totp_verify_setup')); ?></h2>
            <p id="totp-verify-input-details" class="mb-s"><?php echo e(trans('auth.mfa_gen_totp_verify_setup_desc')); ?></p>
            <form action="<?php echo e(url('/mfa/totp/confirm')); ?>" method="POST">
                <?php echo e(csrf_field()); ?>

                <input type="text"
                       name="code"
                       aria-labelledby="totp-verify-input-details"
                       placeholder="<?php echo e(trans('auth.mfa_gen_totp_provide_code_here')); ?>"
                       class="input-fill-width <?php echo e($errors->has('code') ? 'neg' : ''); ?>">
                <?php if($errors->has('code')): ?>
                    <div class="text-neg text-small px-xs"><?php echo e($errors->first('code')); ?></div>
                <?php endif; ?>
                <div class="mt-s text-right">
                    <a href="<?php echo e(url('/mfa/setup')); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                    <button class="button"><?php echo e(trans('auth.mfa_gen_confirm_and_enable')); ?></button>
                </div>
            </form>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/mfa/totp-generate.blade.php ENDPATH**/ ?>