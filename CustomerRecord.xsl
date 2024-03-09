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

            
   
            <h2><center>Customer Records</center></h2>
            <br></br>
            <div class="row">
                <table>
                    <tr>
                        <th>Customer Id</th>
                        <th>Customer Name</th>
                        <th>Customer Contact</th>
                        <th>Customer Email</th>
                        <th><center>Customer Address</center></th>
                    </tr>
                    <xsl:for-each select="Accounts/Customers/Customer">
                        <tr>
                            <td><xsl:value-of select="CustomerId"/></td>
                            <td><xsl:value-of select="CustomerName"/></td>
                            <td><xsl:value-of select="CustomerContact"/></td>
                            <td><xsl:value-of select="CustomerEmail"/></td>
                            <td><center><xsl:value-of select="CustomerAddress"/></center></td>
                    
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
            <br></br>
            <h2><center>Retailer Records</center></h2>
            <br></br>
            <div class="row">
             <table>
                    <tr>
                        <th>Retailer Id</th>
                        <th>Retailer Name</th>
                        <th>Retailer Contact</th>
                        <th>Retailer Type</th>
                        <th>Retailer Email</th>
                        <th>Retailer Address</th>
                        <th>Product Type</th>
                        <th><center>Product Quantity</center></th>
                    </tr>
                    <xsl:for-each select="Accounts/Retailers/Retailer">
                        <tr>
                            <td><xsl:value-of select="RetailerId"/></td>
                            <td><xsl:value-of select="RetailerName"/></td>
                            <td><xsl:value-of select="RetailerContact"/></td>
                            <td><xsl:value-of select="RetailerType"/></td>
                            <td><xsl:value-of select="RetailerEmail"/></td>
                            <td><xsl:value-of select="RetailerAddress"/></td>
                            <td><xsl:value-of select="RetailerProductType"/></td>
                            <td><center><xsl:value-of select="RetailerProductQty"/></center></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </div> 
        <br></br>
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
