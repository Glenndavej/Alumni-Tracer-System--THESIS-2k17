<table class="w3-table-all w3-hoverable">  
	<caption><b>Search Results</b></caption>
		<thead>
			<tr class="w3-red">
				<th class="text-center">Name</th>				
				<th class="text-center">Course</th>
				<th class="text-center">Department</th>
				<th class="text-center">Year Graduated</th>
				<th class="text-center">View Details</th>
			</tr>
		</thead>
								
		<tbody>	
			<?php
			error_reporting(0);
			if (isset($_POST['submit'])) {
			// declaring variables
			$search = $_POST['search_alumni'];
			$year = $_POST['year'];
			$kurs =  $_POST['kurs'];
			$dept = $_POST['deprtmnt'];

			
			$search_str= '';
			if ($search){
				$search_str .= $search_str ? ' AND ': 'WHERE' ;
				$search_str .= "(`fname` LIKE  '%" .$search."%' OR mname LIKE '%" .$search. "%' OR lname LIKE '%" .$search. "%') "; 
			}
			if ($year){
				$search_str .= $search_str ? ' AND ': 'WHERE' ;
				$search_str .= "`tblalumni`.`yeargrad` LIKE '%" .$year."%' "; 
			}
			if ($dept){
				$search_str .= $search_str ? ' AND ': 'WHERE' ;
				$search_str .= "`tblalumni`.`department` LIKE '%" .$dept."%' "; 
			}
			if ($kurs){
				$search_str .= $search_str ? ' AND ': 'WHERE' ;
				$search_str .= "`tblalumni`.`course` LIKE '%" .$kurs."%' "; 
			}

			// query
			$sql = "SELECT * FROM tblAlumni {$search_str} AND alum_status = 2";
			
			$result = $conn->query($sql);
			if 
			
				($result->num_rows > 0) 
			{            
				while ($row = $result->fetch_assoc()) {
					$id=$row['alum_id'];
					$fname = $row['fname'];
					$mname = $row['mname'];
					$lname = $row['lname'];
					$course = $row['course'];
					$dept = $row['department'];
					$year = $row['yeargrad'];
					$presocc = $row['presoccup'];
					$email = $row['emailadd'];
				// Print out the contents of the entry 
			?>
			<tr>
				<td><?php echo $lname; ?>, <?php echo $fname; ?> <?php echo $mname; ?></td>
				<td><?php echo $course; ?></td>
				<td><?php echo $dept; ?></td>
				<td><?php echo $year; ?></td>
				<td>
					<a type="button" class="w3-btn w3-blue" data-toggle="modal" data-target="#view<?php echo $id; ?>"  href='$id<?php echo '?id='.$id; ?>' title="View"><i class="fa fa-external-link" aria-hidden="true"></i></a>
				</td>
			</tr>
			<!-- THIS IS MY MODAL FOR view -->
			<!-- Modal -->
			<div id="view<?php echo $id; ?>" class="modal fade" role="dialog" style="z-index: 999999;">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" >
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">View Alumni</h4>
						</div>
					<div class="modal-body">
						 <b>Name: </b><?php echo $lname; ?>, <?php echo $fname; ?> <?php echo $mname; ?> 
						 <br>
						 <b>Present Occupation & Workplace: </b><?php echo $presocc; ?>
						 <br>
						 <b>Email Address: </b><?php echo $email; ?>
					</div>
					<div class="modal-footer">
						      	
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
						      
					</div>
					</div>

				</div>
			</div>
			<!-- END OF MODAL FOR view -->

			<?php 
					}
				} 
				else 
				{
				echo '<div class="w3-panel w3-red" ><h3>No Results Found!!!</h3></div>';
				}
				}
			?>       
		</tbody>
	</table>