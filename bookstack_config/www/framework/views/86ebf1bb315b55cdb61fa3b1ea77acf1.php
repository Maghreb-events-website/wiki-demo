<div class="setting-list-label"><?php echo e(trans('auth.mfa_option_totp_title')); ?></div>

<p class="small mb-m"><?php echo e(trans('auth.mfa_verify_totp_desc')); ?></p>

<form action="<?php echo e(url('/mfa/totp/verify')); ?>" method="post" autocomplete="off">
    <?php echo e(csrf_field()); ?>

    <input type="text"
           name="code"
           autocomplete="one-time-code"
           autofocus
           placeholder="<?php echo e(trans('auth.mfa_gen_totp_provide_code_here')); ?>"
           class="input-fill-width <?php echo e($errors->has('code') ? 'neg' : ''); ?>">
    <?php if($errors->has('code')): ?>
        <div class="text-neg text-small px-xs"><?php echo e($errors->first('code')); ?></div>
    <?php endif; ?>
    <div class="mt-s text-right">
        <button class="button"><?php echo e(trans('common.confirm')); ?></button>
    </div>
</form>
<?php /**PATH /app/www/resources/views/mfa/parts/verify-totp.blade.php ENDPATH**/ ?>