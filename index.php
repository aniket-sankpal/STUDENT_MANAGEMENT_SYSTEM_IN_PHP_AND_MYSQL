<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['login'])) 
  {
    $username=$_POST['username'];
    $password=md5($_POST['password']);
    $sql ="SELECT ID FROM tbladmin WHERE UserName=:username and Password=:password";
    $query=$dbh->prepare($sql);
    $query-> bindParam(':username', $username, PDO::PARAM_STR);
$query-> bindParam(':password', $password, PDO::PARAM_STR);
    $query-> execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    if($query->rowCount() > 0)
{
foreach ($results as $result) {
$_SESSION['sturecmsaid']=$result->ID;
}

  if(!empty($_POST["remember"])) {
//COOKIES for username
setcookie ("user_login",$_POST["username"],time()+ (10 * 365 * 24 * 60 * 60));
//COOKIES for password
setcookie ("userpassword",$_POST["password"],time()+ (10 * 365 * 24 * 60 * 60));
} else {
if(isset($_COOKIE["user_login"])) {
setcookie ("user_login","");
if(isset($_COOKIE["userpassword"])) {
setcookie ("userpassword","");
        }
      }
}
$_SESSION['login']=$_POST['username'];
echo "<script type='text/javascript'> document.location ='dashboard.php'; </script>";
} else{
echo "<script>alert('Invalid Details');</script>";
}
}

?>

<html>

<head>
<style>
body, html {
  height: 100%;
  background-color:black;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("bgpic2.jpg");

  /* Control the height of the image */
  min-height: 700px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 20px;
  max-width: 300px;
  padding: 16px;
  background-color:#f0f0eb;;
}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 250px;
  padding: 15px;
  margin: 5px 10px 30px 1000px;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: blue; 
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  margin: 4px 2px;
  cursor: pointer;
width:250px;
border-radius: 20px;
margin: 5px 10px 30px 1000px;
}


.btn:hover 
{
  opacity: 1;
background-color:green;
color:#c9f0d0;
}
.uname
{
margin: 5px 10px 30px 1000px;
}
.pass
{
margin: 5px 10px 30px 1000px;
}
h1
{
margin: 5px 10px 20px 1000px;
}

.topnav {
  background-color: #1e4a3f;
  overflow: visible;
   font-family: "Times New Roman", Times, serif;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 40px 30px;
  text-decoration: none;
  font-size: 30px;
  height:70px;
   font-family: "Times New Roman", Times, serif;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
border-radius: 12px 28px 12px 28px;
height:70px;
 font-family: "Times New Roman", Times, serif;
}

