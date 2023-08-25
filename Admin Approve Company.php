<?php
	include 'dbconnect.php';
	$id = $_REQUEST['id'];
	$query = "update companyreg set status = '1' where cid = '$id'";
mysqli_query($conn,$query);
		echo "<script type = \"text/javascript\">
					alert(\"Successfully Accepted\");
					window.location = (\"Admin View Company.php\")
				</script>";
?>