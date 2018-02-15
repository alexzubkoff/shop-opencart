<?php foreach ($categories as $category) { ?>
<?php if ($category['category_id'] == $category_id) { ?>
<a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
<?php if ($category['children']) { ?>
<?php foreach ($category['children'] as $child) { ?>
<?php if ($child['category_id'] == $child_id) { ?>
<a href="<?php echo $child['href']; ?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
<?php if ($child['subchildren']) { ?>
<?php foreach ($child['subchildren'] as $subchild) { ?>
<li style="padding-left: 45px;"><a href="<?php echo $subchild['href']; ?>"><img src="<?php echo $subchild['image']; ?>"><?php echo $subchild['name']; ?></a></li>
<?php } ?>
<?php } ?>
<?php } else { ?>
<a href="<?php echo $child['href']; ?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>
<?php if ($child['subchildren']) { ?>
<?php foreach ($child['subchildren'] as $subchild) { ?>
<li style="padding-left: 45px;"><a href="<?php echo $subchild['href']; ?>"><img src="<?php echo $subchild['image']; ?>"><?php echo $subchild['name']; ?></a></li>
<?php } ?>
<?php } ?>
<?php } ?>
<?php } ?>
<?php } ?>
<?php } else { ?>
<!--<a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>-->
<?php } ?>
<?php } ?>
