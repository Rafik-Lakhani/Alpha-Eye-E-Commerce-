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
       
        include("config/dbconnect.php");
        include("config/fontfamily.php");
        include("config/remixicone.php");
?>

<!-- here cart page content start -->
    
    <div class="main">
            <?php  include("component/nav.php");?>
            <div class="cart-sec">
                    <div class="cart-container">
                        <h2>Your Cart</h2>

                    
<?php
    
        if(isset($_SESSION["email"])&& isset($_SESSION["role"])){
            // here fetch user information from database
            $useremail=$_SESSION['email'];
            $sql="SELECT * FROM userdata WHERE useremail='$useremail'";
            $result=mysqli_query($con,$sql);
            $userdata=mysqli_fetch_assoc($result);

            // here fetch cart information from database base on the user id
            $select="select * from cart where userid=$userdata[id]";
            $ans=mysqli_query($con,$select);

        
            
        
            // here show data in the page
            while($cartdata=mysqli_fetch_assoc($ans)){
                 
                // here fetch product information from database base on the product id base cart database product id

                $productid=$cartdata['productid']; //here product id is cart database product id
                $query="SELECT * FROM product WHERE productid=$productid";
                $answer=mysqli_query($con,$query);
                $productdata=mysqli_fetch_assoc($answer);

                // here display product information in the cart page
                
                if($cartdata['powertype']!="NUll"){
                ?>
                    <!-- here ul and li code of html -->
                    <ul class="cart-list">
                        <li class="cart-item">
                            <div class="cart-item-details">
                            <img
                                src="assets/images/<?php echo $productdata['img1']?>"
                                alt="cart product image"
                                class="cart-item-image"
                            />
                            <div class="cart-item-info">
                                <div class="cart-item-header">
                                <div>
                                    <h3><?php echo $productdata['name']?></h3>
                                    <h3>Lens:<?php echo $cartdata['lenstype']?></h3>
                                    <p><?php echo $productdata['size']?></p>
                                </div>
                                <div class="cart-item-price">
                                    <p class="price-current">
                                        <?php $price=$cartdata['lensprice']+$productdata['sellingprice'];
                                            echo $price;
                                        ?>
                                    </p>
                                    <p class="price-old"><?php echo $productdata['mrp']?></p>
                                </div>
                                </div>
                                <div class="cart-item-actions">
                                    <button class="btn-remove">
                                        <span><a href="#"><i class="ri-delete-bin-6-line"></i></a></span>
                                    </button>
                                        <div class="quantity-container">
                                            <button class="quantity-button minus">-</button>
                                            <input type="text" class="quantity-input" value="1">
                                            <button class="quantity-button plus">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                   
                    
                <?php
                }   
                else{
                ?>
                    <ul class="cart-list">
                        <li class="cart-item">
                            <div class="cart-item-details">
                            <img
                                src="assets/images/<?php echo $productdata['img1']?>"
                                alt="cart product image"
                                class="cart-item-image"
                            />
                            <div class="cart-item-info">
                                <div class="cart-item-header">
                                <div>
                                    <h3><?php echo $productdata['name']?><h3>
                                    <p><?php echo $productdata['size']?></p>
                                </div>
                                <div class="cart-item-price">
                                    <p class="price-current"><?php echo $productdata['sellingprice']?></p>
                                    <p class="price-old"><?php echo $productdata['mrp']?></p>
                                </div>
                                </div>
                                <div class="cart-item-actions">
                                    <button class="btn-remove">
                                        <span><a href=""><i class="ri-delete-bin-6-line"></i></a></span>
                                    </button>
                                    <div class="quantity-container">
                                            <button class="quantity-button minus">-</button>
                                            <input type="text" class="quantity-input" value="1">
                                            <button class="quantity-button plus">+</button>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </li>
                    </ul>

                 <!--here  cart-container div complate -->
                 </div>
                <?php
                }
            }

        }
        else{
            echo "OPP's not any product added to cart";
        }
?>
</body>
</html>