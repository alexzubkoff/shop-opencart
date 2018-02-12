<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
  <div class="row">
    <h1><?php echo $aboutustitle; ?></h1>
    <p><?php echo $aboutustext; ?></p>
    <a href="./index.php?route=information/information&information_id=4" type="button" class="btn btn-default">Подробнее о нас</a>
  </div>
</div>
<?php echo $footer; ?>
