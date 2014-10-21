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
<link  href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="<c:url value="/resources/css/ionicons.min.css" />" rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="<c:url value="/resources/css/morris/morris.css" />" rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link href="<c:url value="/resources/css/jvectormap/jquery-jvectormap-1.2.2.css" />" rel="stylesheet"
	type="text/css" />
<!-- Date Picker -->
<link href="<c:url value="/resources/css/datepicker/datepicker3.css" />" rel="stylesheet"
	type="text/css" />
<!-- Daterange picker -->
<link href="<c:url value="/resources/css/daterangepicker/daterangepicker-bs3.css" />" rel="stylesheet"
	type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<link href="<c:url value="/resources/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" />" rel="stylesheet"
	type="text/css" />
<!-- Theme style -->
<link href="<c:url value="/resources/css/AdminLTE.css" />" rel="stylesheet"
	type="text/css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<jsp:include page="../include/secureheader.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<jsp:include page="../include/secureleftmenu.jsp" />

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Kontrol Paneli</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Ana Sayfa</a></li>
					<li><a href="team.jsp">Kontrol Paneli</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Small boxes (Stat box) -->
				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3>120</h3>
								<p>cihaz aktif</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="#" class="small-box-footer"> Detay <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h3>
									20<sup style="font-size: 20px">o</sup>
								</h3>
								<p>hava sıcaklığı</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="#" class="small-box-footer"> Detay <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-yellow">
							<div class="inner">
								<h3>44</h3>
								<p>kullanıcı çevrimiçi</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="#" class="small-box-footer"> Detay <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-red">
							<div class="inner">
								<h3>12</h3>
								<p>kullanıcı bisiklete biniyor</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer"> Detay <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<!-- /.row -->

				<!-- Main row -->
				<div class="row">
					<!-- Left col -->
					<section class="col-lg-7 connectedSortable">


						<!-- Custom tabs (Charts with tabs)-->
						<div class="nav-tabs-custom">
							<!-- Tabs within a box -->
							<ul class="nav nav-tabs pull-right">
								<li class="pull-left header"><i class="fa fa-inbox"></i>
									Otomobil - Bisiklet Kullanıcı Sayıları</li>
							</ul>
							<div class="tab-content no-padding">
								<!-- Morris chart - Sales -->
								<div class="chart tab-pane active" id="revenue-chart"
									style="position: relative; height: 300px;"></div>
								<div class="chart tab-pane" id="sales-chart"
									style="position: relative; height: 300px;"></div>
							</div>
						</div>
						<!-- /.nav-tabs-custom -->
					</section>
					<!-- /.Left col -->
					<!-- right col (We are only adding the ID to make the widgets sortable)-->
					<section class="col-lg-5 connectedSortable">

						<!-- Map box -->
						<div class="box box-solid bg-light-blue-gradient">
							<div class="box-header">
								<!-- tools box -->
								<div class="pull-right box-tools">
									<button class="btn btn-primary btn-sm daterange pull-right"
										data-toggle="tooltip" title="Date range">
										<i class="fa fa-calendar"></i>
									</button>
									<button class="btn btn-primary btn-sm pull-right"
										data-widget='collapse' data-toggle="tooltip" title="Collapse"
										style="margin-right: 5px;">
										<i class="fa fa-minus"></i>
									</button>
								</div>
								<!-- /. tools -->

								<i class="fa fa-map-marker"></i>
								<h3 class="box-title">Kullanıcılar</h3>
							</div>
							<div class="box-body">
								<div id="world-map" style="height: 250px;"></div>
							</div>
						</div>
						<!-- /.box -->

					</section>
					<!-- right col -->
				</div>
				<!-- /.row (main row) -->

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->

	<!-- add new calendar event modal -->


	<!-- jQuery 2.0.2 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<!-- jQuery UI 1.10.3 -->
	<script src="<c:url value="/resources/js/jquery-ui-1.10.3.min.js" />" type="text/javascript" type="text/javascript"></script>
	<!-- Bootstrap -->
	<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
	<!-- Morris.js charts -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="<c:url value="/resources/js/plugins/morris/morris.min.js" />" type="text/javascript"></script>
	<!-- Sparkline -->
	<script src="<c:url value="/resources/js/plugins/sparkline/jquery.sparkline.min.js" />"
		type="text/javascript"></script>
	<!-- jvectormap -->
	<script src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" />"
		type="text/javascript"></script>
	<script src="<c:url value="/resources/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" />"
		type="text/javascript"></script>
	<!-- jQuery Knob Chart -->
	<script src="<c:url value="/resources/js/plugins/jqueryKnob/jquery.knob.js" />"
		type="text/javascript"></script>
	<!-- daterangepicker -->
	<script src="<c:url value="/resources/js/plugins/daterangepicker/daterangepicker.js" />"
		type="text/javascript"></script>
	<!-- datepicker -->
	<script src="<c:url value="/resources/js/plugins/datepicker/bootstrap-datepicker.js" />"
		type="text/javascript"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="<c:url value="/resources/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" />"
		type="text/javascript"></script>
	<!-- iCheck -->
	<script src="<c:url value="/resources/js/plugins/iCheck/icheck.min.js" />" type="text/javascript"></script>

	<!-- AdminLTE App -->
	<script src="<c:url value="/resources/js/AdminLTE/app.js" />" type="text/javascript"></script>

	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="<c:url value="/resources/js/AdminLTE/dashboard.js" />" type="text/javascript"></script>


</body>
</html>