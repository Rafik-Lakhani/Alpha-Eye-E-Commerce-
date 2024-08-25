<link rel="stylesheet" href="component/nav.css">
<?php
    session_start();
    include("./config/dbconnect.php");
    ?>
<nav>
        <div class="nav-div">
            <div class="left-nav">
                <a href="index.php" >
                    <h1>AlphaEye</h1>
                </a>
            </div>
            <div class="center-nav">
                <ol class="list">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="#">Category</a></li>
                    <li><a href="viewproduct.php">Product</a></li>
                    <li><a href="contect.php">ContectUs</a></li>
                </ol>
            </div>
            <div class="right-nav">
                <div class="search-div">
                    <input type="text" placeholder="Search Hare" id="search-input">
                    <i class="ri-search-line" id="search-icon"></i>
                </div>
                <?php 
                    if(!isset($_SESSION['email'])){
                        ?>
                            <a href="singin.php"><i class="ri-user-line"></i></a>
                    <?php
                    }
                    else{
                        $email=$_SESSION['email'];
                        $select="select * from userdata where useremail='$email'";
                 
                        $result=mysqli_query($con,$select);
                        $data=mysqli_fetch_assoc($result);
                        $char=str_split($data['username']);
                        ?>
                            <a href="logout.php"><i id="user-logo"><?php echo $char[0];?></i></a>
                        <?php
                    }
                ?>
                <a href="cart.php"><i class="ri-shopping-cart-2-line"></i></a>
            </div>
        </div>
    </nav>

    <script>
        // const search=document.querySelector("#search-icon");
        //     search.addEventListener("click",()=>{
        //      search.style.position="absolute"
        //      search.style.top="2px"
        //      search.style.right="5px"
        //      document.querySelector("#search-input").style.display="block";

        //      document.querySelector("#search-icon").style.display="block";
        //      document.querySelector("#search-icon").style.border="none";
        // })
    </script>