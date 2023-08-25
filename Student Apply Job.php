
<?php
include('dbconnect.php');
include('Student Page Header.php');
session_start();
$sid = $_SESSION['sid'];
$qua = $_SESSION['qua'];
$qual = $_GET['qual'];
$id = $_GET['id'];
?>

<form method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Add Your Resume</td>
			<td><input type="file" class="textbox" name="file"></td>
		</tr>
		<tr>
			<td><input type="submit" name="submit" value="Apply Now" class="but"></td>
		</tr>
	</table>
</form>

<?php
if(isset($_POST['submit']))
{
$pdf=$_FILES['file']['name'];
$pdf_type=$_FILES['file']['type'];
$pdf_size=$_FILES['file']['size'];
$pdf_tem_loc=$_FILES['file']['tmp_name'];
$pdf_store="Resume/".$pdf;	

move_uploaded_file($pdf_tem_loc,$pdf_store);

$qry="INSERT INTO jobapply(jobid,sid,resume)values('$id','$sid','$pdf')";
$res=mysqli_query($conn,$qry);
echo "<script>alert('successfully applied')</script>";
}

?>


<?php

include('Common Page Footer.php');
?>
