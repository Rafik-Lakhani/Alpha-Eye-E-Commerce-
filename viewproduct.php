<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cssStyle/viewproduct.css">
    <title>Product | Alpha Eye</title>
    <?php include("config/remixicone.php");?>
    <?php include("config/fontfamily.php");?>
    <?php include("config/dbconnect.php"); ?>
</head>
<body>
    <div class="main">
        <?php include("component/nav.php")?>

        <div class="card-div">
                <?php 
                    $select ="SELECT * FROM product";
                    $result1 = mysqli_query($con, $select);
                     while($row = mysqli_fetch_assoc($result1)){
                    ?>
                                <div class="card">
                                    <a href="product.php?pid=<?php echo $row["productid"]; ?>">
                                    <img src="assets/images/<?php echo $row["img1"]; ?>" alt="main image">
                                    </a>
                                    <div class="detail-sec">
                                        <div class="name-div">
                                            <h3><?php echo $row["name"]; ?></h3>
                                            <h5><?php echo $row["subcategory"]; ?></h5>
                                            <h3>₹<?php echo $row["sellingprice"]; ?></h3>
                                        </div>
                                        <div class="btn-div">
                                            <a href="#"><button><i class="ri-shopping-cart-line"></i></button></a>
                                        </div>
                                    </div>
                                    
                                </div>
                       
                    <?php
                    }?>
            </div>
        </div>
    </div>
    
</body>
</html>