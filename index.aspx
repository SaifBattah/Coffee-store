<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CoffeWebSite.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>complete responsive coffee shop website design</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link href="style.css" rel="stylesheet" />

</head>
<body>

        <header class="header">
            <a href="#" class="logo">
                <img src="images/logo.png" alt=""/>
            </a>

            <nav class="navbar">
                <a href="#home">home</a>
                <a href="#about">about</a>
                <a href="#menu">menu</a>
                <a href="#products">products</a>
                <a href="#review">review</a>
                <a href="#contact">contact</a>
                <a href="#blogs">blogs</a>
            </nav>

            <div class="icons">
                <div class="fas fa-search" id="search-btn"></div>
                <div class="fas fa-shopping-cart" id="cart-btn"></div>
                <div class="fas fa-bars" id="menu-btn"></div>
            </div>

            <div class="search-form">
                <input type="search" id="search-box" placeholder="search here..."/>
                <label for="search-box" class="fas fa-search"></label>
            </div>
            
            <div class="cart-items-container">

                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="images/cart-item-1.png" alt=""/>
                    <div class="content">
                        <h3>cart item 01</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>
                
                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="images/cart-item-2.png" alt=""/>
                    <div class="content">
                        <h3>cart item 02</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>
            
                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="images/cart-item-3.png" alt=""/>
                    <div class="content">
                        <h3>cart item 03</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>

                <div class="cart-item">
                    <span class="fas fa-times"></span>
                    <img src="images/cart-item-4.png" alt=""/>
                    <div class="content">
                        <h3>cart item 04</h3>
                        <div class="price">$15.99/-</div>
                    </div>
                </div>
                <a href="#" class="btn">checkout now</a>
            </div>

        </header>

        <section class="home" id="home">
            <div class="content">
                <h3>fresh coffe in the morning</h3>
                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat labore, sint
                    cupiditate distinctio tempora reiciendis.
                </p>
                <a href="#" class="btn">get yours now!</a>
            </div>
        </section>

        <section class="about" id="about">
            <h1 class="heading"> <span>about</span> us </h1>
            <div class="row">

                <div class="image">
                    <img src="images/about-img.jpeg"/>
                </div>

                <div class="content">
                    <h3>what makes our coffe special?</h3>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus qui ea
                        ullam, enim tempora ispum fuga alias quae ratione a officiis id temporibus autem?
                        Qoud nemo facilis cupiditate. Ex, vel?</p>
                    <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Odit amet enim quod
                        veritatis, nihil voluptas culpa! Neque consectetur obcaecati sapiente?</p>
                    <a href="#" class="btn">learn more</a>
                </div>

            </div>
        </section>

        <section class="menu" id="menu">\

            <h1 class="heading">our <span>menu</span></h1>

            <div class="box-container">

                <div class="box">
                    <img src="images/menu-1.png" alt=""/>
                    <h3>tasty and healthy</h3>
                    <div class="price">$15.99 <span>20.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>

                <div class="box">
                    <img src="images/menu-2.png" alt=""/>
                    <h3>tasty and healthy</h3>
                    <div class="price">$15.99 <span>20.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>

                <div class="box">
                    <img src="images/menu-3.png" alt=""/>
                    <h3>tasty and healthy</h3>
                    <div class="price">$15.99 <span>20.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>

                <div class="box">
                    <img src="images/menu-4.png" alt=""/>
                    <h3>tasty and healthy</h3>
                    <div class="price">$15.99 <span>20.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>

                <div class="box">
                    <img src="images/menu-5.png" alt=""/>
                    <h3>tasty and healthy</h3>
                    <div class="price">$15.99 <span>20.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>

                <div class="box">
                    <img src="images/menu-6.png" alt=""/>
                    <h3>tasty and healthy</h3>
                    <div class="price">$15.99 <span>20.99</span></div>
                    <a href="#" class="btn">add to cart</a>
                </div>

            </div>

        </section>

        <section class="products" id="products">

            <h1 class="heading"> our <span>products</span> </h1>

            <div class="box-container">

                <div class="box">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="images/product-1.png" alt=""/>
                    </div>
                    <div class="content">
                        <h3>fresh coffee</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                        <div class="price">$15.99 <span>$20.99</span></div>
                    </div>
                </div>

                <div class="box">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="images/product-2.png" alt=""/>
                    </div>
                    <div class="content">
                        <h3>fresh coffee</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                        <div class="price">$15.99 <span>$20.99</span></div>
                    </div>
                </div>

                <div class="box">
                    <div class="icons">
                        <a href="#" class="fas fa-shopping-cart"></a>
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="fas fa-eye"></a>
                    </div>
                    <div class="image">
                        <img src="images/product-3.png" alt=""/>
                    </div>
                    <div class="content">
                        <h3>fresh coffee</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                        <div class="price">$15.99 <span>$20.99</span></div>
                    </div>
                </div>

            </div>
        </section>

        <section class="review" id="review">

            <h1 class="heading"> customer's <span>review</span></h1>
            
            <div class="box-container">

                <div class="box">
                    <img src="images/quote-img.png" alt="" class="quote"/>
                    <p>Lorem ispum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero
                        nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium
                        consequuntur iste ex aliquam minus vel? Nemo.</p>
                    <img src="images/pic-1.png" class="user" alt=""/>
                    <h3>John</h3>
                     <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                </div>

                <div class="box">
                    <img src="images/quote-img.png" alt="" class="quote"/>
                    <p>Lorem ispum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero
                        nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium
                        consequuntur iste ex aliquam minus vel? Nemo.</p>
                    <img src="images/pic-2.png" class="user" alt=""/>
                    <h3>Jasmine</h3>
                     <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                </div>

                <div class="box">
                    <img src="images/quote-img.png" alt="" class="quote"/>
                    <p>Lorem ispum dolor sit amet consectetur adipisicing elit. Animi nulla sit libero
                        nemo fuga sequi nobis? Necessitatibus aut laborum, nisi quas eaque laudantium
                        consequuntur iste ex aliquam minus vel? Nemo.</p>
                    <img src="images/pic-3.png" class="user" alt=""/>
                    <h3>Lois</h3>
                     <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                </div>


            </div>
        </section>

        <section class="contact" id="contact">

            <h1 class="heading"> <span>contact</span> us </h1>

            <div class="row">

                <iframe class="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d51358218.4780552!2d11.69353859478109!3d-8.674440558906172!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151ccc61e6ff8567%3A0x811428a4685668bb!2sJericho!5e0!3m2!1sen!2s!4v1673178452029!5m2!1sen!2s" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                <form>
                    <h3>get in touch</h3>
                    <div class="inputBox">
                        <span class="fas fa-user"></span>
                        <input type="text" placeholder="name" />
                    </div>

                    <div class="inputBox">
                        <span class="fas fa-envelope"></span>
                        <input type="email" placeholder="email" />
                    </div>

                    <div class="inputBox">
                        <span class="fas fa-phone"></span>
                        <input type="number" placeholder="number" />
                    </div>
                    <input class="btn" type="submit" value="contact now"/>
                </form>
            </div>

        </section>

    <section class="blogs" id="blogs">

        <h1 class="heading"> our <span>blogs</span> </h1>

        <div class="box-container">

            <div class="box">
                <div class="image">
                    <img src="images/blog-1.jpeg" alt=""/>
                </div>
                <div class="content">
                    <a href="#" class="title">tasty and refreshing coffee</a>
                    <span>by admin / 8th jan, 2023</span>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, dicta.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/blog-2.jpeg" alt=""/>
                </div>
                <div class="content">
                    <a href="#" class="title">tasty and refreshing coffee</a>
                    <span>by admin / 8th jan, 2023</span>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, dicta.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

            <div class="box">
                <div class="image">
                    <img src="images/blog-3.jpeg" alt=""/>
                </div>
                <div class="content">
                    <a href="#" class="title">tasty and refreshing coffee</a>
                    <span>by admin / 8th jan, 2023</span>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, dicta.</p>
                    <a href="#" class="btn">read more</a>
                </div>
            </div>

        </div>

    </section>


    <section class="footer">

        <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
            <a href="#" class="fab fa-pinterest"></a>
        </div>

        <div class="links">
            <a href="#">home</a>
            <a href="#">about</a>
            <a href="#">menu</a>
            <a href="#">products</a>
            <a href="#">review</a>
            <a href="#">contact</a>
            <a href="#">blogs</a>
        </div>

        <div class="credit">created by <span>Saif Battah</span> | all rights reserved</div>
    </section>

    <script type="text/javascript">
        let navbar = document.querySelector('.navbar');
        document.querySelector('#menu-btn').onclick = () => {
            navbar.classList.toggle('active');
            searchForm.classList.remove('active');
            cartItem.classList.remove('active');
        }

        let searchForm = document.querySelector('.search-form');
        document.querySelector('#search-btn').onclick = () => {
            searchForm.classList.toggle('active');
            navbar.classList.remove('active');
            cartItem.classList.remove('active');
        }

        let cartItem = document.querySelector('.cart-items-container');
        document.querySelector('#cart-btn').onclick = () => {
            cartItem.classList.toggle('active');
            navbar.classList.remove('active');
            searchForm.classList.remove('active');
        }

        window.onscroll = () => {
            navbar.classList.remove('active');
            searchForm.classList.remove('active');
            cartItem.classList.remove('active');
        }
    </script>
</body>
</html>
