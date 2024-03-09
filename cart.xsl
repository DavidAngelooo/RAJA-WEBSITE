<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
    <meta charset="UTF-8"></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
    <title>All Products - RAJA Store </title>
    <link rel="stylesheet" href="cart.css"></link>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700%26display=swap" rel="stylesheet"></link>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"></link>
</head>
<body>
 
    <div class="container">
                <div class="navbar">
                    <div class ="logo">
                        <img src="images/logonewu.png" width="125px"></img>
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

    <div class="small-container cart-page">
        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <xsl:for-each select="/Orders/Items/Product">
                <tr>
                    <td>
                        <div class="cart-info"> 
                            <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="ProductImg"/>
                                </xsl:attribute>
                            </img>
                            <!-- <img src="images/buy-1.jpg"></img> -->
                            <div>
                                <p><xsl:value-of select="ProductTitle"/></p>
                                <small>Price: <xsl:value-of select="ProductPrice"/></small>
                                <br></br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></input></td>
                    <td><xsl:value-of select="ProductPrice"/></td>
                </tr>
            </xsl:for-each>
        </table>
        <br></br> 
        <div class="total-price">
            <table>
                 <tr>
                    <td>Customer Id</td>
                    <td><xsl:value-of select="Orders/CustomerId"/></td>
                </tr>
                <tr>
                    <td>Subtotal</td>
                    <td>PHP <xsl:value-of select="Orders/SubTotal"/></td>
                </tr>
                <tr>
                    <td>Shipping Fee</td>
                    <td>PHP <xsl:value-of select="Orders/ShippingFee"/></td>
                </tr>
                <tr>
                    <td>Discount</td>
                    <td><xsl:value-of select="Orders/Discount"/>%</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>PHP <xsl:value-of select="Orders/Total"/></td>
                </tr>
                <tr>
                    <td>Payment Method</td>
                    <td><xsl:value-of select="Orders/PaymentMethod"/></td>
                </tr>
            </table>
            <br></br>
        </div>
        
        

        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <xsl:for-each select="/Orders/Items2/Product">
                <tr>
                    <td>
                        <div class="cart-info"> 
                            <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="ProductImg"/>
                                </xsl:attribute>
                            </img>
                            <!-- <img src="images/buy-1.jpg"></img> -->
                            <div>
                                <p><xsl:value-of select="ProductTitle"/></p>
                                <small>Price: <xsl:value-of select="ProductPrice"/></small>
                                <br></br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></input></td>
                    <td><xsl:value-of select="ProductPrice"/></td>
                </tr>
            </xsl:for-each>
        </table>
        
        <div class="total-price">
            <table>
                 <tr>
                    <td>Customer Id</td>
                    <td><xsl:value-of select="Orders/CustomerId2"/></td>
                </tr>
                <tr>
                    <td>Subtotal</td>
                    <td>PHP <xsl:value-of select="Orders/SubTotal2"/></td>
                </tr>
                <tr>
                    <td>Shipping Fee</td>
                    <td>PHP <xsl:value-of select="Orders/ShippingFee2"/></td>
                </tr>
                <tr>
                    <td>Discount</td>
                    <td><xsl:value-of select="Orders/Discount2"/>%</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>PHP <xsl:value-of select="Orders/Total2"/></td>
                </tr>
                <tr>
                    <td>Payment Method</td>
                    <td><xsl:value-of select="Orders/PaymentMethod2"/></td>
                </tr>
            </table>
        </div>
        
        
        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <xsl:for-each select="/Orders/Items3/Product">
                <tr>
                    <td>
                        <div class="cart-info"> 
                            <img>
                                <xsl:attribute name="src">
                                <xsl:value-of select="ProductImg"/>
                                </xsl:attribute>
                            </img>
                            <!-- <img src="images/buy-1.jpg"></img> -->
                            <div>
                                <p><xsl:value-of select="ProductTitle"/></p>
                                <small>Price: <xsl:value-of select="ProductPrice"/></small>
                                <br></br>
                                <a href="">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input type="number" value="1"></input></td>
                    <td><xsl:value-of select="ProductPrice"/></td>
                </tr>
            </xsl:for-each>
        </table>
        
        <div class="total-price">
            <table>
                 <tr>
                    <td>Customer Id</td>
                    <td><xsl:value-of select="Orders/CustomerId3"/></td>
                </tr>
                <tr>
                    <td>Subtotal</td>
                    <td>PHP <xsl:value-of select="Orders/SubTotal3"/></td>
                </tr>
                <tr>
                    <td>Shipping Fee</td>
                    <td>PHP <xsl:value-of select="Orders/ShippingFee3"/></td>
                </tr>
                <tr>
                    <td>Discount</td>
                    <td><xsl:value-of select="Orders/Discount3"/>%</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>PHP <xsl:value-of select="Orders/Total3"/></td>
                </tr>
                <tr>
                    <td>Payment Method</td>
                    <td><xsl:value-of select="Orders/PaymentMethod3"/></td>
                </tr>
            </table>
        </div>
        
        
    </div>

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
                <p class="copyright">Copyright 2021 - RAJA Store</p>
            </div>
        </div>

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
      <div><h1>asdasdasd</h1></div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>