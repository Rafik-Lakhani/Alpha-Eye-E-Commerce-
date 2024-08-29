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
        include("component/nav.php");
        include("config/dbconnect.php");
        include("config/fontfamily.php");
        include("config/remixicone.php");

    ?>
    <?php
    
        if(isset($_SESSION["email"])&& isset($_SESSION["role"])) {
            $useremail=$_SESSION['email'];
            $sql = "SELECT * FROM userdata WHERE useremail= '$useremail'";
            $result = mysqli_query($con, $sql);
            $data = mysqli_fetch_assoc($result);

                if(isset($_GET['productpage'])){

                        if($_GET['type']=="onlyframe"){
                            $productid=$_GET['productid'];

                            $insert="INSERT INTO `cart`(`userid`, `productid`) VALUES ($data[id] ,$productid)";
                            $ans=mysqli_query($con, $insert);
                            if($ans==false){
                                header("Location: $_SERVER[HTTP_REFERER]");
                            }
                            else{
                                header("Location: $_SERVER[HTTP_REFERER]");
                            }
                        }
                        else if($_GET['type']=="framewithglass"){
                            $powertype=$_GET['powertype'];
                            $lensetype=$_GET['lensetype'];
                            $lenseprice=$_GET['lenseprice'];
                            $productid=$_GET['productid'];

                            $insert="INSERT INTO `cart`( `userid`, `productid`, `powertype`, `lenstype`, `lensprice`) VALUES ($data[id], $productid, '$powertype', '$lensetype', $lenseprice)";

                            echo $insert;
                            $ans=mysqli_query($con, $insert);

                            if($ans==false){
                                header("Location: $_SERVER[HTTP_REFERER]");
                            }
                            else{
                                header("Location: $_SERVER[HTTP_REFERER]");
                            }

                        }
                        else{
                            header("Location: $_SERVER[HTTP_REFERER]");
                        }
            }
            else{
                // here simple cart request 
            }
        }
        else{
            header("Location: singin.php");
        }
    ?>
</body>
</html>