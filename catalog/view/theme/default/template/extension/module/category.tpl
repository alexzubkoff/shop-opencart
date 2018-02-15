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



