<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="../include/head.jsp" />
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<style>
#map-container {
	height: 500px
}
</style>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<jsp:include page="../include/header.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<jsp:include page="../include/leftmenu.jsp" />

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Kontrol Paneli</h1>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/indexPage"><i
							class="fa fa-dashboard"></i> Ana Sayfa</a></li>
					<li><a href="${pageContext.request.contextPath}/secured/main">Kontrol
							Paneli</a></li>
					<li><a
						href="${pageContext.request.contextPath}/secured/device/${device.name}">${device.name}</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-bar-chart-o"></i>
						<h3 class="box-title">${device.name}(${device.lastDataDate})</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-default btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-6 text-center">
								<input type="text" class="knob" value="${device.batteryLevel}"
									data-width="120" data-height="120" data-fgColor="#3c8dbc"
									data-readonly="true" />
								<div class="knob-label">Son Pil Durumu</div>
							</div>
							<!-- ./col -->
							<div class="col-md-6 col-sm-6 col-xs-6 text-center">
								<input type="text" class="knob"
									value="${device.runningApplicationNumber}" data-width="120"
									data-height="120" data-fgColor="#f56954" />
								<div class="knob-label">Son Çalışan Uygulama Sayısı</div>
							</div>
							<!-- ./col -->
						</div>
						<!-- /.row -->
						
					</div>
					<!-- /.box-body -->
				</div>

				<div class="box box-solid">

					<div class="box-header">
						<i class="fa fa-bar-chart-o"></i>
						<h3 class="box-title">Zamana Göre Pil Durumu</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-default btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<div class="form-group">
							<label>Zaman Aralığı:</label>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-clock-o"></i>
								</div>
								<input type="text" class="form-control pull-right"
									id="linetime" />
							</div>
							<!-- /.input group -->
						</div>
						<div id="line-chart"
							style="height: 300px; padding: 0px; position: relative;">
							<canvas height="300" width="436"
								style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 436px; height: 300px;"
								class="flot-base"></canvas>
							<canvas height="300" width="436"
								style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 436px; height: 300px;"
								class="flot-overlay"></canvas>
						</div>
					</div>
					<!-- /.box-body-->

				</div>
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-map-marker"></i>
						<h3 class="box-title">Son Cihaz Konumu</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-default btn-sm" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="row">
							<div class="col-md-1"></div>

							<div id="map-container" class="col-md-10"></div>

							<div class="col-md-1"></div>
							<!-- /.row -->
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
					<!-- /.row -->
				</div>
			</section>

			<!-- /.content -->
		</aside>

		<!-- /.right-side -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<script src="<c:url value="/resources/js/plugins/flot/jquery.flot.min.js" />" type="text/javascript"></script>
	<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.min.js" />" type="text/javascript"></script>
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.pie.min.js" />" type="text/javascript"></script>
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.categories.min.js" />" type="text/javascript"></script>    
	<!-- FLOT TIME PLUGIN - also used to draw donut charts -->
    <script src="<c:url value="/resources/js/plugins/flot/jquery.flot.time.min.js" />" type="text/javascript"></script>
	<script>
		function init_map() {
			var var_location = new google.maps.LatLng(${location.latitude}, ${location.longitude});
			var var_mapoptions = {
				center : var_location,
				zoom : 14
			};
			var var_marker = new google.maps.Marker({
				position : var_location,
				map : var_map,
				title : "Venice"
			});
			var var_map = new google.maps.Map(document
					.getElementById("map-container"), var_mapoptions);
			var_marker.setMap(var_map);
		}
		google.maps.event.addDomListener(window, 'load', init_map);
		
        /*
         * LINE CHART
         * ----------
         */
        //LINE data
        var lineData = [];
		<c:forEach items="${deviceList.devices}" var="device">
			lineData.push([${device.lastDataDate}, ${device.batteryLevel}]);
        </c:forEach>
        var line_data1 = {
            data: lineData,
            color: "#3c8dbc"
        };
        $.plot("#line-chart", [line_data1], {
            grid: {
                hoverable: true,
                borderColor: "#f3f3f3",
                borderWidth: 1,
                tickColor: "#f3f3f3"
            },
            series: {
                shadowSize: 0,
                lines: {
                    show: true
                },
                points: {
                    show: false
                }
            },
            lines: {
                fill: false,
                color: ["#3c8dbc"]
            },
            yaxis: {
                show: true,
            },
            xaxis: {
                show: true,
                mode: "time"
            }
        });
        //Initialize tooltip on hover
        $("<div class='tooltip-inner' id='line-chart-tooltip'></div>").css({
            position: "absolute",
            display: "none",
            opacity: 0.8
        }).appendTo("body");
        $("#line-chart").bind("plothover", function(event, pos, item) {

            if (item) {
                var x = item.datapoint[0].toFixed(2),
                        y = item.datapoint[1].toFixed(2);

                $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
                        .css({top: item.pageY + 5, left: item.pageX + 5})
                        .fadeIn(200);
            } else {
                $("#line-chart-tooltip").hide();
            }

        });
        /* END LINE CHART */
        
        function lineChartCallBack(start, end) {
				myApp.showPleaseWait();
				var json = { "startTime" : start.format('YYYY-MM-DD H:mm:ss'), "endTime": end.format('YYYY-MM-DD H:mm:ss')};
		        $.ajax({
		            url : '${pageContext.request.contextPath}/secured/renderbatterylevels/${username}',
		            type: 'POST',
		            beforeSend: function(xhr) {
		                xhr.setRequestHeader("Accept", "application/json");
		                xhr.setRequestHeader("Content-Type", "application/json");
		            },
		            data: JSON.stringify(json),
		            success : function(data) {
		            	var testData = [];
		            	$.each(data, function(outerKey, outerValue){
		            		var line = {label : String(outerKey),value :  outerValue}
		            		testData.push(line);
		            	});
		            	donut.setData(testData);
						myApp.hidePleaseWait();
		            },
		            error: function(result) {
		            	console.log(result);
						myApp.hidePleaseWait();
		            }
		        });
			}
        
        //Date range picker with time picker
			$('#linetime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				format : 'MM/DD/YYYY h:mm A'
			}, lineChartCallBack);
			$("#linetime").val("${defaultStartTime} - ${defaultEndTime}");

		
		
	</script>
	<script src="<c:url value="/resources/js/AdminLTE/dashboard.js" />"
		type="text/javascript"></script>
</body>
</html>