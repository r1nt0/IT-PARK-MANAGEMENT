<?php
	include 'dbconnect.php';
	$id = $_REQUEST['id'];
	
	$query = "delete from companyreg where cid = '$id'";
	
mysqli_query($conn,$query);

		echo "<script type = \"text/javascript\">
					alert(\"Successfully Removed\");
					window.location = (\"Admin View Existing.php\")
				</script>";
?>