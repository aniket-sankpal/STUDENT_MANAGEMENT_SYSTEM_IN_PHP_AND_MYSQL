
<html>
<head>
	<title>Registration system PHP and MySQL</title>
<style><link rel="stylesheet" href="style.css">

* { margin: 0px; padding: 0px; }
body {
	font-size: 120%;
	background: #F8F8FF;
}
.header {
	width: 40%;
	margin: 50px auto 0px;
	color: white;
	background: #5F9EA0;
	text-align: center;
	border: 1px solid #B0C4DE;
	border-bottom: none;
	border-radius: 10px 10px 0px 0px;
	padding: 20px;
}
form, .content {
	width: 40%;
	margin: 0px auto;
	padding: 20px;
	border: 1px solid #B0C4DE;
	background: white;
	border-radius: 0px 0px 10px 10px;
}
.input-group {
	margin: 10px 0px 10px 0px;
}
.input-group label {
	display: block;
	text-align: left;
	margin: 3px;
}
.input-group input {
	height: 30px;
	width: 93%;
	padding: 5px 10px;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid gray;
}
#user_type {
	height: 40px;
	width: 98%;
	padding: 5px 10px;
	background: white;
	font-size: 16px;
	border-radius: 5px;
	border: 1px solid gray;
}
.btn {
	padding: 10px;
	font-size: 15px;
	color: white;
	background: #5F9EA0;
	border: none;
	border-radius: 5px;
}
.error {
	width: 92%; 
	margin: 0px auto; 
	padding: 10px; 
	border: 1px solid #a94442; 
	color: #a94442; 
	background: #f2dede; 
	border-radius: 5px; 
	text-align: left;
}
.success {
	color: #3c763d; 
	background: #dff0d8; 
	border: 1px solid #3c763d;
	margin-bottom: 20px;
}
.profile_info img {
	display: inline-block; 
	width: 50px; 
	height: 50px; 
	margin: 5px;
	float: left;
}
.profile_info div {
	display: inline-block; 
	margin: 5px;
}
.profile_info:after {
	content: "";
	display: block;
	clear: both;
}</style>
</head>
<?php
session_start();
error_reporting(0);


$server = "localhost";
$user = "root";
$pass = "";
$dbname = "studentmsdb";
 
//Creating connection for mysqli
 
$con =  mysqli_connect($server, $user, $pass, $dbname);
 

if (isset($_REQUEST['username'])){
        // removes backslashes
		$aname = stripslashes($_REQUEST['aname']);
        //escapes special characters in a string
	$username = mysqli_real_escape_string($con,$aname); 
		
		
		$mobile = stripslashes($_REQUEST['mobile']);
        //escapes special characters in a string
	$username = mysqli_real_escape_string($con,$mobile); 
		
	$username = stripslashes($_REQUEST['username']);
        //escapes special characters in a string
	$username = mysqli_real_escape_string($con,$username); 
	$email = stripslashes($_REQUEST['email']);
	$email = mysqli_real_escape_string($con,$email);
	$password = stripslashes($_REQUEST['password']);
	$password = mysqli_real_escape_string($con,$password);
	
        $query = "INSERT into `tbladmin` (AdminName,username, password, email,mobile) VALUES('$aname','$username', '".md5($password)."', '$email','$mobile')";
        $result = mysqli_query($con,$query);
        if($result){
            echo "<div class='form'>
<h3>You are registered successfully.</h3>
<br/>Click here to <a href='login.php'>Login</a></div>";
        }
    }else{
?>







    

















<body>
<div class="header">
	<h2>Register</h2>
</div>
<form method="post" action="">
	<div class="input-group">
		<label>AdminName</label>
		<input type="text" required='true' name="aname" value=""  >
    
    
		   
	</div>

	<div class="input-group">
		<label>Username</label>
		<input type="text" required='true' name="username"   title="4 to 8 lowercase letters">
    
    
		   
	</div>
	<div class="input-group">
		<label>Mobile Number</label>
		<input type="number" required='true' maxlength="10" pattern="[0-9]+" name="mobile" >
	</div>
	<div class="input-group">
		<label>Email</label>
		<input type="email" required='true' name="email" value="">
	</div>
	<div class="input-group">
		<label>Password</label>
		<input type="password" required='true' name="password">
	</div>
	<div class="input-group">
		<label>Confirm password</label>
		<input type="password"  required='true' name="password_2">
	</div>
	<div class="input-group">
		<button type="submit" class="btn" name="submit">Register</button>
	</div>
	<p>
		Already a member? <a href="login.php">Sign in</a>
	</p>
</form>
</body>
</html>
