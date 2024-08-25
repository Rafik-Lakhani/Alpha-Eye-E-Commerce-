<link rel="stylesheet" href="component/adminnav.css">
<?php include("../config/remixicone.php");?>
<?php
    $pagenm=pathinfo($_SERVER["SCRIPT_FILENAME"],PATHINFO_BASENAME);
?>
<nav>
    <div class="nav_div">
        <div class="logo-center">
        <div class="top-nav">
            <h1>Admin</h1>
        </div>
        </div>
        <div class="center-nav">
            <ul>
                <li id="<?php if($pagenm=="index.php"){ echo"active"; } ?>">
                    <i class="ri-dashboard-line"></i>
                    <a class="active-a" href="../admin">Dashboard</a>
                </li>
                <li id="<?php if($pagenm=="orderadmin.php"){ echo "active"; }?>">
                    <i class="ri-shopping-cart-2-line"></i>
                    <a href="orderadmin.php">Order</a>
                </li>
                <li id="<?php if($pagenm=="additem.php"){ echo "active"; }?>">
                    <i class="ri-truck-line"></i>
                    <a href="additem.php">Add product</a>
                </li>
                <li id="<?php if($pagenm=="admincatagory.php"){ echo "active"; }?>">
                    <i class="ri-file-list-3-line"></i>
                    <a href="admincatagory.php">Category</a>
                </li>
                <li id="<?php if($pagenm=="user.php"){ echo "active"; }?>">
                    <i class="ri-user-line"></i>
                    <a href="user.php">User</a>
                </li>

            </ul>
       
        </div>
        <div class="bottom-nav">
            <button><a href="../logout.php">
            <i class="ri-logout-circle-line"></i>
            </a>Logout</button>
        </div>
    </div>
</nav>