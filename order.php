<?php 
include("config/dbconnect.php");
if(isset($_POST["userprescriptionpage"])){
    session_start();
    $leftsph=$_POST['leftsph'];
    $rightsph=$_POST['rightsph'];
    $leftcyl=$_POST['leftcyl'];
    $rightcyl=$_POST['rightcyl'];
    $leftaxis=$_POST['leftaxis'];
    $rightaxis=$_POST['rightaxis'];
    $leftadd=$_POST['leftadd'];
    $rightadd=$_POST['rightadd'];

    if(isset($_SESSION['email'])&& isset($_SESSION['role'])){
       $useremail=$_SESSION['email'];
       $selectuser="select * from userdata where useremail='$useremail'";
       $userresult=mysqli_query($con,$selectuser);
       $userdata=mysqli_fetch_assoc($userresult);

        $selectcart="select * from cart where userid=$userdata[id]";
        $cartresult=mysqli_query($con,$selectcart);
        $cartdata=mysqli_fetch_assoc($cartresult);

        // fetch data from products table
        $selectproduct="select * from product where productid=$cartdata[productid]";
        $productresult=mysqli_query($con,$selectproduct);
        $productdata=mysqli_fetch_assoc($productresult);


        $amount=($productdata['sellingprice']+$cartdata['lensprice'])*$cartdata['quantity'];
        $lensprice=$cartdata['lensprice']*$cartdata['quantity'];

        $addorder="INSERT INTO `order`(`productid`, `userid`, `quantity`, `powertype`, `lenstype`, `lensprice`, `amount`) VALUES ($cartdata[productid],$cartdata[userid],$cartdata[quantity],'$cartdata[powertype]','$cartdata[lenstype]',$lensprice,$amount)";
        $orderresult=mysqli_query($con,$addorder);
        // here delete cart data from order plase
        if($orderresult){
            $deletecart="delete from cart where cartid = $cartdata[cartid]";
            $deletecartresult=mysqli_query($con,$deletecart);
        }

        if($orderresult){
                $selectorder="select * from `order` where userid=$userdata[id] AND productid=$cartdata[productid]";
                // echo $selectorder;
            $orderselectresult=mysqli_query($con,$selectorder);
            $orderdata=mysqli_fetch_assoc($orderselectresult);

            // add user eye number in data base

            $adduserpower="INSERT INTO `userprescription`(`orderid`, `userid`, `productid`, `leftSPH`, `rightSPH`, `leftCYL`, `rightCYL`, `leftAXIS`, `rightAXIS`, `leftADD`, `rightADD`) VALUES ($orderdata[orderid],$orderdata[userid],$orderdata[productid],$leftsph,$rightsph,$leftcyl,$rightcyl,$leftaxis,$rightaxis,$leftadd,$rightaxis)";
            $userpowerresult=mysqli_query($con,$adduserpower);
        }

        
        if($orderresult && $userpowerresult){
            header("Location: orderconformation.php");
            exit();
        }
    }
    else{
        header("Location: cart.php");
        exit();
    }

}
?>