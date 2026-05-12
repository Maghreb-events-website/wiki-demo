<?php $__env->startSection('content'); ?>

    <div class="container very-small mt-xl">
        <div class="card content-wrap auto-height">
            <h1 class="list-heading"><?php echo e(trans('auth.user_invite_page_welcome', ['appName' => setting('app-name')])); ?></h1>
            <p><?php echo e(trans('auth.user_invite_page_text', ['appName' => setting('app-name')])); ?></p>

            <form action="<?php echo e(url('/register/invite/' . $token)); ?>" method="POST" class="stretch-inputs">
                <?php echo csrf_field(); ?>


                <div class="form-group">
                    <label for="password"><?php echo e(trans('auth.password')); ?></label>
                    <?php echo $__themeViews->handleViewInclude('form.password', ['name' => 'password', 'placeholder' => trans('auth.password_hint')], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                </div>

                <div class="text-right">
                    <button class="button"><?php echo e(trans('auth.user_invite_page_confirm_button')); ?></button>
                </div>

            </form>

        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/auth/invite-set-password.blade.php ENDPATH**/ ?>