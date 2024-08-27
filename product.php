<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cssStyle/product.css">
    <title>Product | AlphaEye</title>
</head>
<body>
    <div class="main">
        <?php 
        include("component/nav.php");
        include("config/fontfamily.php");
        include("config/remixicone.php");
        include("config/dbconnect.php");

        if(isset($_GET["pid"])){
            $productid=$_GET["pid"];
       }
       else{
            $productid=1;
       }
       
        $sql = "SELECT * FROM product WHERE productid = $productid";
        $result = mysqli_query($con, $sql);
        $product = mysqli_fetch_assoc($result);
        
        // Display product details here
        ?>
        
        <div class="product-detail">
            <div class="product-image">
                <img id="main-img"   src="assets/images/<?php echo $product['img1']?>" alt="Product 1">
                <div class="sub-img">
                    <img src="assets/images/<?php echo $product['img2']?>" alt="Product 1" id="subimg1" onclick="changeimg(1)">
                    <img src="assets/images/<?php echo $product['img3']?>" alt="Product 2" id="subimg2" onclick="changeimg(2)">    
                    <img src="assets/images/<?php echo $product['img4']?>" alt="Product 3" id="subimg3" onclick="changeimg(3)">
                </div>
            </div>
            <div class="product-description">
                    <div class="price-div">
                        <h1><?php echo $product['name'];?></h1>
                        <h3 style="text-decoration-line: line-through";>MRP ₹<?php echo $product['mrp'];?></h3>
                        <h2>Price ₹<?php echo $product['sellingprice'];?></h2>
                        <h3>Inclusive of all taxes</h3>
                    </div>
                        <div class="price-div">
                        <h2>Gender:<span><?php echo $product['maincategory']?></span>       
                        &nbsp&nbsp&nbsp&nbsp&nbsp Size:<span><?php echo $product['size'];?></span></h2>
                         
                         <h2>Colour</h2>
                         <div style="display:flex; gap:9px;">
                         <?php 
                            $quary="select * from product where name='$product[name]'";
                            $result2=mysqli_query($con,$quary);
                            while($row=mysqli_fetch_assoc($result2)){
                                ?>
                                 <a href="product.php?name=<?php echo $row['name'] ?>&pid=<?php echo $row['productid'];?>"><div class="color-box" style="background-color:<?php echo $row['color'];?>"></div></a>
                                <?php
                            }
                         ?>
                        </div>
                        </div>
                                <div class="button-div">
                                    <a href=""><button>Add To Cart</button></a>
                                </div>
                    <div class="detail-section">
                        <details>    
                            <summary><h3 style="display:inline;">Product Details</h3></summary>
                            <p><?php echo $product['detail']?></p>
                        </details>
                    </div>
                </div>

        </div>

        <!-- here lens select option div code start -->

        
        <!-- here lens select code div code end  -->

        <!-- <?php include("component/footer.php");?>  Include footer -->
    </div>
    <script>
        var mainimg= document.querySelector('#main-img');
        
        function changeimg(imgno){
            var srcurl=mainimg.src;
            mainimg.src=document.querySelector(`#subimg${imgno}`).src;
            document.querySelector(`#subimg${imgno}`).src=srcurl;
        }
    </script>
</body>
</html>