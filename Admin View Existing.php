<?php
include('dbconnect.php');
include('Admin Page Header.php');
?>


<table class="customers">
            <tr>
                    <th>Company id</th>
                    <th>Company name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Description</th>

                   
                </tr>
<?php 
					$qry="SELECT * FROM companyreg where status = '1' ";
					$res=mysqli_query($conn,$qry);
	  				while($data=mysqli_fetch_assoc($res))
					{
						$id = $data['cid'];
						$na = $data['cname'];
						$feed=$data['phone'];
						$date=$data['email'];
						$address=$data['address'];
						echo "
                <tr>
		    <td>$id</td>
                    <td>$na</td>
                    <td>$feed</td>
                    <td>$date</td>
		    <td>$address</td>
		    <td><a href='Admin Remove Company.php?id=$id'>Remove</a></td>
			  </tr>";
					}
						?>
						





            </table>        </center>
<?php
include('Common Page Footer.php');
?>
