<!--<?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>-->

<div class="row">
  <?php if (count($categories)%2==0) { ?>
  <?php foreach ($categories as $category) { ?>
  <div class="col-sm-6">
    <a class="img-thumbnail" style="text-decoration: none" href="<?php echo $category['href']; ?>"><img style="height: 200px; width: 350px;" src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" /></a>
  </div>
  <?php } ?>
  <?php } else { ?>
  <?php for($i = 0; $i<count($categories)-1; $i++) { ?>
  <div class="col-sm-6">
    <a class="img-thumbnail" href="<?php echo $categories[$i]['href']; ?>"><img style="height: 200px; width: 350px;" src="<?php echo $categories[$i]['thumb']; ?>" alt="<?php echo $categories[$i]['name']; ?>" title="<?php echo $categories[$i]['name']; ?>" class="img-responsive" /><?php echo $categories[$i]['name']; ?></a>
  </div>
  <?php } ?>
  <?php } ?>
</div>



