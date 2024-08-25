<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet/admindeshtop.css">
    <title>Admin dashboard | Alphaeye</title>
</head>
<body>
    <div class="main">
   <?php 
    include("component/adminnav.php");
    include("../config/fontfamily.php");
    include("component/authenticate.php");
    ?>
     <div class="deshboard">
            <div class="top-sec">
        <div class="box">
            <div class="icon">
                <i class="ri-file-list-line"></i>
            </div>
            <h1>
                100
            </h1>
            <h4>
                Current Orders
            </h4>
            
        </div>

        <!-- second box -->

        <div class="box">
            <div class="icon">
                <i class="ri-bar-chart-box-line"></i>
            </div>
            <h1>
                1000$
            </h1>
            <h4>
                Total Sales
            </h4>
            
        </div>


        <!-- therd box -->

        <div class="box">
            <div class="icon">
                <i class="ri-user-add-line"></i>    
            </div>
            <h1>
                10
            </h1>
            <h4>
                New Coustomer
            </h4>
            
        </div>


            </div>
            <div class="center-sec">
        <h1>Recent Orders</h1>
        <!-- table heading -->
        <div class="order-heading">
            <div class="oder-id">
                <h3>id</h3>
            </div>
            <div class="details">
                <h3>Product Name</h3>
            </div>
            <div class="price">
                <h3>Price</h3>
            </div>
            <div class="status">
                <h3>Status</h3>
            </div>
            <div class="action">
                <h3>Action</h3>
            </din>
        </div>
        </div>

        <!-- here table data show start -->

        <div class="order-data">
            <div class="oder-id">
                <h3>1</h3>
            </div>
            <div class="details">
                <h3>Sunglass</h3>
            </div>
            <div class="price">
                <h3>3000</h3>
            </div>
            <div class="status">
                <h3>Running</h3>
            </div>
            <div class="action">
                <h3><a href=""><i class="ri-arrow-right-s-line"></i></a></h3>
            </din>
        </div>
      
        

        
</div>
        <div class="order-data">
            <div class="oder-id">
                <h3>1</h3>
            </div>
            <div class="details">
                <h3>Sunglass</h3>
            </div>
            <div class="price">
                <h3>3000</h3>
            </div>
            <div class="status">
                <h3>Running</h3>
            </div>
            <div class="action">
                <h3><a href=""><i class="ri-arrow-right-s-line"></i></a></h3>
            </din>
        </div>






    </div>

</body>
</html>