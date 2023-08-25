<?php
	include 'dbconnect.php';
	$id = $_REQUEST['id'];
	$query = "delete from employee_reg where empid = '$id'";
mysqli_query($conn,$query);
		echo "<script type = \"text/javascript\">
					alert(\"Successfully Rejected\");
					window.location = (\"Admin View Employee.php\")
				</script>";
?>