<?php

namespace ChurchCRM\view; //this file, as well as style.css in this folder, are an experiment to generate dynamic, scrolling navbars
                            //uses some fresh code and some repurposed functions from other pages
use ChurchCRM\Config\Menu\Menu;
use ChurchCRM\Config\Menu\MenuItem;
use ChurchCRM\view\MenuRenderer;

class TestMenu {
    private static function renderMenuItem(MenuItem $menuItem)
    {
        ?>
        <li <?= $menuItem->isActive()? "class='active'" : ""?>>
            <a href="<?= $menuItem->getURI() ?>" <?= $menuItem->isExternal() ? "target='_blank'" : "" ?>>
                <i class='fa <?= $menuItem->getIcon() ?>'></i>
                <span>
                    <?= $menuItem->getName() ?>
                    <?php self::renderMenuCounters($menuItem) ?>
                </span>
            </a> 
        </li>
        <?php
    }

    private static function renderSubMenuItem(MenuItem $menuItem)
    {
        ?>
        <li class="treeview <?= $menuItem->openMenu()? "menu-open active" : "" ?>">
            <a href="#"> <!-- add link to landpage here on button click. idk how to do it dynamically-->
                <i class="fa <?= $menuItem->getIcon() ?>"></i>
                <span>
                    <?= $menuItem->getName() ?>
                    <?php self::renderMenuCounters($menuItem) ?>
                </span>
               <!-- <i class="fa fa-angle-left pull-right"></i> commented to hide the dropdown arrow-->
            </a>
         <ul class="treeview-menu">
           <?php foreach ($menuItem->getSubItems() as $menuSubItem) {
                    if ($menuSubItem->isVisible()) {
                    if ($menuSubItem->isMenu()) {
                        self::renderSubMenuItem($menuSubItem);
                    } else {
                        self::renderMenuItem($menuSubItem);
                    }
                } 
            } ?> 
            </ul>
        </li>
}

<!DOCTYPE html>
    <html>
    <head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1"></head>
        <body>
            <link href="./style.css" rel="stylesheet" type="text/css">   
            <nav id="menu-container" class="arrow">
                <div id="btn-nav-previous">&lt;</div>
                <div id="btn-nav-next">&gt;</div>  
                    <div class="menu-inner-box">
                        <div class="menu">
                        <?php foreach ($menuItem->getSubItems() as $menuSubItem) {
                    if ($menuSubItem->isVisible()) {
                    if ($menuSubItem->isMenu()) {
                        self::renderSubMenuItem($menuSubItem);
                    } else {
                        self::renderMenuItem($menuSubItem);
                    }
                } 
            } ?>
                        </div>
                    </div>        
            </nav>
        <script src="./jquery-3.2.1.min.js"></script>
        <script>
            $('#btn-nav-previous').click(function(){
                $(".menu-inner-box").animate({scrollLeft: "-=100px"});
            });
            
            $('#btn-nav-next').click(function(){
                $(".menu-inner-box").animate({scrollLeft: "+=100px"});
            });
        </script>
        </body>
</html>

