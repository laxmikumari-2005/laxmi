<?php
include 'components/connect.php';



?>








<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fashion Website</title>

    <!--font awesome cdn link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!--custom css file link-->
    <link rel="stylesheet" href="style.css">

</head>
<body>
<?php include 'components/user_header.php'; ?>
   <!--header section stars-->
   <header>
    <a href="components/user_header.php" class="logo"> TrendyVista <span>.</span></a>
    <form action="">
        <input type="search" id="search-bar">
        <label for="search-bar" class="fas fa-search"></label>
    </form>
    <div class="icons">
        <div id="menu-bar" class="fas fa-bars"></div>
        <div id="theme-toggler" class="fas fa-moon"></div>
        <a href="wishlist.php" class="fas fa-heart"></a>
        <a href="cart.php" class="fas fa-shopping-cart"></a>
        <a href="login.php" class="fas fa-user"></a>
    </div>
   </header>
    <!--header section ends-->

<!--navbar section-->
   <nav class="navbar">
    <div class="links">
        <a href="#home">home</a>
        <a href="#latest products"> latest products</a>
        <a href="#featured">featured</a>
        <a href="#deal">deal</a>
        <a href="#review">review</a>
        <a href="register.php">register</a>
        <a href="login.php">login</a>

    </div>

    <div id="close" class="fas fa-times"></div>
   </nav>

 <!--home section starts-->
 <section class="home" id="home">
    <div class="content">
        <span>special offer</span>
        <h3> sale upto 50%</h3>
        <a href="#" class="btn">shop now</a>
    </div>

    <div class="image">
        <img src="laxmi.jpg">
    </div>

 </section>
 <!--home section ends-->

 <!--category secton starts-->
 <section class="category">

        <h1 class="heading"> shop by <span>category</span> </h1>

    <div class="box-container">
        <div class="box">
            <img src="man.jpeg" alt="">
            <div class="content">
                <span>upto 50% off</span>
                <h3>for mens</h3>
                <a href="shop.php" class="btn">shop now</a>
            </div>
        </div>

        <div class="box">
            <img src="jumpsuit.jpg" alt="">
            <div class="content">
                <span>upto 50% off</span>
                <h3>for womens</h3>
                <a href="shop.php" class="btn">shop now</a>
            </div>
            </div>

        <div class="box">
            <img src="formal pants.jpg" alt="">
            <div class="content">
                <span>upto 50% off</span>
                <h3>for mens</h3>
                <a href="shop.php" class="btn">shop now</a>
            </div>
        </div>

        <div class="box">
            <img src="green.jpg" alt="">
            <div class="content">
                <span>upto 50% off</span>
                <h3>for womens</h3>
                <a href="shop.php" class="btn">shop now</a>
            </div>
        </div>
    </div>
 </section>
 <!--category secton ends-->

 <!--product section starts-->
   <section class="product" id="product">
    <h1 class="heading">latest <span>products</span></h1>
    <div class="box-container">
        <div class="box">
            <span class="discount">.33%</span>
            <div class="icons">
                <a href="wishlist.php" class="fas fa-heart"></a>
                <a href="#" class="fas fa-share"></a>
                <a href="#" class="fas fa-eye"></a>
            </div>
            <img src="product1.jpg" alt="">
            <h3>casual shirts</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> $10.50 <span> $13.45 </span></div>
            <div class="quantity : ">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
            </div>
            </div>

        <div class="box">
            <span class="discount">.33%</span>
            <div class="icons">
                <a href="wishlist.php" class="fas fa-heart"></a>
                <a href="#" class="fas fa-share"></a>
                <a href="#" class="fas fa-eye"></a>
            </div>
            <img src="product3.jpg" alt="">
            <h3>womens saree</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <div class="price"> $10.50 <span> $13.45 </span></div>
            <div class="quantity : ">
                <span>quantity : </span>
                <input type="number" min="1" max="1000" value="1">
            </div>
            </div>

            <div class="box">
                <span class="discount">.33%</span>
                <div class="icons">
                    <a href="wishlist.php" class="fas fa-heart"></a>
                    <a href="#" class="fas fa-share"></a>
                    <a href="#" class="fas fa-eye"></a>
                </div>
                <img src="product4.jpg" alt="">
                <h3>casual t-shirts</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <div class="price"> $10.50 <span> $13.45 </span></div>
                <div class="quantity : ">
                    <span>quantity : </span>
                    <input type="number" min="1" max="1000" value="1">
                </div>
                </div>

                <div class="box">
                    <span class="discount">.33%</span>
                    <div class="icons">
                        <a href="wishlist.php" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-share"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <img src="product5.jpg" alt="">
                    <h3>casual womens shirt</h3>
                    <div class="stars">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half-alt"></i>
                    </div>
                    <div class="price"> $10.50 <span> $13.45 </span></div>
                    <div class="quantity : ">
                        <span>quantity : </span>
                        <input type="number" min="1" max="1000" value="1">
                    </div>
                    </div>
                 </div>
                </div>
            </div>
        </div>
    </div>
   </section>

                                   
 

 <!--product section ends-->

 <!--featured section starts-->
