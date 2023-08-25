<?php
include('dbconnect.php');
include('Company Page Header.php');
?>


<table class="customers">
            <tr>
                   <th>JOB</th>
                   <th>Student</th>
                   <th>Application NO</th>
                   <th>Resume</th>
                  
					
                </tr>
<?php 
	session_start();
	 $target_dir ="Resume/";
	$id = $_SESSION['cid'];
					$qry="SELECT companyjob.jobname,studentreg.sname,jobapply.jid,jobapply.resume FROM companyreg inner join companyjob on companyreg.cid = companyjob.cid inner join jobapply on companyjob.jobid = jobapply.jobid inner join studentreg on jobapply.sid=studentreg.sid  where companyreg.cid='$id'";
	  				$res=mysqli_query($conn,$qry);
					while($data=mysqli_fetch_assoc($res))
					{
						$rid = $data['jobname'];
						$id = $data['sname'];
						$name=$data['jid'];
						$fon=$data['resume'];
		   echo"<tr>
		    <td>$rid</td>
                    <td>$id</td>
                    <td>$name</td>
                   
		    <td><a href=$target_dir$fon>$fon</a></td>
                   
                    </tr>";
					}
?>
						





            </table>        </center>




<?php
include('Common Page Footer.php');
?>
