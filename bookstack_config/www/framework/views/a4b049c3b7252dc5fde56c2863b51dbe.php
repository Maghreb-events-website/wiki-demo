<div component="dropdown"
     class="dropdown-container block my-xxs">
    <a refs="dropdown@toggle"
       aria-haspopup="menu"
       aria-expanded="false"
       role="button"
       href="#"
       class="entity-meta-item my-none">
        <?php echo (new \BookStack\Util\SvgIcon(($ignoring ? 'watch-ignore' : 'watch')))->toHtml(); ?>
        <span><?php echo e($label); ?></span>
    </a>
    <form action="<?php echo e(url('/watching/update')); ?>" method="POST">
        <?php echo e(method_field('PUT')); ?>

        <?php echo e(csrf_field()); ?>

        <input type="hidden" name="type" value="<?php echo e($entity->getMorphClass()); ?>">
        <input type="hidden" name="id" value="<?php echo e($entity->id); ?>">

        <ul refs="dropdown@menu" class="dropdown-menu xl-limited anchor-left pb-none" role="menu">
            <?php $__currentLoopData = \BookStack\Activity\WatchLevels::allSuitedFor($entity); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $option => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <li>
                    <button name="level" value="<?php echo e($option); ?>" class="icon-item" role="menuitem">
                        <?php if($watchLevel === $option): ?>
                            <span class="text-pos pt-m"
                                  title="<?php echo e(trans('common.status_active')); ?>"><?php echo (new \BookStack\Util\SvgIcon('check-circle'))->toHtml(); ?></span>
                        <?php else: ?>
                            <span title="<?php echo e(trans('common.status_inactive')); ?>"></span>
                        <?php endif; ?>
                        <div class="break-text">
                            <div class="mb-xxs"><strong><?php echo e(trans('entities.watch_title_' . $option)); ?></strong></div>
                            <div class="text-muted text-small">
                                <?php if(trans()->has('entities.watch_desc_' . $option . '_' . $entity->getMorphClass())): ?>
                                    <?php echo e(trans('entities.watch_desc_' . $option . '_' . $entity->getMorphClass())); ?>

                                <?php else: ?>
                                    <?php echo e(trans('entities.watch_desc_' . $option)); ?>

                                <?php endif; ?>
                            </div>
                        </div>
                    </button>
                </li>
                <li role="presentation">
                    <hr class="my-none">
                </li>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <li>
                <a href="<?php echo e(url('/my-account/notifications')); ?>"
                   role="menuitem"
                   target="_blank"
                   class="text-item text-muted text-small break-text"><?php echo e(trans('entities.watch_change_default')); ?></a>
            </li>
        </ul>
    </form>
</div><?php /**PATH /app/www/resources/views/entities/watch-controls.blade.php ENDPATH**/ ?>