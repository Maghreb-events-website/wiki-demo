<a href="#" class="flex-container-row items-center dropdown-search-item" data-id="">
    <span><?php echo e(trans('settings.users_none_selected')); ?></span>
</a>
<?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <a href="#" class="flex-container-row items-center dropdown-search-item" data-id="<?php echo e($user->id); ?>">
        <img class="avatar mr-m" src="<?php echo e($user->getAvatar(30)); ?>" alt="<?php echo e($user->name); ?>">
        <span><?php echo e($user->name); ?></span>
    </a>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?><?php /**PATH /app/www/resources/views/form/user-select-list.blade.php ENDPATH**/ ?>