<section class="featured" id="featured">
    <h1 class="heading"> <span>featured</span> Products</h1>
    <div class="box-container">
        <div class="box">
            <div class="image-container">
                <div class="small-image">
                    <img src="f1-1.jpg" class="small-image-1" alt="">
                    <img src="f1-2.jpg" class="small-image-1" alt="">
                    <img src="f1-3.jpg" class="small-image-1" alt="">
                </div>
                <div class="big-image">
                    <img src="f1.jpg" class="big-image-1" alt="">
                </div>
            </div>
            <div class="content">
                <h3>men's clothing</h3>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <span>( 250 reviews)</span>
                </div>

               <p> men's trendy regular fit shirt</p>
                <div class="price">$15.99 <span>$18.99</span></div>
                <a href="cart.php" class="btn">add to cart</a>
            </div>
        </div>
        <div class="box">
            <div class="image-container">
                <div class="small-image">
                    <img src="f2-1.jpg" class="small-image-2" alt="">
                    <img src="f2-2.jpg" class="small-image-2" alt="">
                   
                </div>
                <div class="big-image">
                    <img src="f2.jpg" class="big-image-2" alt="">
                </div>
            </div>
            <div class="content">
                <h3>women's clothing</h3>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <span>( 250 reviews)</span>
                </div>

                <p>women midi dress party special</p>
                <div class="price">$15.99 <span>$18.99</span></div>
                <a href="cart.php" class="btn">add to cart</a>
            </div>
        </div>
        <div class="box">
            <div class="image-container">
                <div class="small-image">
                    <img src="f3-1.jpg" class="small-image-3" alt="">
                    <img src="f3-2.jpg" class="small-image-3" alt="">
                    <img src="f3-3.jpg" class="small-image-3" alt="">
                </div>
                <div class="big-image">
                    <img src="f3.jpg" class="big-image-3" alt="">
                </div>
            </div>
            <div class="content">
                <h3>men's clothing</h3>
                <div class="star">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <span>( 250 reviews)</span>
                </div>

               <p>men's formal shirt collections</p>
                <div class="price">$15.99 <span>$18.99</span></div>
                <a href="cart.php" class="btn">add to cart</a>
            </div>
        </div>
        
        
        
    </div>
</section>
<!--featured section ends-->


<!--deal section starts-->
<section class="deal" id="deal">
    <h1 class="heading"> special <span>deal</span></h1>
    <div class="row">
        <div class="content">
            <span class="discount">upto 50% off</span>
              <p>summer sale</p>
            <h3 class="text">deal of the day</h3>
            <div class="count-down">
                <div class="box">
                    <h3 id="days">00</h3>
                    <span>days</span>
                </div>
                <div class="box">
                    <h3 id="hours">00</h3>
                    <span>hours</span>
                </div>
                <div class="box">
                    <h3 id="minute">00</h3>
                    <span>minute</span>
                </div>
                <div class="box">
                    <h3 id="seconds">00</h3>
                    <span>seconds</span>
                </div>
            </div>
            <a href="#" class="btn">shop now</a>
        </div>
        <div class="image">
            <img src="deal.jpg">
        </div>
    </div>
</section>
<!--deal section ends-->

<!--review section starts-->
<section class="review" id="review">
    <h1 class="heading">customer <span>reviews</span></h1>
    <div class="box-container">
        <div class="box">
            <img src="r1.jpg" alt="">
            <h3>John</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>

            </div>
            <p>Guyss this was an amazing website new styling ideas . I love this site</p>
        </div>

        <div class="box">
            <img src="r2.jpg" alt="">
            <h3>nick</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>

            </div>
            <p>Guyss this was an amazing website new styling ideas . I love this site</p>
        </div>

        <div class="box">
            <img src="r3.jpg" alt="">
            <h3>anna</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>

            </div>
            <p>Guyss this was an amazing website new styling ideas . I love this site</p>
        </div>

        <div class="box">
            <img src="r4.jpg" alt="">
            <h3>Jennie</h3>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>

            </div>
            <p>Guyss this was an amazing website new styling ideas . I love this site</p>
        </div>
    </div>
</section>
<!--review section ends-->


<!--footer section starts-->

   <section class="footer">
    <div class="footer-container">
        <div class="box-container">
            <div class="box">
                <h3>Quick Links</h3>
                <a href="#">home</a>
                <a href="#">products</a>
                <a href="#">featured</a>
                <a href="#">deal</a>
                <a href="#">review</a>
            </div>

            <div class="box">
                <h3>Extra Links</h3>
                <a href="#">my account</a>
                <a href="wishlist.php">my favourite</a>
                <a href="order.php">my order</a>
                <a href="cart.php">my cart</a>
            </div>

            <div class="box">
                <h3>Download Links</h3>
                <a href="#">windows store</a>
                <a href="#">app store</a>
                <a href="#">google store</a>
            </div>
             
            <div class="box">
                <h3>Contact Us</h3>
                <a href="#">+9897645231</a>
                <a href="#">vistaa@gmail.com</a>
                <a href="#">mumbai, india - 140089</a>
            </div>

        </div>
    </div>
   </section>


<!--footer section ends-->



















 <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
 <!--custom js file link-->
 <script src="script.js"></script>
</body>
</html>