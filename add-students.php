<?php
session_start();

include('includes/dbconnection.php');
if (strlen($_SESSION['sturecmsaid']==0)) {
  header('location:logout.php');
  } else{
   if(isset($_POST['submit']))
  {
 $stuname=$_POST['stuname'];
 $stuemail=$_POST['stuemail'];
 $stuclass=$_POST['stuclass'];
 $gender=$_POST['gender'];
 $dob=$_POST['dob'];
 $stuid=$_POST['stuid'];
 $fname=$_POST['fname'];
 $mname=$_POST['mname'];
 $connum=$_POST['connum'];
 $altconnum=$_POST['altconnum'];
 $address=$_POST['address'];
 $username=$_POST['username'];
 $password=md5($_POST['password']);
 $password2=$_POST['password'];
 $eid=$_GET['editid'];
 $fi=$_POST['fi'];
 $si=$_POST['si'];
 $ti=$_POST['ti'];
 $btime=$_POST['btime'];
 $image=$_FILES["image"]["name"];

 $ret="select UserName from tblstudent where UserName=:uname || StuID=:stuid";
 $query= $dbh -> prepare($ret);
$query->bindParam(':uname',$uname,PDO::PARAM_STR);
$query->bindParam(':stuid',$stuid,PDO::PARAM_STR);
$query-> execute();
     $results = $query -> fetchAll(PDO::FETCH_OBJ);
if($query -> rowCount() == 0)
{
$extension = substr($image,strlen($image)-4,strlen($image));
$allowed_extensions = array(".jpg","jpeg",".png",".gif");
if(!in_array($extension,$allowed_extensions))
{
echo "<script>alert('Logo has Invalid format. Only jpg / jpeg/ png /gif format allowed');</script>";
}
else
{
$image=md5($image).time().$extension;
 move_uploaded_file($_FILES["image"]["tmp_name"],"images/".$image);
 
 $sign=md5($sign).time().$extension;
 move_uploaded_file($_FILES["sign"]["tmp_name1"],"images/".$sign);
$sql="insert into tblstudent(StudentName,StudentEmail,StudentClass,Gender,DOB,StuID,FatherName,MotherName,ContactNumber,AltenateNumber,Address,FirstInstall,secondInstall,thirdInstall,Image,Sign,BatchTime,UserName, Password)values(:stuname,:stuemail,:stuclass,:gender,:dob,:stuid,:fname,:mname,:connum,:altconnum,:address,:fi,:si,:ti,:image,:sign,:btime,:username,:password)";
$query=$dbh->prepare($sql);



$sql3="INSERT INTO `late` (`late_id`,`user_no`, `password`, `fname`, `mname`, `lname`, `datehire`, `designation`, `Department`, `id`) VALUES ('',:username,:password2, :stuname, 'NULL', NULL, '', '', '', 'OFFLINE')";
$query2=$dbh->prepare($sql3);

$sql5="INSERT INTO `tbl_student_att` (`id`, `name`, `roll`) VALUES (:stuid,:stuname,:stuid)";
$query5=$dbh->prepare($sql5);



$query->bindParam(':stuname',$stuname,PDO::PARAM_STR);
$query->bindParam(':stuemail',$stuemail,PDO::PARAM_STR);
$query->bindParam(':stuclass',$stuclass,PDO::PARAM_STR);
$query->bindParam(':gender',$gender,PDO::PARAM_STR);
$query->bindParam(':dob',$dob,PDO::PARAM_STR);
$query->bindParam(':stuid',$stuid,PDO::PARAM_STR);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':mname',$mname,PDO::PARAM_STR);
$query->bindParam(':connum',$connum,PDO::PARAM_STR);
$query->bindParam(':altconnum',$altconnum,PDO::PARAM_STR);
$query->bindParam(':address',$address,PDO::PARAM_STR);
$query->bindParam(':fi',$fi,PDO::PARAM_STR);
$query->bindParam(':si',$si,PDO::PARAM_STR);
$query->bindParam(':ti',$ti,PDO::PARAM_STR);
$query->bindParam(':btime',$btime,PDO::PARAM_STR);

$query->bindParam(':username',$username,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);

$query->bindParam(':image',$image,PDO::PARAM_STR);
$query->bindParam(':sign',$sign,PDO::PARAM_STR);

$query->execute();



$query2->bindParam(':stuname',$stuname,PDO::PARAM_STR);
$query2->bindParam(':username',$username,PDO::PARAM_STR);
$query2->bindParam(':password2',$password2,PDO::PARAM_STR);
$query2->execute();

 
   $LastInsertId=$dbh->lastInsertId();
   if ($LastInsertId>0) {
    echo '<script>alert("Student has been added.")</script>';
echo "<script>window.location.href ='add-students.php'</script>";
  }
  else
    {
         echo '<script>alert("Something Went Wrong. Please try again")</script>';
    }
}}

else
{

echo "<script>alert('Username or Student Id  already exist. Please try again');</script>";
}
}
  ?>
<!DOCTYPE html>
<html lang="en">
  <head>
   
    <title>Student  Management System|| Add Students</title>
    <!-- plugins:css -->
    
