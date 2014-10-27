<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eylem Tabanlı Algılama</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="<c:url value="/resources/css/ionicons.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="<c:url value="/resources/css/morris/morris.css" />"
	rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link
	href="<c:url value="/resources/css/jvectormap/jquery-jvectormap-1.2.2.css" />"
	rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="<c:url value="/resources/css/datepicker/datepicker3.css" />"
	rel="stylesheet" type="text/css" />
<!-- Daterange picker -->
<link
	href="<c:url value="/resources/css/daterangepicker/daterangepicker-bs3.css" />"
	rel="stylesheet" type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<link
	href="<c:url value="/resources/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<c:url value="/resources/css/AdminLTE.css" />"
	rel="stylesheet" type="text/css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<style>
#map-container {
	height: 500px
}
</style>
</head>
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
						<h3 class="box-title">${device.name}</h3>
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
								<div class="knob-label">Pil Durumu</div>
							</div>
							<!-- ./col -->
							<div class="col-md-6 col-sm-6 col-xs-6 text-center">
								<input type="text" class="knob"
									value="${device.runningApplicationNumber}" data-width="120"
									data-height="120" data-fgColor="#f56954" />
								<div class="knob-label">Çalışan Uygulama Sayısı</div>
							</div>
							<!-- ./col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
				</div>

				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-map-marker"></i>
						<h3 class="box-title">Cihaz Konumu</h3>
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
			</section>

			<!-- /.content -->
		</aside>

		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->
	<!-- jQuery 2.0.2 -->
	<!-- jQuery 2.0.2 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<!-- jQuery UI 1.10.3 -->
	<script src="<c:url value="/resources/js/jquery-ui-1.10.3.min.js" />"
		type="text/javascript" type="text/javascript"></script>
	<!-- Bootstrap -->
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"
		type="text/javascript"></script>
	<!-- Morris.js charts -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script
		src="<c:url value="/resources/js/plugins/morris/morris.min.js" />"
		type="text/javascript"></script>
	<!-- Sparkline -->
	<script
		src="<c:url value="/resources/js/plugins/sparkline/jquery.sparkline.min.js" />"
		type="text/javascript"></script>
	<!-- jvectormap -->
	<script
		src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" />"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" />"
		type="text/javascript"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="<c:url value="/resources/js/plugins/jqueryKnob/jquery.knob.js" />"
		type="text/javascript"></script>
	<!-- daterangepicker -->
	<script
		src="<c:url value="/resources/js/plugins/daterangepicker/daterangepicker.js" />"
		type="text/javascript"></script>
	<!-- datepicker -->
	<script
		src="<c:url value="/resources/js/plugins/datepicker/bootstrap-datepicker.js" />"
		type="text/javascript"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="<c:url value="/resources/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" />"
		type="text/javascript"></script>
	<!-- iCheck -->
	<script
		src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js" />"
		type="text/javascript"></script>

	<!-- AdminLTE App -->
	<script src="<c:url value="/resources/js/AdminLTE/app.js" />"
		type="text/javascript"></script>

	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="<c:url value="/resources/js/AdminLTE/dashboard.js" />"
		type="text/javascript"></script>

	<!-- DATA TABES SCRIPT -->
	<script
		src="<c:url value="/resources/js/plugins/datatables/jquery.dataTables.js" />"
		type="text/javascript"></script>
	<script
		src="<c:url value="/resources/js/plugins/datatables/dataTables.bootstrap.js" />"
		type="text/javascript"></script>

	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>

	<script>
		function init_map() {
			var var_location = new google.maps.LatLng(45.430817, 12.331516);

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
	</script>



</body>
</html>