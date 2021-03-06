<!DOCTYPE html>
<html>
<!-- Added by HTTrack --><!-- /Added by HTTrack -->
<head>
  <#include "header.ftl">
</head>
<body>
    <div id="top">
        <div class="container_12">
            <div class="grid_3">
                <div class="lang">
                    <ul>
                        <li class="current"><a href="#">EN</a></li>
                        <li><a href="#">FR</a></li>
                        <li><a href="#">GM</a></li>
                    </ul>
                </div><!-- .lang -->


            </div><!-- .grid_3 -->

            <div class="grid_9">
                <nav>
                    <ul>
                        <li class="current"><a href="#">My Account</a></li>
                        <li><a href="#">My Wishlist</a></li>
                        <li><a href="login.html">Log In</a></li>
                        <li><a href="login.html">Sign Up</a></li>
                    </ul>
                </nav>
            </div><!-- .grid_9 -->
        </div>
    </div><!-- #top -->

    <header>
        <div class="container_12">
            <div class="grid_3">
                <div>
                    <h1 id="site_logo"><a href="index.html" title=""><img src="img/logo.png" alt="Online Store Theme Logo"></a></h1>
                    <h2 id="site_description">Jewel Online Store</h2>
                </div>
            </div><!-- .grid_3 -->

            <div class="grid_9">
                <div class="top_header">
                    <div class="welcome">
                        Welcome visitor! Today is ${date}.
                        <#if date=="Sunday"||date=="Saturday">
                        <h6>Happy weekend!</h6>
                        <#else> <h6>:)</h6>
                        </#if>

                        You can <a href="login.html">login</a> or <a href="register.html">create an account</a>.
                    </div><!-- .welcome -->

                    <ul id="cart_nav">

                        <li>
                            <a class="cart_li"  href="shopping_cart.html">

                                <div class="cart_ico"></div>
                                Cart

                            </a>

                        </li>
                    </ul><!-- .cart_nav -->

                    <form class="search">
                        <input type="submit" class="search_button" value="">
                        <input type="text" name="search" class="search_form" value="" placeholder="Search entire store here...">
                    </form><!-- .search -->
                </div><!-- .top_header -->

                <nav class="primary">
                    <ul>
                        <li class="curent"><a href="index.html">Home</a></li>
                        <li class="parent">
                            <a href="catalog_grid.html">Products</a>
                            <ul class="sub">
                                <li><a href="catalog_grid.html">For home</a></li>
                                <li><a href="catalog_grid.html">For Garden</a></li>
                                <li><a href="catalog_grid.html">For Car</a></li>
                                <li><a href="catalog_grid.html">Other spray</a></li>
                            </ul>
                        </li>
                        <li><a href="catalog_grid.html">Events</a></li>
                        <li><a href="blog_post.html">Blogs</a></li>
                        <li class="parent">
                            <a href="#">All pages</a>
                            <ul class="sub">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="login.html">Login</a></li>
                                <li><a href="shopping_cart.html">Shoping cart</a></li>
                                <li><a href="product_page.html">Product view</a></li>
                                <li><a href="catalog_grid.html">Events</a></li>
                                 <li><a href="blog_post.html">Blog</a></li>
                                <li><a href="contact_us.html">Contact us</a></li>


                            </ul>
                        </li>
                    </ul>
                </nav><!-- .primary -->
            </div><!-- .grid_9 -->
        </div>
    </header>

       <div id="slider_body">
        <ul id="slider">
            <li>
                <img src="img/content/slid-1.png" alt="Slid 1" title="">
            </li>

            <li>
                <img src="img/content/slid-2.png" alt="Slid 2" title="">
            </li>

            <li>
                <img src="img/content/slid-3.png" alt="Slid 3" title="">
            </li>
        </ul>
    </div><!-- #slider_body -->



    <div id="home_banners">
        <div class="container_12">
            <div class="grid_6">
                <a href="#" class="banner banner1"><strong>Free shipping</strong> on orders over $500</a>
            </div><!-- .grid_6 -->

            <div class="grid_6">
                <a href="#" class="banner banner2"><strong>Insane discounts</strong> on new collection!</a>
            </div><!-- .grid_6 -->
        </div>
    </div><!-- #home_banners -->

    <section id="main" class="home">
        <div class="container_12">
            <div id="content">
                <div class="grid_12">
                    <h2 class="product-title">Featured Products</h2>
                </div><!-- .grid_12 -->

                <div class="clear"></div>

                <div class="products">
                    <article class="grid_3 article">
                        <img class="sale" src="img/sale.png" alt="Sale">
                        <div class="prev">
                            <a href="product_page.html"><img src="img/content/product1.png" alt="Product 1" title=""></a>
                        </div><!-- .prev -->

                        <h3 class="title">handmade Emerald Cut<br> Emerald Ring</h3>
                        <div class="cart">
                            <div class="price">
                                <div class="vert">
                                    $550.00
                                    <div class="price_old">$725.00</div>
                                </div>
                            </div>

                            <a href="#" class="like"></a>
                            <a href="shopping_cart.html" class="bay"><img src="img/bg_cart.png" alt="Buy" title=""></a>
                        </div><!-- .cart -->

                    </article><!-- .grid_3.article -->

                    <article class="grid_3 article">
                         <div class="prev">
                            <a href="product_page.html"><img src="img/content/product2.png" alt="Product 2" title="" ></a>
                        </div><!-- .prev -->

                        <h3 class="title">beautiful Valentine And Engagement</h3>
                        <div class="cart">
                            <div class="price">
                                <div class="vert">
                                    $550.00
                                    <div class="price_old">$725.00</div>
                                </div>
                            </div>

                            <a href="#" class="like"></a>
                            <a href="shopping_cart.html" class="bay"><img src="img/bg_cart.png" alt="Buy" title="" ></a>
                        </div><!-- .cart -->

                    </article><!-- .grid_3.article -->

                    <article class="grid_3 article">
                        <img class="sale" src="img/new.png" alt="New">
                        <div class="prev">
                            <a href="product_page.html"><img src="img/content/product3.png" alt="Product 3" title="" ></a>
                        </div><!-- .prev -->

                        <h3 class="title">Emerald Cut Emerald Ring</h3>
                        <div class="cart">
                            <div class="price">
                                <div class="vert">
                                    $550.00
                                    <div class="price_old">$725.00</div>
                                </div>
                            </div>

                            <a href="#" class="like"></a>
                            <a href="shopping_cart.html" class="bay"><img src="img/bg_cart.png" alt="Buy" title="" ></a>
                        </div><!-- .cart -->

                    </article><!-- .grid_3.article -->

                    <article class="grid_3 article">
                        <div class="prev">
                            <a href="product_page.html"><img src="img/content/product4.png" alt="Product 4" title=""></a>
                        </div><!-- .prev -->

                        <h3 class="title">Diamond Necklaces and Pendants</h3>
                        <div class="cart">
                            <div class="price">
                                <div class="vert">
                                    $550.00
                                    <div class="price_old">$725.00</div>
                                </div>
                            </div>

                            <a href="#" class="like"></a>
                            <a href="shopping_cart.html" class="bay" ><img src="img/bg_cart.png" alt="Buy" title="" ></a>
                        </div><!-- .cart -->

                    </article><!-- .grid_3.article -->


                    <div class="clear"></div>
                </div><!-- .products -->
                <div class="clear"></div>
                </div>
            </div><!-- #content -->
        </section>

            <div class="clear"></div>



</body>

</html>
