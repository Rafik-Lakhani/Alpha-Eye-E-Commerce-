<link rel="stylesheet" href="singin.css">
<?php include("component/nav.php");?>
<?php include("config/remixicone.php");?>
<?php include("config/fontfamily.php");
?>
<link rel="stylesheet" href="component/nav.css">
<div class="login-container">
    <div class="login-div">
        <a href="index.php">
            <i class="ri-close-fill close-icon"></i>
        </a>
        <h1 class="heading">Sign in</h1>
        <form action="verify.php" method="post">
            <label for="email" class="email">Enter email</label>
            <input type="email" id="email" name="email" require placeholder="example@gmail.com">
            <label for="password" class="password">Enter Password</label>
            <div class="pw-div">
                <input type="password" id="password" name="password" placeholder="Enter Password" require> 
                <i class="ri-eye-off-line" id="pw-eye"></i>
            </div>
            <div class="msg-div">
                <h4>
                    <?php 
                        if(isset($_SESSION["massage"])){
                            echo $_SESSION["massage"];
                            unset($_SESSION["massage"]);
                        }
                    ?>
                </h4>
                <h4><a href="forget.php">Forget Password?</a></h4>
            </div>
            <input type="submit" name="login" id="login-sub" name="signin">

            <h3 id="signup">Don't Have Account? <a href="singup.php">Signup</a></h3>
        </form>
    </div>
</div>