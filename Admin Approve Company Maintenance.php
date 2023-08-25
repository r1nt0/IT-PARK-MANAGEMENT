<?php
	include 'dbconnect.php';
	$id = $_REQUEST['id'];
	$query = "update maintenance  set status = 'Alloted' where mid = '$id'";
	mysqli_query($conn,$query);
		echo "<script type = \"text/javascript\">
					alert(\"Forwarded Company Maintenance\");
					window.location = (\"Admin View Company Maintenance.php\")
				</script>";
?>