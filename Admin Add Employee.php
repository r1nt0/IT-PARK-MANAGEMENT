<?php
include('dbconnect.php');
include('Admin Page Header.php');
?>

<form method="post">
	<table>
		<tr>
			<td>Job</td>
			<td><select name="t1" class="textbox" style='color: deeppink;'>
				<option>---Select Job---</option>
				<option value="Plumber">Plumber</option>
				<option value="Electrition">Electrition</option>
				<option value="Tile">Tile</option>
				<option value="Gardener">Gardener</option>
			</select></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" name="t2" placeholder="Employee Name" class="textbox" required=""</td>
		</tr>
		<tr>
			<td>Adhar Number</td>
			<td><input type="tel" pattern="[0-9]{4} [0-9]{4} [0-9]{4}" name="t3" placeholder="Adhar Number" class="textbox" required=""</td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><input type="radio" name="t4" value ="Male">Male
			<input type="radio" name="t4" value ="Female"</td>Female
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type="number" name="t5" placeholder="Phone Number" class="textbox" required=""</td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="t6" placeholder="Email" class="textbox" required=""</td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="t7" placeholder="Password" class="textbox" required=""</td>
		</tr>
		<tr>
			<td><input type="submit" name="b1"  class="but"</td>
		</tr>
	</table>
</form>

<?php
if(isset($_REQUEST['b1']))
{
	$a = $_REQUEST['t1'];
	$b = $_REQUEST['t2'];
	$c = $_REQUEST['t3'];
	$d = $_REQUEST['t4'];
	$e = $_REQUEST['t5'];
	$f = $_REQUEST['t6'];
	$g = $_REQUEST['t7'];
	
	function validate_phone_number($phone)
{
     $filtered_phone_number = filter_var($phone, FILTER_SANITIZE_NUMBER_INT);
     $phone_to_check = str_replace("-", "", $filtered_phone_number);
     if (strlen($phone_to_check) != 10 ) {
        return false;
     } else {
       return true;
     }
}
	$phone = $e;
	
if (validate_phone_number($phone) == true) {
  

	
	$qr = "SELECT * FROM employee_reg WHERE email='$f'";
	$result = mysqli_query($conn,$qr);
$num_rows = mysqli_num_rows($result);

if ($num_rows != 0) {
   echo"<script>alert('There is already a user with this email id')</script>";
}
else{

	$qry = "insert into employee_reg(jobname,ename,adhar,gender,phone,email,password) values('$a','$b','$c','$d','$e','$f','$g')";
	mysqli_query($conn,$qry);
	$qr = "insert into login(uname,pass,utype) values('$f','$g','Employee')";
	mysqli_query($conn,$qr);
	echo "<script>alert('Employee Details Added Successfully')</script>";	
     }
}

 else {
  echo "<script>alert('Invalid Phone Number')</script>";
}
}
?>
<?php

include('Common Page Footer.php');
?>