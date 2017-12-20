<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */
get_header();

$url_host = 'http://' . $_SERVER['HTTP_HOST'];
$pattern_document_root = addcslashes(realpath($_SERVER['DOCUMENT_ROOT']), '\\');
$pattern_uri = '/' . $pattern_document_root . '(.*)$/';

preg_match_all($pattern_uri, __DIR__, $matches);
$url_path = $url_host . $matches[1][0];
$url_path = str_replace('\\', '/', $url_path);

?>

<div class="type-7002">
            <div class="container">
                <div class="m2">
                    <div class="m2-container">
                        <div class="m2-grip">
                            <div class="m2-grip-paralax">
                                <div class="m2-grip-background"></div>
                            </div>
                            <div class="m2-grip-content">
                                <div class="m2-grip-content-1 col-md-4 col-sm-4">
                                    <div class="m2-grip-content-1-left col-md-10">
                                        <h4>Tools</h4>
                                        <p>“Professional chefs rely on a battery of tools and equipment. Chefs must be conscious of their kitchen tools when planning a menu and understand their use and production capacity.”</p>
                                    </div>
                                </div>
                                <div class="m2-grip-content-2 col-md-4 col-sm-4">
                                    <img src="<?php echo $url_path ?>/assets/images/coffee-img-1.png" alt="repoonsive-img">
                                    <h3>Welcome</h3>
                                    <p>“First and foremost I am a chef, whether behind the stove at one of my Northern California restaurants or for the past 15 years in front of the camera on my Food Network cooking shows. Creating new dishes and flavor combinations that bring cooks and our restaurant guests pleasure is my job and I love it.”</p>
                                </div>
                                <div class="m2-grip-content-1 m2-grip-content-3 col-md-4 col-sm-4">
                                    <div class="m2-grip-content-1-left col-md-10">
                                        <h4>Food</h4>
                                        <p>“Creating new dishes and flavor combinations that bring cooks and our restaurant guests pleasure is my job and I love it.”</p>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                </div>    
            </div>
        </div>

        <div class="type-7003">
            <!--banner-->
            <div class="m3">
                <div class="m3-container">
                    <div class="m3-content">
                        <div class="col-xs-12 col-sm-2 col-md-2  m3-content-left"></div>
                        <!--Brunch -->
                        <div class="col-xs-12 col-sm-4 col-md-4 m3-content-menu">
                            <span class="m3-content-menu-icon"></span>
                            <h3>Brunch</h3>
                            <h5>Today Specials</h5>
                            <div class="m3-content-menu-food">
                                <h3>Cashew Chicken With Stir-Fry Vegetables &amp; Green Salad<span class="price">$22</span></h3>
                                <div class="m3-content-menu-food-description">Cashew Chicken With Stir-Fry Vegetables served with green salad, sprouts and stewed mushrooms.</div>
                            </div>
                            <div class="m3-content-menu-food">
                                <h3>Optic Big Breakfast Combo Menu<span class="price">$20</span></h3>
                                <div class="m3-content-menu-food-description"></div>
                            </div>
                            <div class="m3-content-menu-food">
                                <h3>Coffee and Pain au chocolat (Chocolate croissant) Combo Menu
                                    <span class="price">$11</span></h3>
                                <div class="m3-content-menu-food-description">Hot coffee in the company of Beautiful homemade croissants, each containing a bar of high-quality dark chocolate, make for ...</div>
                            </div>
                        </div>
                        <!--Happy  hour-->
                        <div class="col-xs-12 col-sm-4 col-md-4 m3-content-event">
                            <span class="m3-content-event-icon"></span>
                            <h3>Happy hour</h3>
                            <h5>Starts at 3pm</h5>
                            <p>The restaurant will open at 3pm for happy hour and dinner service starting at 5pm. We will continue to offer brunch on weekends from 10am-3pm with bottomless mimosas. We will also continue with our late night lounge on Friday and Saturdays until 2am.</p>
                            <h4>+359 562 958</h4>
                            <h6>30 minute guarantee!</h6>
                            <p class="m3-content-event-btn">
                                <a href="#">
                                    <span class="span-hover">Book a table!</span>
                                </a>
                            </p>
                        </div>

                        <div class="col-xs-12 col-sm-2 col-md-2 m3-content-right"></div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="m3-parallax">
                        <div class="m3-background"> </div>
                    </div>
                </div>
            </div>    

        </div> 

        <div class="type-7004">
            <div class="module-4_1">
                <div class="container">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <div class="row">
                            <div class="lavender-grid">
                                <div class="menu-center">
                                    <div class="sep-before"> 
                                        <div class="sep-line"></div>
                                    </div>
                                    <div class="content">
                                        <h2 class="text-divider-double">
                                            We offer
                                        </h2>
                                        <div class="text-divider-subtitle">Today Specials</div>
                                    </div>
                                    <div class="sep-after">
                                        <div class="sep-line"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="type-7004_2">
                        <div class="row">
                            <div class="m4-services">
                                <div class="col-lg-3 col-md-3 col-sm-6 content1">
                                    <div class="m4-limit">
                                        <div class="m4-limit-thumbnail">
                                            <a href="/" title="Coffee &amp; Tea" class="has-border">
                                                <img src="<?php echo $url_path ?>/assets/images/anh1.jpg " alt="reponsive-img" class="attachment-full size-full">  </a>
                                        </div>
                                        <h4 class="m4-limit-services-title">
                                            <a href="/" title="Child Friendly">Coffee & Tea</a>
                                        </h4>
                                        <div class="m4-services-content">
                                            <p>Its delicious smooth blend and various varieties seductively charm you at the start of your day.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                            <div class="m4-services">
                                <div class="col-lg-3 col-md-3 col-sm-6 content1">
                                    <div class="m4-limit">
                                        <div class="m4-limit-thumbnail">
                                            <a href="/" title="Coffee &amp; Tea" class="has-border">
                                                <img src="<?php echo $url_path ?>/assets/images/anh2.jpg" alt="reponsive-img" class="attachment-full size-full"> </a>
                                        </div>
                                        <h4 class="m4-limit-services-title">
                                            <a href="/" title="Child Friendly">Bakery & Sweets</a>
                                        </h4>
                                        <div class="m4-services-content">
                                            <p>These desserts aren’t simply favorites of ours; they also help define, in their own way…</p>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                            <div class="m4-services">
                                <div class=" col-lg-3  col-md-3 col-sm-6 content1">
                                    <div class="m4-limit">
                                        <div class="m4-limit-thumbnail">
                                            <a href="/" title="Coffee &amp; Tea" class="has-border">
                                                <img src="<?php echo $url_path ?>/assets/images/anh3.jpg" alt="reponsive-img"  class="attachment-full size-full"> </a>
                                        </div>
                                        <h4 class="m4-limit-services-title">
                                            <a href="/" title="Child Friendly">Lunch Menu</a>
                                        </h4>
                                        <div class="m4-services-content">

                                            <p>We make our lunches and dinners with the finest ingredients we can find to make our meals as flavorful as possible.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                            <div class="m4-services">
                                <div class=" col-lg-3  col-md-3 col-sm-6 content1">
                                    <div class="m4-limit">
                                        <div class="m4-limit-thumbnail">
                                            <a href="/" title="Coffee &amp; Tea" class="has-border">
                                                <img src="<?php echo $url_path ?>/assets/images/anh4.jpg" alt="reponsive-img" class="attachment-full size-full"> </a>
                                        </div>
                                        <h4 class="m4-limit-services-title">
                                            <a href="/" title="Child Friendly">Work Spots</a>
                                        </h4>
                                        <div class="m4-services-content">
                                            <p>Coffice in Stockholm is a great place to work from. Food options beyond pastries. Free WiFi.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>   
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="type-7005">
            <!--Tea-->
            <div class="m5">
                <div class="m5-parallax"></div>
                <div class="m5-container">
                    <div class="m5-content">
                        <div class="m5-content-line-left">
                            <div class="m5-content-line"></div>
                        </div>
                        <div class="m5-content-text">
                            <h2>
                                Tea
                            </h2>
                            <div class="m5-content-text-subtitle">Today Specials</div>                            
                        </div>
                        <div class="m5-content-line-right"><div class="m5-content-line"></div></div>
                    </div> 
                </div>
            </div>    

        </div> 
