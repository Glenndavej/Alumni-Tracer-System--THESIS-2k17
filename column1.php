<?php
/**
 *
 *
 * @link          https://github.com/mzm-dev 
 * @demo          http://highcharts-mzm.rhcloud.com
 * @created       September 2014
 * @fb            https://www.facebook.com/zakimedia
 * @email         mohdzaki04@gmail.com
 */
$cakeDescription = "Highcharts Pie Chart";
?>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title><?php echo $cakeDescription ?></title>
        <link href="/new/admin/highcharts/webroot/css/cake.generic.css" type="text/css" rel="stylesheet">
        <script type="text/javascript">
            $(document).ready(function() {
                //default
                getAjaxData(new Date().getFullYear());
                var options = {
                    chart: {
                        renderTo: 'container2',
                        type: 'column'
                    },
                    title: {
                        text: 'Highcharts Chart PHP with MySQL Example',
                        x: -20 //center
                    },
                    subtitle: {
                        text: 'Subtitle',
                        x: -20
                    },
                    xAxis: {
                        categories: []
                    },
                    yAxis: {
                        title: {
                            text: 'TOTAL'
                        },
                        plotLines: [{
                                value: 0,
                                width: 1,
                                color: '#808080'
                            }]
                    },
                    tooltip: {
                        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                        pointFormat: '<span style="color:{point.color}">{point.name}</span>:<b>{point.y}</b> of total<br/>'
                    },
                    plotOptions: {
                        series: {
                            borderWidth: 0,
                            dataLabels: {
                                enabled: true,
                                format: '{point.y}'
                            }
                        }
                    },
                    legend: {
                        layout: 'vertical',
                        align: 'right',
                        verticalAlign: 'top',
                        x: -40,
                        y: 100,
                        floating: true,
                        borderWidth: 1,
                        shadow: true
                    },
                    series: []
                };
                
                function getAjaxData(data) {
                    var year = $('#year').val();
                    var month = $('#month').val();
                    $.getJSON("data-column1.php",{id:year ,id2:month}, function(json) {
                        options.xAxis.categories = json[0]['data']; //xAxis: {categories: []}
                        options.series[0] = json[1];                        
                        chart = new Highcharts.Chart(options);
                    });
                }

            });
        </script>

        <script src="/new/admin/highcharts/js/highcharts.js"></script>
    </head>
    <body>
        <!-- <a class="link_header" href="/highcharts/">&lt;&lt; Back to index</a>
        <div class="menu_top" >

            <div id="year">
            </div>
            <div  id="month">
            </div>
            
        </div> -->
       <div id="container2" style="min-width: 400px; height: 400px; margin: 0 auto;"></div>
    </body>
</html>
