<?php
	include 'dbconnect.php';
	$id = $_REQUEST['id'];
	$query = "update maintenance set status = 'Completed' where mid = '$id'";
mysqli_query($conn,$query);
		echo "<script type = \"text/javascript\">
					alert(\"Work status updated\");
					window.location = (\"Employee View Alloted Work.php\")
				</script>";
?>