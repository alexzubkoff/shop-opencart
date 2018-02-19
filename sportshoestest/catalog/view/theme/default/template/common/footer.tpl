        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="footer__logo">
                                    <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo  $name; ?>" alt="<?php echo $name; ?>" class="img-responsive">
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="footer__block">
                                    <div class="footer__block__title">Категории</div>
                                    <ul class="list-unstyled footer__block__list">
                                    <?php foreach ($categories as $category) { ?>
                                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                    <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="footer__block">
                                    <div class="footer__block__title"><?php echo $text_information; ?></div>
                                    <ul class="list-unstyled footer__block__list">
                                        <?php foreach ($informations as $information) { ?>
                                        <li>
                                            <a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                                        </li>
                                        <?php } ?>
                                        <li>
                                            <a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="footer__block">
                                    <div class="footer__block__title"><?php echo $text_service; ?></div>
                                    <ul class="list-unstyled footer__block__list">
                                        <li><a href="tel:<?php echo str_replace('-','',$telephone1); ?>"><?php echo $telephone1; ?></a></li>
                                        <li><a href="tel:<?php echo str_replace('-','',$telephone2); ?>"><?php echo $telephone2; ?></a></li>
                                        <li>График работы:</li>
                                        <li>Пн - Пт: <?php echo $open; ?></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
