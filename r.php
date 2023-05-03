<?php
   $driver = new mysqli_driver();
   $driver -> report_mode = MYSQLI_REPORT_OFF;
   
   if(isset($_SESSION['log']))
   {
      header('Location: welcome.php');
      exit();
   }
   else
   {
      if($_SERVER["REQUEST_METHOD"] == "POST")
      {
         function validData($x)
         {
            $x = trim($x);
            $x = stripslashes($x);
            $x = htmlspecialchars($x);
            return $x;
         }
         
         $server = "localhost";
         $user = "root";
         $pass = "";
         $db = "codescracker";
      
         $conn = @new mysqli($server, $user, $pass, $db);
      
         if($conn->connect_errno)
         {
            echo "Database connection failed!<BR>";
            echo "Reason: ", $conn->connect_error;
            exit();
         }
      
         $fname = $lname = $uname = $email = $pass = "";
         $unameE = $emailE = $passE = "";
         
         $fname = validData($_POST["firstname"]);
         $lname = validData($_POST["lastname"]);
         $uname = validData($_POST["username"]);
         $email = validData($_POST["email"]);
         $pass = validData($_POST["password"]);
         
         if(empty($uname))
            $unameE = "Username field was empty!<BR>";
         if(empty($email))
            $emailE = "Email Id field was empty!<BR>";
         if(empty($pass))
            $passE = "Password field was empty!<BR>";
         if(strlen($uname)<6)
            $unameE .= "Username must be of 6 or more characters!<BR>";
         if(strlen($pass)<6)
            $passE .= "Password must be of 6 or more characters!<BR>";
         if(!filter_var($email, FILTER_VALIDATE_EMAIL))
            $emailE .= "Enter a valid Email ID!<BR>";
      
         if(!empty($unameE) || !empty($emailE) || !empty($passE))
            $err = "Try again";
         else
         {
            $sql = "INSERT INTO `users`(`FirstName`, `LastName`, `Username`, `Email`, `Password`)
               VALUES (?, ?, ?, ?, ?)";
            
            $stmt = $conn->prepare($sql);
            $stmt->bind_param("sssss", $fname, $lname, $uname, $email, $pass);
      
            if($stmt->execute())
            {
               $_SESSION['log'] = $uname;
               header('Location: welcome.php');
               exit();
            }
            else
               $execE = "Something went wrong<BR>Please try again!";
         }
         $conn->close();
      }
   }
?>
<HTML>
<HEAD>
<STYLE>
   .form{width: 400px; margin: auto; padding: 12px; border-left: 2px solid #ccc; border-radius: 18px;}
   h2{color: purple; text-align: center;}
   input{padding: 12px; width: 100%; margin-bottom: 12px; border: 0px; border-radius: 6px;
      background-color: #ccc;}
   button{margin: 20px 0px; width: 100%; background-color: #008080; color: white; padding: 12px;
      font-size: 1rem; border-radius: 6px;}
   p{text-align: center;}
   button:hover{cursor: pointer;}
   .red{color: red;}
</STYLE>
</HEAD>
<BODY>

<DIV class="form">
   <H2>User Registration Form</H2>
   <FORM name="register" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
      <LABEL>First Name</LABEL><BR>
      <INPUT type="text" name="firstname" placeholder="First Name"><BR>
      <LABEL>Last Name</LABEL><BR>
      <input type="text" name="lastname" placeholder="Last Name"><BR>
      <LABEL>Username
      <?php
         if(!empty($unameE))
            echo "<SPAN class=\"red\">*</SPAN>";
         else
            echo "*";
      ?>
      </LABEL><BR>
      <INPUT type="text" name="username" placeholder="Create Username" required><BR>
      <LABEL>Email
      <?php
         if(!empty($emailE))
            echo "<SPAN class=\"red\">*</SPAN>";
         else
            echo "*";
      ?>
      </LABEL><BR>
      <INPUT type="text" name="email" placeholder="Email ID" required><BR>
      <LABEL>Password
      <?php
         if(!empty($passE))
            echo "<SPAN class=\"red\">*</SPAN>";
         else
            echo "*";
      ?>
      </LABEL><BR>
      <INPUT type="text" name="password" placeholder="Create Password" required><BR>
      <BUTTON type="submit">Register</BUTTON>
   </FORM>
   <?php
   if(isset($err))
   {
      echo "<DIV class=\"red\">";
      if(!empty($unameE))
         echo $unameE;
      if(!empty($emailE))
         echo $emailE;
      if(!empty($passE))
         echo $passE;
      echo "</DIV>";
   }
   elseif(isset($execE))
      echo $execE;
   else
   {
      echo "<P><B>Direction: </B> Username and Password must be of 6 or more characters.<BR>";
      echo "Star (*) Fields must not be empty.<BR>";
      echo "Special characters are not allowed.</P>";
   }
   ?>
   <P>Already registered ? <a href="login.php">Login</a></P>
</DIV>

</BODY>
</HTML>