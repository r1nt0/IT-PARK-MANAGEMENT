<?php
include('dbconnect.php');
include('Admin Page Header.php');
?>


<table class="customers">
            <tr>
                   <th>Student ID</th>
                    <th>Student</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Qualification</th>
                    <th>Job Experience</th>

                   
                </tr>
<?php 
					$qry="SELECT * FROM studentreg  ";
					$res=mysqli_query($conn,$qry);
	  				while($data=mysqli_fetch_assoc($res))
					{
						$id = $data['sid'];
						$na = $data['sname'];
						$fon=$data['phone'];
						$email=$data['email'];
						$qua=$data['qualification'];
						$we=$data['workexp'];
						echo "
                <tr>
                    <td>$id</td>
                    <td>$na</td>
                    <td>$fon</td>
					<td>$email</td>
                    <td>$qua</td>
                    <td>$we</td>
		    <td><a href='Admin Remove Student.php?id=$id'>Remove</a></td>
                </tr>";
					}
						?>
						





            </table>        </center>
<?php

include('Common Page Footer.php');
?>