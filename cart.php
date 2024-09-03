<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart Page | AlphaEye</title>
    <link rel="stylesheet" href="cssStyle/cart.css">
</head>
<body>
<?php 
$totalmrp=0;
$totalprice=0;

       
        include("config/dbconnect.php");
        include("config/fontfamily.php");
        include("config/remixicone.php");
?>

<!-- here cart page content start -->
    
    <div class="main">
            <?php  include("component/nav.php");?>
        <div class="cart">
            <div class=cart-first>
                <div class="heading">
                    <h2>Your Cart</h2>
                </div>
                <div class="product-div">

                    <img class=img src="assets\staticimg\Cateye\blackfullrimcateyemedium-2.jpg" alt="">
                    
                    <div class="product-detail">
                        <div class="product-name">                       
                             <h3>Vincent Chase
                                 Full<br> Rim Geometric</h3>
                             <h5>₹1999</h5>
                        </div>
                        <div class="lens">
                            <h5>Lens:</h5>
                            <h6>₹1999</h6>
                        </div>
                        <div class="line"></div>
                            <div class="final-price">
                                <h4>Final Price</h4>
                                <h6>₹1999</h6>
                            </div>
                        <div class="line-2"></div>
                        
                        <div class="quantity-wrapper">
                           <span>
                            <button type="text">remove</button>
                           </span>
                            <div class= "quantity-wrapper-2">
                                <button class="quantity-button" id="remove-btn">-</button>
                                <input type="text" id="quantity" value="1">
                                <button class="quantity-button" id="add-btn">+</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!--belling section -->


                        <div class="car-sec">
                            <div class="heading-2">
                            <h2>Bill Details</h2>
                            </div>
                                <div class="product-div-2">
                                            <div class="product-detail-2">
                                                <div class="product-name-2">                       
                                                    <h5> Total item price</h5>
                                                        <h5>₹1999</h5>
                                                </div>
                                                <div class="line"></div>
                                                    <div class="lens-2">
                                                        <h5>Total discount</h5>
                                                        <h5>₹1999</h5>
                                                    </div>
                                                <div class="line"></div>
                                                    <div class="final-price-2">
                                                    <h4>Total payable</h4>
                                                    <h4>₹1999</h4>
                                                </div>
                                            </div>
                                </div>
                                                <div class="button-cheakout">
                                                    <button>Proceed To Cheakout ></button>
                                                </div>
            </div>

          
        </div>


    </div>


                    

             
</body>
</html>