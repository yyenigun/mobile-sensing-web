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
	</script>
	<script src="<c:url value="/resources/js/AdminLTE/dashboard.js" />"
		type="text/javascript"></script>
</body>
</html>