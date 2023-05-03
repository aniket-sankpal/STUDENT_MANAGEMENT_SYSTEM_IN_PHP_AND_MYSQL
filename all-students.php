<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['sturecmsaid']==0)) {
  header('location:logout.php');
  } else{
   // Code for deletion
if(isset($_GET['delid']))
{
$rid=intval($_GET['delid']);
$sql="delete from tblstudent where ID=:rid";
$query=$dbh->prepare($sql);
$query->bindParam(':rid',$rid,PDO::PARAM_STR);
$query->execute();
 echo "<script>alert('Data deleted');</script>"; 
  echo "<script>window.location.href = 'manage-fees.php'</script>";     


}
?>
<!DOCTYPE html>
<html lang="en">
  <head>
   
    <title>Student  Management System|||Manage Students Fees</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="./vendors/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="./vendors/chartist/chartist.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="./css/style.css">
    <!-- End layout styles -->
   
  </head>
  <body>
   

      
          <div class="content-wrapper">
             <div class="page-header">
              <h3 class="page-title"> Manage Students Details </h3>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                  <li class="breadcrumb-item active" aria-current="page"> Manage Students</li>
                </ol>
              </nav>
            </div>
            <div class="row">
              <div class="col-md-12 grid-margin stretch-card">
                <div class="card">
				<form action="dashboard.php" >
				<Button >< BACK Dashboard</a></Button>
				</form>
				
                  <div class="card-body" style="background-color:#c5c9d1">
				  
                    <div class="d-sm-flex align-items-center mb-4">
                      <h4 class="card-title mb-sm-0">Manage Students Details</h4>
                      <a href="#" class="text-dark ml-auto mb-3 mb-sm-0"> View all Students Fees</a>
                    </div>
                    <div class="table-responsive border rounded p-1">
                      <table class="table">
					  
					  <thead style="background-color:#37465e">
					  <th class="font-weight-bold" style="color:#fafbfc"><h5>S.No</h5></th>
					  <th class="font-weight-bold" style="color:#fafbfc"><h5>Student ID</h5></th>
					  <th class="font-weight-bold" style="color:#fafbfc"><h5>Student Course</h5></th>
					  <th class="font-weight-bold" style="color:#fafbfc"><h5>Student Name</h5></th>
<!-- <th class="font-weight-bold">Student Email</th> -->
					  <!-- <th class="font-weight-bold" style="color:#fafbfc"><h5><b>Admission Date</b></h5></th> -->
					 <!-- <th class="font-weight-bold" style="color:#fafbfc"><h5><b>Batch Time</b></h5></th> -->
					  <th></th>
					  <th></th>
						 <th class="font-weight-bold" style="color:#fafbfc"><h5>Fees</h5></th>
						  <th></th>
						 	<th class="font-weight-bold" style="color:#fafbfc"><h5> Fees</h5></th>
							<th class="font-weight-bold" style="color:#fafbfc"><h5>Fees Status</h5></th>
							 <th class="font-weight-bold" style="color:#fafbfc"><h5>Action</h5></th>
						 </thead>
                        <thead style="background-color:#37465e">
						
						
                          <tr>
                            <th ></th>
                            <th class="font-weight-bold"></th>
                            <th class="font-weight-bold"></th>
                            <th class="font-weight-bold"></th>
                            <th class="font-weight-bold"></th>
                          
							
                            <th class="font-weight-bold" style="color:#fafbfc"><h5>I st installation</h5></th>
							<th class="font-weight-bold" style="color:#fafbfc"><h5>II nd installation</h5></th>
							<th class="font-weight-bold" style="color:#fafbfc"><h5>III rd installation</h5></th> 
							<th class="font-weight-bold"></th>
							<th class="font-weight-bold"></th>
                            <th class="font-weight-bold"></th>
                         </tr>
                        </thead>
						
                        <tbody>
                           <?php
                            if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        // Formula for pagination
        $no_of_records_per_page = 15;
        $offset = ($pageno-1) * $no_of_records_per_page;
       $ret = "SELECT ID FROM tblstudent";
$query1 = $dbh -> prepare($ret);
$query1->execute();
$results1=$query1->fetchAll(PDO::FETCH_OBJ);
$total_rows=$query1->rowCount();
$total_pages = ceil($total_rows / $no_of_records_per_page);
$sql="SELECT tblstudent.StuID,tblstudent.ID as sid,tblstudent.StudentName,tblstudent.StudentEmail,tblstudent.DateofAdmission,tblstudent.FirstInstall,tblstudent.secondInstall,tblstudent.thirdInstall,tblstudent.BatchTime,tblclass.ClassName,tblclass.Section from tblstudent join tblclass on tblclass.ID=tblstudent.StudentClass LIMIT $offset, $no_of_records_per_page";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>   
                          <tr>
                           
                            <td><h4><?php echo htmlentities($cnt);?></h4></td>
                            <td><h4><?php  echo htmlentities($row->StuID);?></h4></td>
                            <td><h4><?php  echo htmlentities($row->ClassName);?> <?php  echo htmlentities($row->Section);?></b></h4></td>
                            <td><h4><?php  echo htmlentities($row->StudentName);?></h4></td>
                            <!-- <td><?php  echo htmlentities($row->StudentEmail);?></h4></td> -->
							
                            <!-- <td><?php  echo htmlentities($row->DateofAdmission);?></b></h4></td> -->
                            <!--  <td><?php  echo htmlentities($row->BatchTime);?></td> -->
							  <td></td>
							<td><h4><?php  echo htmlentities($row->FirstInstall);?></h4></td>
                           
                            <td><h4><?php  echo htmlentities($row->secondInstall);?></h4>
							<td><h4><?php  echo htmlentities($row->thirdInstall);?></h4>
							
                            </td>
							<td><h4>
							<?php  echo $t=$row->FirstInstall+$row->secondInstall+$row->thirdInstall;?></h4>
                            </td>
							
							<td><h4>
							<?php  
							if($t>25000)
							{echo '<span style="color:green">'."Complete".'</span>';
							}
							else{ echo '<span style="color:red">'."Incomplete".'</span>';
							}?>
							</h4>
                            </td>
							
							
							<td>
							 <div><a href="edit-student-detail.php?editid=<?php echo htmlentities ($row->sid);?>"><!--<i class="icon-eye"></i>--><h5><u>Edit</u></h5></a>
                                                <!--|| --><a href="manage-students.php?delid=<?php echo ($row->sid);?>" onclick="return confirm('Do you really want to Delete ?');"> <!--<i class="icon-trash"></i>--><span style="color:red"> <h5><u>Delete</u></h5></span></a></div>
                           
                            </td>
                          </tr><?php $cnt=$cnt+1;}} ?>
                        </tbody>
                      </table>
                    </div>
                    <div align="left">
    <ul class="pagination" >
        <li><a href="?pageno=1"><strong>First></strong></a></li>
        <li class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">
            <a href="<?php if($pageno <= 1){ echo '#'; } else { echo "?pageno=".($pageno - 1); } ?>"><strong style="padding-left: 10px">Prev></strong></a>
        </li>
        <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
            <a href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?pageno=".($pageno + 1); } ?>"><strong style="padding-left: 10px">Next></strong></a>
        </li>
        <li><a href="?pageno=<?php echo $total_pages; ?>"><strong style="padding-left: 10px">Last</strong></a></li>
    </ul>
	<form action="dashboard.php" >
				<Button >< BACK Dashboard</a></Button>
				</form>
</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
         <?php include_once('includes/footer.php');?>
          <!-- partial -->

        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
   
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="./vendors/chart.js/Chart.min.js"></script>
    <script src="./vendors/moment/moment.min.js"></script>
    <script src="./vendors/daterangepicker/daterangepicker.js"></script>
    <script src="./vendors/chartist/chartist.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="./js/dashboard.js"></script>
    <!-- End custom js for this page -->
  </body>
</html><?php }  ?>