<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
  <?php echo $analytic; ?>
  <?php } ?>
</head>
<body class="<?php echo $class; ?>">
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="header__logo">
	                <?php if ($logo) { ?>
                        <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
	                <?php } ?>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="header__content">
                    <div class="row">
                        <div class="col-sm-8">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="header__content__menu">
                                        <ul class="list-inline">
                                            <li><a href="./index.php?route=information/information&information_id=4">О нас</a></li>
                                            <li><a href="./index.php?route=information/information&information_id=3">Оплата</a></li>
                                            <li><a href="./index.php?route=information/information&information_id=6">Доставка</a></li>
                                            <li><a href="<?php echo $contact; ?>">Контакты</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="header__content__search"><?php echo $search; ?></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="row">
                                <div class="col-sm-10">
                                    <div class="header__content__tell">
                                        <div class="header__content__tell__phone header__content__tell__phone__life">
                                            <a href="tel:<?php echo str_replace('-','',$telephone1); ?>"><?php echo $telephone1; ?></a>
                                        </div>
                                        <div class="header__content__tell__phone header__content__tell__phone__kievstar">
                                            <a href="tel:<?php echo str_replace('-','',$telephone2); ?>"><?php echo $telephone2; ?></a>
                                        </div>
                                        <div class="header__content__tell__phone header__content__tell__phone__vodafon">
                                            <a href="tel:<?php echo str_replace('-','',$telephone3); ?>"><?php echo $telephone3; ?></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-2"> <?php $cart; ?>
                                    <div class="header__content__cart">
                                        <span class="header__content__cart_count">0</span>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="header__content__callback">
                                        <div data-toggle="modal" data-target="#myModal" class="header__content__callback__btn">Заказать обратный звонок</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php if ($categories) { ?>
<div class="container">
    <div class="row">
    <div class="col-sm-10 col-sm-offset-1">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
    </div>
    </div>
</div>
<?php } ?>
<div class="container">
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Заказать обратный звонок</h4>
        </div>
        <div class="modal-body">
          <form action="./index.php?route=information/phone" method="post">
            <input type="text" name="name" placeholder="Имя" required><br>
            <p></p>
            <input type="tel" name="phone" placeholder="Телефон" required><br>
            <p></p>
            <textarea type="text" name="subject" rows="4" cols="50" ></textarea>
            <p></p>
            <input type="submit" value="Заказать">
          </form>
        </div>
      </div>
    </div>
  </div>

</div>
</body>
