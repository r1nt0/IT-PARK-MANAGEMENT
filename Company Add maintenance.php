<?php
session_start();
include('dbconnect.php');
include('Company Page Header.php');
?>

<form method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Maintenance</td>
			<td><select name = "t1" class="textbox" style='color: deeppink;'>
				<option>---Select Maintenance---</option>
				<option value="Plumber">Plumber</option>
				<option value="Electrition">Electrition</option>
				<option value="Tile">Tile</option>
				<option value="Gardener">Gardener</option>
			</select></td>
		</tr>
		<tr>
			<td>Detailed Description</td>
			<td><input type="text" name = "t2" class="textbox" placeholder="Description"></td>
		</tr>
		<tr>
			<td>Maximum Budget</td>
			<td><input type="text" name = "t3" class="textbox" placeholder="Maximum Budget"></td>
		</tr>
		<tr>
			<td>Expected Complete Date</td>
			<td><input type="date" name = "t4" class="textbox" placeholder="Expected Complete Date"></td>
		</tr>
		
		<tr>
			<td><input type="submit" name="b1" class="but" value="Add Now"></td>
		</tr>
	</table>
</form>

<?php

if(isset($_POST['b1']))
{
	



	$a = $_POST['t1'];
	$b = $_POST['t2'];
	$c = $_POST['t3'];
	$d = $_POST['t4'];
	$i = $_SESSION['cid'];
	$qry = "insert into maintenance(compid,maintenance,descr,budget,completiondate,status) values('$i','$a','$b','$c','$d','0')";
	mysqli_query($conn,$qry);
	echo "<script>alert('maintenance requested successfully')</script>";
}
?>


<?php
include('Common Page Footer.php');
?>