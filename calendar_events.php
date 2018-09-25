<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<link rel='stylesheet' href='admin/fullcalendar/lib/cupertino/jquery-ui.min.css' />
<link href='admin/fullcalendar/fullcalendar.min.css' rel='stylesheet' />
<link href='admin/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='admin/fullcalendar/lib/moment.min.js'></script>
<script src='admin/fullcalendar/lib/jquery.min.js'></script>
<script src='admin/fullcalendar/fullcalendar.min.js'></script>
<script>

	$(document).ready(function() {

		$('#calendar').fullCalendar({
			theme: true,
			header: {
				left: 'prev,next today',
				center: 'title',
				// right: 'month,agendaWeek,agendaDay,listMonth'
				right: 'month,listMonth'
			},
			// defaultDate: '2017-02-12',
			navLinks: true, // can click day/week names to navigate views
			//editable: true, // <<-comment this so it can't be dragged
			eventLimit: true, // allow "more" link when too many events
			events: [
			<?php 
			$sql = "SELECT * FROM tblact";
			$event = mysqli_query($conn, $sql)or die(mysqli_error());
			while($row = mysqli_fetch_array($event)){
			?>
				{
					title: '<?php echo $row['a_name']; ?>',
					url:'view_events?id=<?php echo $row['na_id']; ?>',
					start: '<?php echo $row['date_from']; ?>',
					end: '<?php echo $row['date_to']; ?>'
				},
			<?php } ?>
			]
		});
		
	});

</script>
</head>
<body>

	<div id='calendar'></div>

</body>
</html>
