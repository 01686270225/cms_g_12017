<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">


<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div class="type-7000">
            <div class="m-splash-screen-progress-wrapper">
                <img src="<?php echo $url_path ?>/assets/images/logo-dark.svg" alt="reponsive-img" class="attachment-full size-full">
                <div class="m-splash-screen-progress"></div>
            </div>
        </div>

        <div  class='type-7001'>
            <header>
                <!---NAVIGATOR-->
                <div class="m1-navi-boder">
                    <div class="m1-navi">
                        <div class="m1-navi-logo">
                            <a href="#">Délicious</a>
                        </div>
                        <div class="m1-navi-menus">
                            <ul>
                                <li>
                                    <a href="#" class="m1-navi-menus-Activity">Homes</a>
                                    <ul class="m1-navi-menus-subMenu">
                                        <li><a href="#">Gourmet</a></li>
                                        <li><a href="#">Coffee</a></li>
                                        <li><a href="#">Sushi</a></li>
                                    </ul>

                                </li>
                                <li>
                                    <a href="#">About</a>
                                    <ul class="m1-navi-menus-subMenu">
                                        <li><a href="#">People</a></li>
                                        <li><a href="#">Guestbook</a></li>
                                        <li><a href="#">FAQ</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Menu</a>
                                    <ul class="m1-navi-menus-subMenu">
                                        <li><a href="#">Expressive</a></li>
                                        <li><a href="#">Handsome</a></li>
                                        <li><a href="#">Classic</a></li>
                                        <li><a href="#">Gallery</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Reservation</a></li>
                                <li>
                                    <a href="#">Gallery</a>
                                    <ul class="m1-navi-menus-subMenu">
                                        <li><a href="#">Restaurant</a></li>
                                        <li><a href="#">Coffee Shop</a></li>
                                        <li><a href="#">Sushi Bar</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Blog</a>
                                    <ul class="m1-navi-menus-subMenu">
                                        <li><a href="#">Healthy Food</a></li>
                                        <li><a href="#">Recipes</a></li>
                                        <li><a href="#">Cooking</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Features</a>
                                    <ul class="m1-navi-menus-subMenu">
                                        <li><a href="#">Why Buy?</a></li>
                                        <li><a href="#">Theme Options</a></li>
                                        <li><a href="#">Coming Soon</a></li>
                                        <li>
                                            <a>Blog post</a>
                                            <ul class="m1-navi-menus-subMenu-1">
                                                <li><a href="#">No Sidebar</a></li>
                                                <li><a href="#">Left Sidebar</a></li>
                                                <li><a href="#">Right Sidebar</a></li>
                                                <li><a href="#">Left &amp; Right Sidebar</a></li>
                                                <li><a href="#">Top Widgets</a></li> 
                                            </ul>
                                        </li>
                                        <li><a href="#">Icons</a></li>
                                    </ul>
                                </li>
                                <li><a href="#">Shop</a></li>
                                <li><a href="#">Contact</a></li>

                            </ul>
                        </div>
                        <div class="m1-navi-icon">
                            <div class="m1-navi-icon-cart">
                                <a class="m1-navi-cart-icon" href="#">
                                    <span class="icon"></span>
                                    <span class="products cart-empty">0</span>
                                </a>
                                <div class="m1-widget_shopping_cart">
                                    <ul class="m1-cart_list">
                                        <li class="empty">No products in the cart.</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="m1-navi-icon-search">
                                <i class="fa fa-search"></i>
                            </div>
                            <div class="m1-navi-icon-mobile-btn">
                                <i class="fa fa-reorder"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <!--SLIDE SHOW-->
                <div class="m1-banner">
                    <ul>
                        <li>
                            <div class="m1-banner-img">

                            </div>
                        </li> 
                    </ul>
                    <div class="m1-banner-caption">
                        <div class="m1-banner-caption-layer layer-0">Coffee</div>
                        <div class="m1-banner-caption-layer layer-1">Matters</div>
                        <div class="m1-banner-caption-layer layer-2">~ Since 1987 ~</div>
                    </div>
                </div>
            </header> 
            <div id="vamtam-overlay-search" class="vamtam-animated vamtam-fadein">
                <button id="vamtam-overlay-search-close" style="display: block; animation-duration: 300ms;" class="vamtam-animated vamtam-zoomin">
                    <span class="icon shortcode theme  use-hover" style=""></span>
                </button>
                <form action="https://vip-restaurant.vamtam.com/" class="searchform vamtam-animated vamtam-zoomin" method="get" role="search" novalidate="" style="display: block; animation-duration: 300ms;">
                    <input type="search" required="required" placeholder="Search..." name="s" value="">
                </form>
            </div>
        </div>