<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
    <html>
    <head>
        <meta charset="UTF-8"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <title>All Products - RAJA Store </title>
        <link rel="stylesheet" href="style.css"></link>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700%26display=swap" rel="stylesheet"></link>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></link>
    </head>
    <body>
    
        <div class="container">
                <div class="navbar">
                    <div class ="logo">
                        <img src="images/logonewu.png" width="160px"></img>
                    </div>
                    <nav>
                        <ul id="MenuItems">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="products.xml">Products</a></li>
                            <li><a href="crecord.xml">Account Record</a></li>
                            <li><a href="orders.xml">Order Record</a></li>
                        </ul>
                    </nav>
                    <a href="cart.xml"> <img src="images/cart.png" width="30pox" height="30px"></img></a>
                    <img src="images/menu.png" class="menu-icon" onclick="menutoggle()"></img>
                </div>
            </div> 
        

        <div class="small-container">
            <div class="row row-2">
                <h2>All Products</h2>
                <select>
                    <option>Default Sorting</option>
                    <option>Sort by price</option>
                    <option>Sort by popularity</option>
                    <option>Sort by rating</option>
                    <option>Sort by sale</option>
                </select>
            </div>

            <div class="row">
                <xsl:for-each select="/Products/Product">
                    <div class="col-4">
                        <a>
                          <xsl:attribute name="href"><!-- create the href attribute -->
                            <xsl:value-of select="ProductUrL"/>
                          </xsl:attribute>
                          
                            <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="ProductImg"/>
                                </xsl:attribute>
                            </img>
                        </a>
<!--
                        <a href="product-details.html?id={position()}"> 
                            <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="ProductImg"/>
                                </xsl:attribute>
                            </img>
                        </a>
-->
                        <h4><xsl:value-of select="ProductTitle"/></h4>
                        <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>        
                        </div>
                        <p><xsl:value-of select="ProductPrice"/></p>
                        <p><xsl:value-of select="RetailerName"/></p>
                    </div>
                </xsl:for-each>
            </div>
                
        </div>

        <!-- footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download Our App </h3>
                        <p>Download App for Android and ios mobile phone. </p>
                        <div class="app-logo">
                        <img src="images/play-store.png"> </img>
                        <img src="images/app-store.png"> </img>
                        </div>
                    </div>
                    <div class="footer-col-2">
                        <img src="images/logonewu.png"></img>
                    </div>
                    <div class="footer-col-3">
                        <h3>Useful Links</h3>
                        <ul>
                            <li>Coupons</li>
                            <li>Blog Post</li>
                            <li>Return Policy</li>
                            <li>Join Affiliate</li>
                        </ul>
                    </div>
                    <div class="footer-col-4">
                        <h3>Follow us</h3>
                        <ul>
                            <li>Facebook</li>
                            <li>Twitter</li>
                            <li>Instagram</li>
                            <li>Youtube</li>
                        </ul>
                    </div>   
                </div>
                <!-- </hr> -->
                <p class="copyright">Copyright 2021 - RAJA Store</p>
            </div>
        </div>

        <!-- js for toggle menu -->
        <script>
            var MenuItems = document.getElementById("MenuItems");
        
            MenuItems.style.maxHeight="0px";
            
            function menutoggle(){
                if(MenuItems.style.maxHeight=="0px")
                    {
                    MenuItems.style.maxHeight="200px" 
                    }
                else
                    {
                        MenuItems.style.maxHeight="0px"
                    }
            }
        </script>
            
    </body>
    </html>
    </xsl:template>
</xsl:stylesheet>