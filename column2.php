<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Highcharts Example</title>

		

		<style type="text/css">
${demo.css}
		</style>

        <?php 
        require 'sample_con.php';

        $UR = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'University Ranking'");
        $WE = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Work Exp'");
        $PC = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Personal Connection'");
        $OS = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Occupational Skills'");
        $LS = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'Language Skills'");
        $IT = mysql_query("SELECT COUNT(*) AS Total FROM `tbltest` WHERE impt_fctr LIKE 'IT Skills'");

        $UR = mysql_fetch_array($UR);
        $WE = mysql_fetch_array($WE);
        $PC = mysql_fetch_array($PC);
        $OS = mysql_fetch_array($OS);
        $LS = mysql_fetch_array($LS);
        $IT = mysql_fetch_array($IT);

        if (empty($UR['Total'])) { $UR = '0'; } else { $UR = $UR['Total'];}
        if (empty($WE['Total'])) { $WE = '0'; } else { $WE = $WE['Total'];}
        if (empty($PC['Total'])) { $PC = '0'; } else { $PC = $PC['Total'];}
        if (empty($OS['Total'])) { $OS = '0'; } else { $OS = $OS['Total'];}
        if (empty($LS['Total'])) { $LS = '0'; } else { $LS = $LS['Total'];}
        if (empty($IT['Total'])) { $IT = '0'; } else { $IT = $IT['Total'];}

        $ans_UR = 'University Ranking';
        $ans_WE = 'Work Exp';
        $ans_PC = 'Personal Connection';
        $ans_OS = 'Occupational Skills';
        $ans_LS = 'Language Skills';
        $ans_IT = 'IT Skills';

        $DataUR = $UR;
        $DataWE = $WE;
        $DataPC = $PC;
        $DataOS = $OS;
        $DataLS = $LS;
        $DataIT = $IT;

         ?>
		<script type="text/javascript">
$(function () {
    $('#chart-3').highcharts({
        chart: {

            type: 'column'
        },
        title: {
            text: 'What do you think is the most important factor for getting a good job?'
        },
        subtitle: {
            // text: 'Source: alumnitracer'
        },
        xAxis: {
            categories: [
                'Importang Factor for getting a good job',
                
            ],
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Respondents'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px"><b>{point.key}</b></span><br><br><table align="center">',
            pointFormat: '<tr><td style="color:{series.color};">{series.name}: </td>' +
                '<td align="center" style="color:black;padding:0"><b>{point.y:.01f} </b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: <?php echo json_encode($ans_UR); ?>,
            data: [<?php echo $DataUR; ?>]

        }, {
            name: <?php echo json_encode($ans_WE); ?>,
            data: [<?php echo $DataWE; ?>]

        }, {
            name: <?php echo json_encode($ans_PC); ?>,
            data: [<?php echo $DataPC; ?>]

        },
        {
            name: <?php echo json_encode($ans_OS); ?>,
            data: [<?php echo $DataOS ?>]

        },
        {
            name: <?php echo json_encode($ans_LS); ?>,
            data: [<?php echo $DataLS ?>]

        },
        {
            name: <?php echo json_encode($ans_IT); ?>,
            data: [<?php echo $DataIT ?>]

        }]
    });
});
		</script>
	</head>
	<body>

<script src="/new/admin/highcharts/js/highcharts.js"></script>

<div id="chart-3" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

	</body>
</html>
