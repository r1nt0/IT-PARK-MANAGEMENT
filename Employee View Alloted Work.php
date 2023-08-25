<?php
include('dbconnect.php');
include('Employee Page Header.php');
session_start();
$eid = $_SESSION['eid'];
?>


<table class="customers">
            <tr>
                   
                    <th>Company</th>
                    <th>Phone</th>
                    <th>Description</th>
		    <th>Expected Completion Date</th>
                    <th>Maximum Budget</th>
		    <th>Worker Needed</th>
                    
                </tr>
<?php 
					$qry="SELECT companyreg.cname, companyreg.phone, maintenance.descr, maintenance.completiondate, maintenance.budget, maintenance.maintenance FROM companyreg inner join maintenance on companyreg.cid = maintenance.compid WHERE maintenance.status = 'Alloted' ";
	  				$res=mysqli_query($conn,$qry);
 					while($data=mysqli_fetch_assoc($res))
					{
						
						$na = $data['cname'];
						$feed=$data['phone'];
						$d=$data['descr'];
						
						$c = $data['completiondate'];
						$mb=$data['budget'];
						$mt=$data['maintenance'];
						echo "
                <tr>
                    <td>$na</td>
                    <td>$feed</td>
                    <td>$d</td>
                    <td>$c</td>
                    <td>$mb</td>
		    <td>$mt</td>			
                    
                </tr>";
					}
						?>
						





            </table>        </center>
<?php
include('Common Page Footer.php');
?>