<script src="<?php echo $url_path ?>/assets/js/script_swiper.js"></script>
        <div class="type-7006">
            <div class="container">
                <div class="col-md-4">
                    <div class="row ">
                        <div class="anhcafe">
                            <img src="<?php echo $url_path ?>/assets/images/anh1.jpg" alt="anh1">
                        </div>
                    </div>
                </div>  
                <div class="col-md-4">
                    <div class="row">
                        <div class="M6-grid-1-2">
                            <p><span class="icon shortcode theme  use-hover" style="color:#cb7152;font-size:50px !important;"><i class="fa fa-coffee" aria-hidden="true"></i></span>
                            </p>
                            <h2>Buddha:<br>
                                How to drink tea?</h2>
                            <p> The types of tea are white tea, green tea, yellow tea, oolong tea, black tea, and pu-erh tea. “When you have the title ‘white tea’ or ‘green tea’, you’re actually describing the process by which it has been made,” Woollard says.                   </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="M7">
                        <div class='row'>
                            <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                                <!-- Bottom Carousel Indicators -->
                                <!-- Carousel Slides / Quotes -->
                                <div class="carousel-inner">        
                                    <!-- Quote 1 -->
                                    <div class="item active">
                                        <blockquote>
                                            <div class="row"> 
                                                <div class="swiper-container">
                                                    <div class="swiper-wrapper">
                                                        <div class="swiper-slide"><img src="<?php echo $url_path ?>/assets/images/anh6.jpg" alt="anh6" style="width: 250px !important;"></div>
                                                        <div class="swiper-slide"><img src="<?php echo $url_path ?>/assets/images/anh7.jpg" alt="anh7"></div>
                                                        <div class="swiper-slide"><img src="<?php echo $url_path ?>/assets/images/anh8.jpg" alt="anh8"></div>
                                                    </div>
                                                    <!-- Add Arrows -->
                                                    <div class="swiper-button-next"></div>
                                                    <div class="swiper-button-prev"></div>
                                                </div>

                                                <div class="addtocart">
                                                    <a href="#">Add to Cart</a>
                                                </div>
                                                <div class="home-chef">
                                                    <h5>Home Chef</h5>
                                                    <span class="tagged">
                                                        <a href="#">BREAKFAST</a>
                                                        <a href="#">CAPPUCCINO</a>
                                                        <a href="#">COFFEE</a>
                                                        <br>
                                                        <a href="#" style="font-size: 16px;">Mix of Croissants Breakfast</a>
                                                        <br>
                                                        <span class="price">£5.00</span>
                                                    </span>
                                                </div>
                                            </div>
                                        </blockquote>
                                    </div>  
                                </div>
                            </div>                          

                        </div>

                    </div>

                </div>
            </div>

            <div class="anhdau">
                <div class="container">
                    <div class="row">
                        <p>
                            <img src="<?php echo $url_path ?>/assets/images/anh9.jpg" alt="anh9">
                        </p>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="type-7007">
            <div class="container">
                <div class="row type-7007-tabs-all">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#all" data-toggle="tab">All<span>8</span></a></li>
                            <li><a href="#coffee" data-toggle="tab">Coffee Shop<span>4</span></a></li>
                            <li><a href="#gourmet" data-toggle="tab">Gourmet<span>3</span></a></li>
                            <li><a href="#recipes" data-toggle="tab">Recipes<span>4</span></a></li>
                        </ul>   
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="all">
                            <div class="col-lg-3 col-md-3 col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/1.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/2.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/3.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/4.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/5.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/6.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/7.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/8.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                        </div>
                        <div class="tab-pane" id="coffee">
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/3.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/4.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/7.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>assets/images/8.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>


                        </div>
                        <div class="tab-pane" id="gourmet">
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/2.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/3.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3  col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/4.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>

                        </div>
                        <div class="tab-pane" id="recipes">
                            <div class="col-lg-3 col-md-3 col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/1.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/4.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/5.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 tab-content-pic">
                                <img src="<?php echo $url_path ?>/assets/images/7.jpg" alt="repinsove-img">
                                <span>
                                    <a>Jamie Oliver: Try Something New</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="type-7019">
            <!--banner-->
            <div class="m3-container">
                <div class="m3-content">
                    <!--Menu -->
                    <div class="col-xs-12 col-sm-12 col-md-12 m3-content-menu">
                        <span class="m3-content-menu-icon"></span>
                        <h3>Menu</h3>
                        <h5>Today Specials</h5>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4 m3-content-menu">
                        <!--Breakfast -->
                        <div class="m3-content-menu-food">
                            <h2>Breakfast</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Antioxidant Fruits Mix<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry banana pancakes<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Banana, almond milk, vanilla, cinnamon, blueberry topping</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Fig and lemon cake
                                <span class="price">$7</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Pain au chocolat
                                <span class="price">$4</span></h3>
                            <div class="m3-content-menu-food-description">Beautiful homemade croissants, each containing a bar of high-quality dark chocolate, make for an impressive and indulgent addition to ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Sun-Dried Tomato Bruschetta
                                <span class="price">$7</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Traditional pancakes with maple syrup butter & berry jam
                                <span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Milk, eggs, strawberries, butter, maple syrup</div>
                        </div>

                        <!--Brunch -->
                        <div class="m3-content-menu-food">
                            <h2>Brunch</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>American Brunch Combo Menu<span class="price">$15</span></h3>
                            <div class="m3-content-menu-food-description">Freshly scrambled eggs with applewood smoked bacon, tomatoes, green onions and cheddar cheese.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry banana pancakes<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Banana, almond milk, vanilla, cinnamon, blueberry topping</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Cashew Chicken With Stir-Fry Vegetables &amp; Green Salad<span class="price">$22</span></h3>
                            <div class="m3-content-menu-food-description">Cashew Chicken With Stir-Fry Vegetables served with green salad, sprouts and stewed mushrooms.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Coffee and Pain au chocolat (Chocolate croissant) Combo Menu
                                <span class="price">$11</span></h3>
                            <div class="m3-content-menu-food-description">Hot coffee in the company of Beautiful homemade croissants, each containing a bar of high-quality dark chocolate, make for ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Optic Big Breakfast Combo Menu<span class="price">$20</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Optic Big Salad Combo<span class="price">$20</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Pain au chocolat<span class="price">$4</span></h3>
                            <div class="m3-content-menu-food-description">Beautiful homemade croissants, each containing a bar of high-quality dark chocolate, make for an impressive and indulgent addition to ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Salad With Vegetables<span class="price">$22</span></h3>
                            <div class="m3-content-menu-food-description">Cashew Chicken With Stir-Fry Vegetables served with green salad, sprouts and stewed mushrooms.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Traditional pancakes with maple syrup butter &amp; berry jam<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Milk, eggs, strawberries, butter, maple syrup</div>
                        </div>

                    </div>


                    <div class="col-xs-12 col-sm-12 col-md-4 m3-content-menu">
                        <!--Dinner - 1 -->
                        <div class="m3-content-menu-food">
                            <h2>Dinner</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder Grilled Chinook Salmon<span class="price">$33</span></h3>
                            <div class="m3-content-menu-food-description">Candied salmon, basil potato puree, baby kale marsala eggplant confit & balsamic butter sauce.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder grilled seafood paella<span class="price">$37</span></h3>
                            <div class="m3-content-menu-food-description">Shell-on king prawns, monkfish, onion, paella rice, garlic, smoked paprika, cayenne pepper (optional), saffron, tomatoes, mussels, peas, broad beans, ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Asian chicken & vegetable stir fry
                                <span class="price">$41</span></h3>
                            <div class="m3-content-menu-food-description">Chicken breast, cornstarch, soy sauce, garlic, minced, potatoes, onion, bell pepper, carrot, green beans (aka Baguio beans)</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Creamy smoked salmon, leek & potato soup
                                <span class="price">$9.50</span></h3>
                            <div class="m3-content-menu-food-description">Served in deep bowls with smoked salmon and snipped chives on the top.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Head on prawns, manila clams & mussels
                                <span class="price">$39</span></h3>
                            <div class="m3-content-menu-food-description">These small shellfish have a sweet flavour and a firm texture.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Lamb Chops Sizzled with Garlic
                                <span class="price">$45</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Salad With Vegetables
                                <span class="price">$22</span></h3>
                            <div class="m3-content-menu-food-description">Cashew Chicken With Stir-Fry Vegetables served with green salad, sprouts and stewed mushrooms.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Smoked Paprika Hummus
                                <span class="price">$19</span></h3>
                            <div class="m3-content-menu-food-description">Optional garnishes: roasted red bell peppers, roasted garlic, lemon slices, olives, mint or parsley sprigs</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Spicy Vegan Potato Curry
                                <span class="price">$28</span></h3>
                            <div class="m3-content-menu-food-description">Onion, garlic, turmeric, cumin, coriander, tomato, potato, carrot, red pepper, chili, coconut milk.</div>
                        </div>


                        <!--Lunch -->
                        <div class="m3-content-menu-food">
                            <h2>Lunch</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder Grilled Chinook Salmon<span class="price">$33</span></h3>
                            <div class="m3-content-menu-food-description">Candied salmon, basil potato puree, baby kale marsala eggplant confit & balsamic butter sauce.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Alder grilled seafood paella<span class="price">$37</span></h3>
                            <div class="m3-content-menu-food-description">Shell-on king prawns, monkfish, onion, paella rice, garlic, smoked paprika, cayenne pepper (optional), saffron, tomatoes, mussels, peas, broad beans, ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Asian chicken & vegetable stir fry
                                <span class="price">$41</span></h3>
                            <div class="m3-content-menu-food-description">Chicken breast, cornstarch, soy sauce, garlic, minced, potatoes, onion, bell pepper, carrot, green beans (aka Baguio beans)</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Creamy smoked salmon, leek &amp; potato soup
                                <span class="price">$9.50</span></h3>
                            <div class="m3-content-menu-food-description">Served in deep bowls with smoked salmon and snipped chives on the top.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Head on prawns, manila clams & mussels
                                <span class="price">$39</span></h3>
                            <div class="m3-content-menu-food-description">These small shellfish have a sweet flavour and a firm texture.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Lamb Chops Sizzled with Garlic
                                <span class="price">$45</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Smoked Paprika Hummus
                                <span class="price">$19</span></h3>
                            <div class="m3-content-menu-food-description">Optional garnishes: roasted red bell peppers, roasted garlic, lemon slices, olives, mint or parsley sprigs</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Spicy Vegan Potato Curry
                                <span class="price">$28</span></h3>
                            <div class="m3-content-menu-food-description">Onion, garlic, turmeric, cumin, coriander, tomato, potato, carrot, red pepper, chili, coconut milk.</div>
                        </div>

                    </div>



                    <div class="col-xs-12 col-sm-12 col-md-4 m3-content-menu">
                        <!--Dessert -->
                        <div class="m3-content-menu-food">
                            <h2>Dessert</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Antioxidant Fruits Mix<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Berries and creme tart
                                <span class="price">$7</span></h3>
                            <div class="m3-content-menu-food-description">Butter crust, vanilla pudding with heavy cream, topping with fresh raspberries, blueberries, cranberry.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry banana pancakes<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Banana, almond milk, vanilla, cinnamon, blueberry topping</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Blueberry Sweet Rolls with Lemon Glaze<span class="price">$7</span></h3>
                            <div class="m3-content-menu-food-description">Butter, blueberries, lemon, heavy cream - an irresistible sweet-sour combination of tastes.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Chocolate Cherry Cake with Meringue Butter Cream<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description">Vanilla, milk, dark chocolate, cherries, eggs, butter</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Classic Blueberry Pie<span class="price">$6</span></h3>
                            <div class="m3-content-menu-food-description">Pastry, cinnamon, blueberries, lemon juice</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Creamy mascarpone cake with passion fruit sauce<span class="price">$8</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Fig and lemon cake<span class="price">$7</span></h3>
                            <div class="m3-content-menu-food-description"></div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Traditional pancakes with maple syrup butter &amp; berry jam<span class="price">$5</span></h3>
                            <div class="m3-content-menu-food-description">Milk, eggs, strawberries, butter, maple syrup</div>
                        </div>

                        <!--Drinks -->
                        <div class="m3-content-menu-food">
                            <h2>Drinks</h2>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Aperol Spritz<span class="price">$7.90</span></h3>
                            <div class="m3-content-menu-food-description">Ice and slice of orange, prosecco, aperol, soda</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Caffe Latte<span class="price">$5.90</span></h3>
                            <div class="m3-content-menu-food-description">A Latte is a coffee drink made with espresso and steamed milk.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Caffè macchiato
                                <span class="price">$5.90</span></h3>
                            <div class="m3-content-menu-food-description">An espresso coffee drink with a small amount of milk, usually foamed.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Campari
                                <span class="price">$6.90</span></h3>
                            <div class="m3-content-menu-food-description">Campari's bracing bitterness and lush grapefruit notes are refreshing when mixed simply with soda, drunk before dinner to awaken ...</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Cappuccino
                                <span class="price">$5.90</span></h3>
                            <div class="m3-content-menu-food-description">A cappuccino is an Italian coffee drink that is traditionally prepared with espresso, hot milk, and steamed milk foam.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Stoneburn Pinot Noir 2013, Marlborough, New Zealand
                                <span class="price">$13.90</span></h3>
                            <div class="m3-content-menu-food-description">Wonderful flavours of soft plums and raspberry, it has the depth and body to satisfy any Pinot Noir lover.</div>
                        </div>
                        <div class="m3-content-menu-food">
                            <h3>Tormentoso Bush Vine Pintoage
                                <span class="price">$11.90</span></h3>
                            <div class="m3-content-menu-food-description">Ruby centre with a bright rim, this wine has typical Pinotage aromas of black cherries. On the palate, you’ll ...</div>
                        </div>

                    </div>


                    <div class="clearfix"></div>
                </div>
                <div class="m3-parallax">
                    <div class="m3-background"> </div>
                </div>
            </div>   
        </div>

        <div class="type-7009">
            <div class="blank-space"></div>
            <div class="row">
                <div class="googlemap">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d501756.55281938356!2d106.72009549198842!3d10.736558990061582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529292e8d3dd1%3A0xf15f5aad773c112b!2sHo+Chi+Minh+City%2C+Ho+Chi+Minh%2C+Vietnam!5e0!3m2!1sen!2s!4v1511773388964"></iframe>
                </div>
            </div>
            <div class="space"></div>
            <div class="wapper">
                <div class="row">
                    <div class="main">
                        <div class="grid2-5  col-md-5 col-sm-12 col-xm-12">
                            <div class="spacespane"></div>
                            <h4>Opening Times</h4>
                            <table class="timetable">
                                <tbody>
                                    <tr>
                                        <td>Week days</td>
                                        <td></td>
                                        <td>9.00 – 18:00</td>
                                    </tr>
                                    <tr>
                                        <td>Saturday</td>
                                        <td></td>
                                        <td>10.00 – 17:00</td>
                                    </tr>
                                    <tr>
                                        <td>Sunday</td>
                                        <td></td>
                                        <td>Closed</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="grid1-5  col-md-2 col-sm-12 col-xm-12">
                            <div class="blank-space1"></div>
                            <div class="row">
                                <div class="grid1">
                                    <div class="grid1-1">
                                        <p>
                                            <img src="<?php echo $url_path ?>/assets/images/icon.JPG" alt=""/>
                                            <span></span>
                                        </p>
                                        <h4>Directions</h4>
                                        <p>London, UK<br>
                                            10, Firs Avenue, Muswell Hill
                                        </p>
                                        <p>
                                            <a href="#" class="button">
                                                <span class="text-button">View on map</span>
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid2-5 lastgrid  col-md-5 col-sm-12 col-xm-12">
                            <div class="spacespane"></div>
                            <h4>Get in touch</h4>
                            <h4>+359 562 958</h4>
                            <p class="email"><a href="#">hello@yoursite.com</a></p>
                            <p>
                                <a href="#"><span class="fa fa-facebook"></span></a>
                                <a href="#"><span class="fa fa-twitter"></span></a>
                                <a href="#"><span class="fa fa-pinterest"></span></a>
                                <a href="#"><span class="fa fa-instagram"></span></a>
                            </p> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="blank-space"></div>
        </div>

        <div class="type-7010">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">

                    <div class="lavender-grid">
                        <div class="menu-center">
                            <div class="sep-before"> 
                                <div class="sep-line"></div>
                            </div>
                            <div class="content">
                                <h2 class="text-divider-double">
                                    News & Events
                                </h2>
                                <div class="text-divider-subtitle">Today Specials</div>
                            </div>
                            <div class="sep-after">
                                <div class="sep-line"></div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="m10-description">
                    <div class="m10-limit">
                        <div class="row row-all">
                            <div class="m10-description-main">
                                <div class="m10-description-all">
                                    <div class="col-lg-3 col-md-3 m10-description-one col-sm-6">
                                        <div class="m10-description-one-pic">
                                            <img src="<?php echo $url_path ?>/assets/images/Meat-1-292x195.jpg" alt="reponsive-img">
                                        </div>
                                        <div class="m10-description-one-meta">
                                            <a href="#">Recipes</a>
                                            <a href="#">Tips & Tricks</a>
                                        </div>
                                        <div class="m10-description-one-title">
                                            <a href="#">
                                                <h4>Which Lamb is the Best: American, Australian or New Zealand?</h4>
                                            </a>
                                            <p>Lamb is a very subjective item. Many people feel that New Zealand or Australian is…</p>
                                            <div class="m10-description-one-tag">
                                                <a href="#">Bio</a>,
                                                <a href="#">Dinner</a>,
                                                <a href="#">Food</a>,
                                                <a href="#">Hand Made</a>,
                                                <a href="#">Lamb</a>,
                                                <a href="#">Recipe</a>,
                                                <a href="#">Tricks</a>
                                            </div>

                                            <div class="m10-description-one-category">
                                                <a href="#">
                                                    <span  class="cate-1">
                                                        Jon Madison
                                                    </span></a>
                                                <a href="#">
                                                    <span class="cate-2">
                                                        27 Sep, 2014 
                                                    </span>
                                                </a>
                                                <a href="#" class="cate-3">
                                                    <span class="fa fa-comment-o">
                                                        1
                                                    </span>
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-3 col-md-3 m10-description-one col-sm-6">
                                        <div class="m10-description-one-pic">
                                            <img src="<?php echo $url_path ?>/assets/images/Cocktails-2-292x195.jpg" alt="reponsive-img">
                                        </div>
                                        <div class="m10-description-one-meta">
                                            <a href="#">Healthy Food</a>
                                            <a href="#">Recipes</a>
                                        </div>
                                        <div class="m10-description-one-title">
                                            <a href="#">
                                                <h4>The Caipirinha Is The Brazilian Cocktail You’ve Been Too Afraid To Pronounce</h4>
                                            </a>
                                            <p>It’s time to take a break from the mojito, put down the margarita, and give…</p>
                                            <div class="m10-description-one-tag">
                                                <a href="#">cocktail</a>,
                                                <a href="#">Food</a>,
                                                <a href="#">healthy</a>,
                                                <a href="#">recipe</a>,
                                                <a href="#">Lamb</a>,
                                                <a href="#">Recipe</a>,
                                                <a href="#">Tricks</a>
                                            </div>

                                            <div class="m10-description-one-category">
                                                <a href="#">
                                                    <span  class="cate-1">
                                                        Jon Madison
                                                    </span></a>
                                                <a href="#">
                                                    <span class="cate-2">
                                                        1 Sep, 2018 
                                                    </span>
                                                </a>
                                                <a href="#" class="cate-3">
                                                    <span class="fa fa-comment-o">
                                                        1
                                                    </span>
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-3 col-lg-3 m10-description-one col-sm-6">
                                        <div class="m10-description-one-pic">
                                            <img src="<?php echo $url_path ?>/assets/images/Sandwiches-1-292x195.jpg" alt="reponsive-img">
                                        </div>
                                        <div class="m10-description-one-meta">
                                            <a href="#">Cooking</a>
                                            <a href="#">Healthy Food</a>
                                        </div>
                                        <div class="m10-description-one-title">
                                            <a href="#">
                                                <h4>The Plum Recipes That’ll Make You Fall In Love With This Stone Fruit</h4>
                                            </a>
                                            <p>It’s easy to forget about plums. They’re not the most popular of summer fruits. Plums…</p>
                                            <div class="m10-description-one-tag">
                                                <a href="#">cooking</a>,
                                                <a href="#">healthy</a>,
                                                <a href="#">plum's</a>,
                                                <a href="#">recipe</a>,
                                                <a href="#">Lamb</a>,
                                                <a href="#">Recipe</a>,
                                                <a href="#">Tricks</a>
                                            </div>

                                            <div class="m10-description-one-category">
                                                <a href="#">
                                                    <span  class="cate-1">
                                                        Jon Madison
                                                    </span></a>
                                                <a href="#">
                                                    <span class="cate-2">
                                                        27 Sep, 2014 
                                                    </span>
                                                </a>
                                                <a href="#" class="cate-3">
                                                    <span class="fa fa-comment-o">
                                                        1
                                                    </span>
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-md-3 col-lg-3 m10-description-one col-sm-6">
                                        <div class="m10-description-one-pic">
                                            <img src="<?php echo $url_path ?>/assets/images/Vegetarian-3-292x195.jpg" alt="reponsive-img">
                                        </div>
                                        <div class="m10-description-one-meta">
                                            <a href="#">category tag</a>
                                            <a href="#">Healthy Food</a>
                                            <a href="#">Recipes</a>
                                        </div>
                                        <div class="m10-description-one-title">
                                            <a href="#">
                                                <h4>24 Reasons To Seek Out Fresh Figs</h4>
                                            </a>
                                            <p>Dried figs are great and all, but if you’ve ever tasted a fresh fig you…</p>
                                            <div class="m10-description-one-tag">
                                                <a href="#">cooking</a>,
                                                <a href="#">Food</a>,
                                                <a href="#">Food</a>,
                                                <a href="#">healthy</a>,
                                                <a href="#">tips</a>,
                                                <a href="#">tricks</a>,
                                                <a href="#">Tricks</a>
                                            </div>

                                            <div class="m10-description-one-category">
                                                <a href="#">
                                                    <span  class="cate-1">
                                                        Jon Madison
                                                    </span></a>
                                                <a href="#">
                                                    <span class="cate-2">
                                                        27 Sep, 2018
                                                    </span>
                                                </a>
                                                <a href="#" class="cate-3">
                                                    <span class="fa fa-comment-o">
                                                        1
                                                    </span>
                                                </a>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="m10-button">
                                <p class="c1-btn">
                                    <a href="#">
                                        <span class="span-hover">Load more</span>
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<?php
get_footer();