<link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/select2/select2.min.css">
    <link rel="stylesheet" href="vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css/style.css" />
    
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:partials/_navbar.html -->
     <?php include_once('includes/header.php');?>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
      <?php include_once('includes/sidebar.php');?>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper" style="background-color:#c5c9d1">
            <div class="page-header">
              <h3 class="page-title"> Add Students </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page" > Add Students</li>
                </ol>
              </nav>
            </div>
            <div class="row">
          
              <div class="col-11 grid-margin stretch-card ">
                <div class="card" style="background-color:#ebeef2">
                  <div class="card-body">
                    <h4 class="card-title" style="text-align: center;" style="background-color:black">Add Students</h4>
                   
                    <form class="forms-sample" method="post" enctype="multipart/form-data">
                      <div class="form-group">
					  						<?php $sql4 = "SELECT MAX(ID) AS M from  tblstudent  ";
$query4 = $dbh -> prepare($sql4);
$query4->execute();
$result4=$query4->fetchAll(PDO::FETCH_OBJ);

foreach($result4 as $row4)
{          
    ?> 
                        <label for="exampleInputName1"><b>Student ID (Last ID:<?php echo htmlentities($row4->M); }?>)</b></label>
                        <input type="text" name="stuid" value="" class="form-control"  placeholder="Enter ID">


                      </div> 
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Student Name</b></label>
                        <input type="text" name="stuname" value="" class="form-control" required='true' placeholder="Enter Name">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Student Email</b></label>
                        <input type="text" name="stuemail" value="" class="form-control" required='true' placeholder="Enter E-Mail">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail3"><b>Student Course</b></label>
                        <select  name="stuclass" class="form-control" required='true'>
                          <option value="">Select Class</option>
                         <?php 

$sql2 = "SELECT * from    tblclass ";
$query2 = $dbh -> prepare($sql2);
$query2->execute();
$result2=$query2->fetchAll(PDO::FETCH_OBJ);

foreach($result2 as $row1)
{          
    ?>  
<option value="<?php echo htmlentities($row1->ID);?>"><?php echo htmlentities($row1->ClassName);?> <?php echo htmlentities($row1->Section);?></option>
 <?php } ?> 
                        </select>
						
						
						 <div class="form-group">
                        <label for="exampleInputName1"><b>Batch Time</b></label>
                        <input type="time" name="btime" value="" class="form-control" >
                      </div>
                     
						
						
						
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Gender<b></label>
                        <select name="gender" value="" class="form-control" required='true'>
                          <option value="">Choose Gender</option>
                          <option value="Male">Male</option>
                          <option value="Female">Female</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Date of Birth</b></label>
                        <input type="date" name="dob" value="" class="form-control" required='true'>
                      </div>
                     
                      
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Student Photo</b></label>
                        <input type="file" name="image" value="" class="form-control" >
                      </div>
					  <div class="form-group">
                        <label for="exampleInputName1"><b>Student Signature</b></label>
                        <input type="file" name="sign" value="" class="form-control" >
                      </div>
                      <h3>Parents/Guardian's details</h3>
					  
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Father's Name</b></label>
                        <input type="text" name="fname" value="" class="form-control" required='true' placeholder="Enter Father`s Name">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Mother's Name<b></label>
                        <input type="text" name="mname" value="" class="form-control" required='true' placeholder="Enter Mother`s Name">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Contact Number</b></label>
                        <input type="text" name="connum" value="" class="form-control" required='true' maxlength="10" pattern="[0-9]+" placeholder="Enter Contact Number">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Alternate Contact Number</b></label>
                        <input type="text" name="altconnum" value="" class="form-control"  maxlength="10" pattern="[0-9]+" placeholder="Enter Alternate Contact Number">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1"><b>Address</b></label>
                        <textarea name="address" class="form-control" required='true ' placeholder="Enter  Address"></textarea>
                      </div>
					  
					  
<h3>Login details</h3>
<div class="form-group">
                 
                        <label for="exampleInputName1">User Name</label>
                        <input type="text" name="username" value="" class="form-control" required='true' placeholder="Enter  UserName">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Password</label>
                        <input type="Password" name="password" value="" class="form-control" required='true' placeholder="Enter Password">
                      </div>
					  
	<h3>Fees details</h3>
<div class="form-group">
                 
                        <label for="exampleInputName1"><b>First Installation</b></label>
                        <input type="text" name="fi" value="" class="form-control" required='true' placeholder="Enter First Installation ">
                      </div>
                     <div class="form-group">
                 
                        <label for="exampleInputName1"><b>Second Installation</b></label>
                        <input type="text" name="si" value="" class="form-control"   placeholder="Enter Second Installation ">
                      </div>
					  <div class="form-group">
                 
                        <label for="exampleInputName1"><b>Third Installation</b></label>
                        <input type="text" name="ti" value="" class="form-control"   placeholder="Enter Third Installation ">
                      
                      </div>		  
					  
					  
					  
					  
                      <button type="submit" class="btn btn-primary mr-2" name="submit">Add</button>
                     
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
         <?php include_once('includes/footer.php');?>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="vendors/select2/select2.min.js"></script>
    <script src="vendors/typeahead.js/typeahead.bundle.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="js/typeahead.js"></script>
    <script src="js/select2.js"></script>
    <!-- End custom js for this page -->
  </body>
</html><?php }  ?>