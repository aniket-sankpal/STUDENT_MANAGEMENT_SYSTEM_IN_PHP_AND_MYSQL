

<?php
$servername = "localhost";
$username = "root"; //edit if you have set a username for MySQL
$password = ""; // edit if you have set a password
$dbname = "studentmsdb";

// Create connection syntax
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

<?php
if(isset($_POST['submit'])){


$sql = "INSERT INTO `register_students`(`Username`, `MobileNumber`, `Email`, `Password`)  VALUES ('".$_REQUEST['username']."','".$_REQUEST['mobilenumber']."','".$_REQUEST['email']."','".$_REQUEST['password']."')";

if ($conn->query($sql) === TRUE) {
echo "
    <script type= 'text/javascript'>
        alert('New record created successfully');
    </script>";
} 
else 
{
    echo 
    "<script type= 'text/javascript'>
        alert('Error: " . $sql . "<br>" . $conn->error."');
    </script>";
}

$conn->close();
}
?>


<!doctype html>
<html>
<style>
body{  
 font-family:"Times New Roman", Times, serif; 
  background-color:#89c9c9; 

}
 
.sr
{
 font-family: "Times New Roman", Times, serif;
}  
.container { 

    padding: 50px;  
  background-color:#fafcfc;  
 width: 30%; 
 border-radius:2.25rem; 
margin: 1px 0px 3px 510px;
}  
  
input[type=text], input[type=password], textarea {  
  width: 94%;  
  padding: 15px;  
  margin: 5px 0 2px 0;  
  display: inline-block;  
  border:2px solid #EBEBEB;  
  background: #f1f1f1;
 box-sizing:border-box;
transition:all.3s linear;
-webkit-appearance:none;
font-size:1.125rem;
line-height:1.5rem;
padding:0.625rem 0.75rem;
border-radius:0.25rem;
   
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 94%;  
  opacity: 0.9;  
border-radius:2.25rem; 
}  
.registerbtn:hover {  
  opacity: 1;  
} 
.logbtn
{  
  background-color: #0b80b3;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 94%;  
  opacity: 0.9;
border-radius:2.25rem;   
} 
.logbtn:hover {  
  opacity: 6;  
}  

.homebtn
{  
  background-color: #143bba;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 94%;  
  opacity: 0.9; 
border-radius:2.25rem;  
} 
.homebtn:hover {  
  opacity: 6;  
}  

.form
{
margin 20px 30px 50px 100px;
} 
</style>
<head>
 <script>
const z=document.grtElementById('form').addEventListener('submit',validation);
function validation()
{
var a=document.getElementById("user_name").value;
var c=/^[A-Za-z]+$/;

   if(a==='')
{
document.getElementById("message").innerHTML="please fill your name";
return false;
}



var m=document.getElementById("mobile").value;




   if(m==='')
{
document.getElementById("msg").innerHTML="please fill mobile number";
return false;
}



var e=document.getElementById("email").value;




   if(e==='')
{
document.getElementById("emailmsg").innerHTML="please fill email";
return false;
}


if(a.length<3)
{
document.getElementById("message").innerHTML="username must be minimum 3 charactar ";
return false;
}
if(a.length>16)
{
document.getElementById("message").innerHTML="username must be maximum 16 charactar ";
return false;
}
if(a.match(c))
true;
else
{
document.getElementById("message").innerHTML="Only Alphbets Are Allows Numbers Not Allows";
return false;
}
 

var pass=document.getElementById('pass').value;
var conpass=document.getElementById('pass1').value;
 
 if(pass==='' && conpass==='')
{
document.getElementById('ms').innerHTML="password can not be blank";
document.getElementById('ms1').innerHTML="password can not be blank";
return false;
}
if(pass!==conpass)
{
document.getElementById('ms1').innerHTML="please match your password ";
return false;
}
if(pass.length<3)
{
document.getElementById("ms").innerHTML="Password must be minimum 3 charactar";
return false;
}

if(pass.length>8)
{
document.getElementById("ms").innerHTML="Password must be maximum 8charactar";
return false;
}




if(isNaN(m))
{
document.getElementById('msg').innerHTML="Enter Only Numaric values";
return false;
}

if(m.length<10)
{
document.getElementById('msg').innerHTML="Enter Only 10 digits";
return false;
}

if(m.length>10)
{
document.getElementById('msg').innerHTML="Enter Only 10 digits";
return false;
}
if((x.charAt(0)!=9)&&(x.charAt(0)!=8)&&(x.charAt(0)!=7))
{
document.getElementById('msg').innerHTML="Number Must Be Start With 9,8 And 7";
return false;

}



var k=document.getElementById("mail").value;
   if(k==='')
{
document.getElementById("ms2").innerHTML="please fill your email";
return false;
}
if(k.indexOf('@')<=0)
{
document.getElementById("ms2").innerHTML="Invalid @ postion"; 
return false;
}
if(k.charAt(k.length-4)!='.')
{
document.getElementById("ms2").innerHTML="Invalid (.) Postion At 4";
return false;
}
 
var x = document.getElementById("pass");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</head>
<body>
<form id="form" method="post" onsubmit="return validation();" class="form" action="loading.php">
<div class="container"> 
   
<center> <h1 class="sr">Student Registration</h1></center>

<br>
<input type="text" size="10" id="user_name" name="username" class="uname" placeholder="UserName"/ onkeypress="return /[a-z]/i.test(event.key)"><br>
<small id="message" style="color:red"></small>
<br>

 
<br>
<input type="text" id="mobile" class="mob" name="mobilenumber" maxlength="10" onkeypress=" return /[1234567890]/g.test(event.key)" placeholder="Mobile Number"></><br>
<small id="msg" style="color:red"></small><br>

 <br>
<input type="text" id="email" placeholder="E-Mail" name="email" pattern="[^@\s]+@[^@\s]+\.[^@\s]+" ></><br>
<small id="emailmsg" style="color:red"></small>
<br>
 <br>
<input type="password" id="pass" name="password" placeholder="Password"></>
<br>
<small id="ms" style="color:red"></small><br>
 <br>
<input type="password" id="pass1" placeholder="Confirm-Password"></>
<br>
<small id="ms1" style="color:red"></small><br>
<small id="ms1" style="color:red"></small><br>
<input type="submit" name="submit" value="Register" class="registerbtn"/>
</form>
<form  action="user/login.php">
<input type="submit" onclick="window.location.href='user/login.php'" value="I Have My Login" class="logbtn"    />

 </form>
 <Button onclick="window.location.href='index.php'" class="homebtn">Home</Button>
</div>  
</body>
</html>
