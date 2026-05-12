<?php $__env->startSection('body'); ?>

    <div class="container small">

        <div class="my-s">
            <?php echo $__themeViews->handleViewInclude('entities.breadcrumbs', ['crumbs' => [
                $book,
                $book->getUrl('/copy') => [
                    'text' => trans('entities.books_copy'),
                    'icon' => 'copy',
                ]
            ]], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
        </div>

        <div class="card content-wrap auto-height">

            <h1 class="list-heading"><?php echo e(trans('entities.books_copy')); ?></h1>

            <form action="<?php echo e($book->getUrl('/copy')); ?>" method="POST">
                <?php echo csrf_field(); ?>


                <div class="form-group title-input">
                    <label for="name"><?php echo e(trans('common.name')); ?></label>
                    <?php echo $__themeViews->handleViewInclude('form.text', ['name' => 'name'], array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>
                </div>

                <?php echo $__themeViews->handleViewInclude('entities.copy-considerations', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1])); ?>

                <div class="form-group text-right">
                    <a href="<?php echo e($book->getUrl()); ?>" class="button outline"><?php echo e(trans('common.cancel')); ?></a>
                    <button type="submit" class="button"><?php echo e(trans('entities.books_copy')); ?></button>
                </div>
            </form>

        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.simple', array_diff_key(get_defined_vars(), ['__data' => 1, '__path' => 1]))->render(); ?><?php /**PATH /app/www/resources/views/books/copy.blade.php ENDPATH**/ ?>