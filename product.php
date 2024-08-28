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
                                 <a href="product.php?pid=<?php echo $row['productid'];?>"><div class="color-box" style="background-color:<?php echo $row['color'];?>"></div></a>
                                <?php
                            }
                         ?>
                        </div>
                        </div>
                                <div class="button-div">
                                    <button onclick="show()">Add To Cart</button>
                                </div>
                    <div class="detail-section">
                        <details>    
                            <summary><h3 style="display:inline;">Product Details</h3></summary>
                            <p><?php echo $product['detail']?></p>
                        </details>
                    </div>
                </div>

        </div>
                <div class="box">     
                     <!-- here lense select part  -->
                    <div class="select-lenses">
                            <button id="close"><i class="ri-close-circle-line"></i></button>
                    <i class="ri-star-line"></i>
                    <h1>Add Lenses</h1>
                        <p>You have chosen a <?php echo $product['size']; ?> sized frame<br>
                        for ₹<?php echo $product['mrp'];?></p>


                            <button id="btn-buy" onclick="next(2)">
                                <h5>Buy With Lenses</h5>
                            </button>
                                <a herf="selectlense.php?name=<?php echo $product['name']; ?>&pid=<?php echo $product['productid']; ?>">
                                    <button id="btn-frm">
                                        <h5>I need only frames</h5>
                                    </button>
                                </a>

                    </div>
                    <!-- end of lens select part -->
                
                <div class="select-lenses2">
                        <button id="close"><i class="ri-close-circle-line"></i></button>
                    <h1>Select Power Type</h1>
                    <div class="type-lense" id="type1" onclick="getlense(1)">
                        <img src="assets/staticimg/single_vision.webp" alt="zero power image">
                        <div class="detail-name">
                            <h3>Single Vision/Powered Eyeglasses</h3>
                            <p>For distance or near vision.</p>
                        </div>
                    </div>
                    <div class="type-lense"id="type2" onclick="getlense(2)">
                        <img src="assets/staticimg/zero_power.webp" alt="zero power image">
                        <div class="detail-name">
                            <h3>Zero Power Eyeglasses</h3>
                            <p>Fashion or Protection from Glare/Computer Screens etc.</p>
                        </div>
                    </div>
                    <div class="type-lense" id="type3" onclick="getlense(3)">
                        <img src="assets/staticimg/bifocal.webp" alt="zero power image">
                        <div class="detail-name">
                            <h3>Bifocal/Progressive Eyeglasses</h3>
                            <p>Distance & Near vision in same lenses.</p>
                        </div>
                    </div>

                    <button onclick="next(3)">Continue</button>
                </div>

                <div class="select-lenses3">
                <h1>Select Lenses Type</h1>
                <button onclick="next(3)">Continue</button>
                </div>

            </div>
                

        <!-- <?php include("component/footer.php");?>  Include footer -->
    </div>
    <script>
        var mainimg= document.querySelector('#main-img');
        
        function changeimg(imgno){
            var srcurl=mainimg.src;
            mainimg.src=document.querySelector(`#subimg${imgno}`).src;
            document.querySelector(`#subimg${imgno}`).src=srcurl;
        }
        function show(){
            document.querySelector('.box').style.display='block';
        }

        document.querySelector("#close").addEventListener("click",()=>{
            document.querySelector('.box').style.display='none';
        });

        // document.querySelector("#btn-buy").addEventListener("click",()=>{
        //     console.log("dddd");
        //     // document.querySelector('#select-lenses').style.display='none';
        // });
        var selectpower="";
        function next(pageno){
            if(pageno==2){
                document.querySelector('.select-lenses').style.display='none';
                document.querySelector(`.select-lenses2`).style.display='flex';
            }
            else if(pageno==3){
                if(selectpower!=""){
                    document.querySelector('.select-lenses').style.display='none';
                    document.querySelector('.select-lenses2').style.display='none';
                    document.querySelector(`.select-lenses3`).style.display='flex';
                    if(selectpower=="Single Vision/Powered Eyeglasses"){
                        document.querySelector(`.select-lenses3`).innerHTML+=`
                         <div class="type-lense2">
                            <img src="assets/staticimg/basic_single_low.webp" alt="zero power image">
                            <div class="detail-name2">
                                <div>
                                    <h3>Basic</h3>
                                    <h3>₹1200</h3>
                                </div>
                                <p>
                                    Scratch Resistant<br>
                                    Dust & Water Resistant<br>
                                    High Clarity<br>
                                    High Durability<br>
                                </p>
                            </div>
                        </div>

                        <div class="type-lense2">
                            <img src="assets/staticimg/basic_single_low.webp" alt="zero power image">
                            <div class="detail-name2">
                                <div>
                                    <h3>BLUE TECH +</h3>
                                    <h3>₹2500</h3>
                                </div>
                                <p>
                                    Scratch Resistant<br>
                                    Blue Filter<br>
                                    Dust & Water Resistant<br>
                                    High Clarity<br>
                                    High Durability<br>
                                </p>
                            </div>
                        </div>
                        `;
                    }
                    else if(selectpower=="Zero Power Eyeglasses"){
                        document.querySelector(`.select-lenses3`).innerHTML+=`
                         <div class="type-lense2">
                            <img src="assets/staticimg/basic_single_low.webp" alt="zero power image">
                            <div class="detail-name2">
                                <div>
                                    <h3>Blue Filter+</h3>
                                    <h3>₹2500</h3>
                                </div>
                                <p>
                                    Scratch Resistant<br>
                                    Dust & Water Resistant<br>
                                    High Clarity<br>
                                    High Durability<br>
                                </p>
                            </div>
                        </div>

                        `;
                    }
                    else if(selectpower=="Bifocal/Progressive Eyeglasses"){
                        document.querySelector(`.select-lenses3`).innerHTML+=`
                         <div class="type-lense2">
                            <img src="assets/staticimg/basic_single_low.webp" alt="zero power image">
                            <div class="detail-name2">
                                <div>
                                    <h3>Neo Digi</h3>
                                    <h3>₹3000</h3>
                                </div>
                                <p>
                                    Scratch Resistant<br>
                                    UV400 Protect<br>
                                    Dust & Water Resistant<br>
                                    High Clarity<br>
                                    High Durability<br>
                                </p>
                            </div>
                        </div>

                         <div class="type-lense2">
                            <img src="assets/staticimg/basic_single_low.webp" alt="zero power image">
                            <div class="detail-name2">
                                <div>
                                    <h3>Neo Digi with Anti Reflect</h3>
                                    <h3>₹4500</h3>
                                </div>
                                <p>
                                    Scratch Resistant<br>
                                    Anti Reflective<br>
                                    UV400 Protect<br>
                                    Dust & Water Resistant<br>
                                    High Clarity<br>
                                    High Durability<br>
                                </p>
                            </div>
                        </div>
                        
                        
                        `;
                    }
                    else{alert("Please select power type");}
                }
                else{
                    alert("Please select power type");
                }
            }
            // document.querySelector('.select-lenses').style.display='none';
            // document.querySelector(`.select-lenses${pageno-1}`).style.display='none';
            // // document.querySelector(`#page${pageno}`).style.display='block';
            // document.querySelector(`.select-lenses${pageno}`).style.display='flex';
        }


         function getlense(arg){
            if(arg==1){
                document.querySelector('#type1').style.backgroundColor='#fafdff';
                document.querySelector('#type2').style.backgroundColor='#fff';
                document.querySelector('#type3').style.backgroundColor='#fff';
                selectpower="Single Vision/Powered Eyeglasses";
            }
            else if(arg==2){
                document.querySelector('#type2').style.backgroundColor='#fafdff';
                document.querySelector('#type1').style.backgroundColor='#fff';
                document.querySelector('#type3').style.backgroundColor='#fff';
                selectpower="Zero Power Eyeglasses";
            }
            else if(arg==3){
                document.querySelector('#type3').style.backgroundColor='#fafdff';
                document.querySelector('#type1').style.backgroundColor='#fff';
                document.querySelector('#type2').style.backgroundColor='#fff';
                selectpower="Bifocal/Progressive Eyeglasses";
            }
            else{
                alert("Please select power type");
            }
        }



    
    </script>
</body>
</html>