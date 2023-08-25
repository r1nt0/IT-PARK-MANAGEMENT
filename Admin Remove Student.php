<?php
	include 'dbconnect.php';
	$id = $_REQUEST['id'];
	$query = "delete from studentreg where sid = '$id'";
mysqli_query($conn,$query);
		echo "<script type = \"text/javascript\">
					alert(\"Successfully Removed\");
					window.location = (\"Admin View Student.php\")
				</script>";
?>