/* Add a color to the active/current link */
.topnav a.active {
  /*background-color: #8c968a;*/
  color: white;
height:70px;
border-radius: 12px 28px 12px 28px;
 font-family: "Times New Roman", Times, serif;
}
.img
{
margin:0px 55px 40px 15px;

 background-color: ;"
}
.container
{
margin: 5px 10px 30px 1100px;
background-color:#f0f0eb;
}
.cancelbtn
{
background-color: blue; 
  border: none;
  color: white;
  padding: 18px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 10px 15px;
  cursor: pointer;
border-radius: 12px 28px 12px 28px;
width:300px;
margin: 5px 20px 30px 1000px;
}
.psw
{
margin: 5px 10px 30px 1150px;
font-family: "Times New Roman", Times, serif;
color:#f7fafa;
} 
.cancelbtn:hover
{
background-color:green;
color:#c9f0d0;
}
.log
{
font-family: "Times New Roman", Times, serif;
color:#ddd;
}
.a
{
margin: 5px 10px 30px 1000px;
font-family: "Times New Roman", Times, serif;
color:#f7fafa;
}
.abt
{
margin: 5px 10px 30px 100px;
font-family: "Times New Roman", Times, serif;
}
.dnap
{
margin: 5px 10px 30px 100px;
font-family: "Times New Roman", Times, serif;
}
.dna
{
margin: 5px 10px 30px 100px;
font-family: "Times New Roman", Times, serif;
}
.p1
{
margin: 5px 10px 30px 100px;
font-family: "Times New Roman", Times, serif;
 
}
.asc
{
margin: 5px 10px 30px 100px;
font-family: "Times New Roman", Times, serif;
}
.dclass
{
background-image: url("background.jpg");
min-height: 700px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
.head
{
	margin: 5px 10px 30px 100px;
	font-family: "Times New Roman", Times, serif;
}
.para
{
	margin: 5px 10px 30px 100px;
	font-family: "Times New Roman", Times, serif;
} 
.footer {
position: fixed;
left: 10px;
bottom: 5px;
right: 10px; 
width: 95%;
background-color: gray;
color: white;
text-align: center;
/*-------------------------*/
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: right;}

/* Slideshow container */
.slideshow-container {
  width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
 .foot
 {
       margin: 20px auto;
       text-align: center;
 }
.mar
{
background-color: pink;
}
 </style>
</head>
<body>
 
<div class="topnav" style="height:82px;">
<a href="admin_register.php">Admin</a>
<a href="stu_register.php">Student</a>
  <a href="contact.php">Contact</a>
  <a href="about.php">About</a>
  <a href="index.php">Home</a>
 

<img src="i11.png" style="width="120"
 height="100" class="img">
</div>

 <form action="admin/dashboard.php" method="post" >

    <div class="bg-img">
    <div class="logo">
  
    </div>
    <div  class="formbg">
    <form  class="container" action="" name="login">
    <br>
    <h1 class="log">Admin Login</h1>
    <br>

    <label for="uname" class="uname"><b>UserName</b></label><br>
    <input type="text" size="10" id="uname" required="true" class="uname" placeholder="UserName" name="username" value="<?php if(isset($_COOKIE["user_login"])) { echo $_COOKIE["user_login"]; } ?>"/><br>
    <br>
    <label for="psw" class="pass"><b>Password</b></label><br>
    <input type="password" required="true" placeholder="Enter Password" name="password" value="<?php if(isset($_COOKIE["userpassword"])) { echo $_COOKIE["userpassword"]; } ?>"/>
    <br>
    <button type="submit" name="login" class="btn"><b>Login</b></button><br>

    <!--<input class="a" type="checkbox" id="remember" class="form-check-input" name="remember" <?php if(isset($_COOKIE["user_login"])) { ?> checked <?php } ?> /> Keep me signed in </label>--><a href="addregister.php" class="a"><b>I Dont Have Login</b><br>
    <br>
    <!-- <button type="button" class="cancelbtn">Cancel</button><br> -->
    </form>
    <span ><a href="admin/forgot-password.php" class="psw"><b>Forgot password</b></a><br></span><br><br>

  
    </div>
    </div>

    <div class="mar">
    <marquee behavior="alternate" direction="right" bgcolor="#91bdb3"scrollamount="18" vspace="10" hspace="18">
<img src="l1.jpg" width="400" height="400" alt="Natural" />
<img src="l2.jpg" width="400" height="400" alt="Natural" />
<img src="l3.jpg" width="400" height="400" alt="Natural" />
<img src="l4.jpg" width="400" height="400" alt="Natural" />
<img src="l5.jpg" width="400" height="400" alt="Natural" />
<img src="l6.jpg" width="400" height="400" alt="Natural" />
<img src="l7.jpg" width="400" height="400" alt="Natural" />

<img src="l1.jpg" width="400" height="400" alt="Natural" />
<img src="l2.jpg" width="400" height="400" alt="Natural" />
<img src="l3.jpg" width="400" height="400" alt="Natural" />
<img src="l4.jpg" width="400" height="400" alt="Natural" />
<img src="l5.jpg" width="400" height="400" alt="Natural" />
<img src="l6.jpg" width="400" height="400" alt="Natural" />
<img src="l7.jpg" width="400" height="400" alt="Natural" />

<img src="l1.jpg" width="400" height="400" alt="Natural" />
<img src="l2.jpg" width="400" height="400" alt="Natural" />
<img src="l3.jpg" width="400" height="400" alt="Natural" />
<img src="l4.jpg" width="400" height="400" alt="Natural" />
<img src="l5.jpg" width="400" height="400" alt="Natural" />
<img src="l6.jpg" width="400" height="400" alt="Natural" />
<img src="l7.jpg" width="400" height="400" alt="Natural" />


  </marquee>
 
</div>
<center>
 <footer class="foot">
      &copy; <em id="date"></em>Surabhi Computers Wai.All Rights Reserved
    </footer>
</center>
</body>
</html>