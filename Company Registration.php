<?php
include('Common Page Header.php');
include('dbconnect.php');
?>
<form method="post">
	<table>
		<tr>
			<td>Company Name</td>
			<td><input type="text" name="t1" class="textbox" placeholder="Company" required=""></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><input type="text" name="t2" class="textbox" placeholder="Description" required=""></td>
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type="number"  name="t3" class="textbox" placeholder="Phone" required=""></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="email" name="t4" class="textbox" placeholder="Email" required=""></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="text" name="t5" class="textbox" placeholder="Password" required=""></td>
		</tr>
		<tr>
			<td><input type="submit" name="b1" value="Register Now" class="but"></td>
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
	$phone = $c;
	
if (validate_phone_number($phone) == true) {
	$qr = "SELECT * FROM companyreg WHERE email='$d'";
	$result = mysqli_query($conn,$qr);
$num_rows = mysqli_num_rows($result);

if ($num_rows != 0) {
   echo"<script>alert('There is already a user with this email id')</script>";
}
else{
	$qry = "insert into companyreg(cname,address,phone,email,password,status) values('$a','$b','$c','$d','$e','0')";
	$qry1 = "insert into login(uname,pass,utype) values('$d','$e','Company')";
	mysqli_query($conn,$qry);
	mysqli_query($conn,$qry1);
	echo "<script>alert('Registration Completed Successfully')</script>";
      }
}
else{
echo"<script>alert('Invalid phone number')</script>";
}
}
?>


<?php
include('Common Page Footer.php');
?>