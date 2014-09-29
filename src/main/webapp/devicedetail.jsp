<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eylem Tabanlı Algılama</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<a href="index.jsp" class="logo"> <!-- Add the class icon to your logo image or logo icon to add the margining -->
			Eylem Tabanlı Algılama
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
			<div class="navbar-right">
				<ul class="nav navbar-nav">
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="glyphicon glyphicon-user"></i> <span>admin<i
								class="caret"></i></span>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"><img
								src="img/avatar3.png" class="img-circle" alt="User Image" />
								<p>
									Jane Doe - Web Developer <small>Member since Nov. 2012</small>
								</p></li>
							<!-- Menu Body -->
							<li class="user-body">
								<div class="col-xs-4 text-center">
									<a href="#">Followers</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Sales</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Friends</a>
								</div>
							</li>
							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="#" class="btn btn-default btn-flat">Profile</a>
								</div>
								<div class="pull-right">
									<a href="#" class="btn btn-default btn-flat">Sign out</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
		</nav>

	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li><a href="index.jsp"> <i class="fa fa-dashboard"></i> <span>Ana
								Sayfa</span>
					</a></li>
					<li class="active"><a href="contact.jsp"> <i
							class="fa fa-laptop"></i> <span>Cihazlar</span>
					</a></li>
					<li><a href="contact.jsp"> <i class="fa fa-table"></i> <span>Harita</span>
					</a></li>
					<li><a href="publications.jsp"><i class="fa fa-folder"></i>
							<span>Yayınlar</span> </a></li>
					<li><a href="team.jsp"> <i class="fa fa-th"></i> <span>Ekip</span>
					</a></li>
					<li><a href="events.jsp"> <i class="fa fa-laptop"></i> <span>Etkinlikler</span>
					</a></li>
					<li><a href="news.jsp"> <i class="fa fa-edit"></i> <span>Haberler</span>
					</a></li>
					<li><a href="links.jsp"> <i class="fa fa-table"></i> <span>Bağlantılar</span>
					</a></li>
					<li><a href="contact.jsp"> <i class="fa fa-envelope"></i>
							<span>İletişim</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Samsung Galaxy S <small>Cihaz Detayı</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp"><i class="fa fa-dashboard"></i>
							Ana Sayfa</a></li>
					<li><a href="team.jsp">Cihazlar</a></li>
					<li><a href="team.jsp">Samsung Galaxy S</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Cihaz Durumu</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body table-responsive">
							<table id="example1" class="table table-bordered table-striped">
								<tbody>
									<tr>
										<td>Marka : Samsung</td>
									</tr>
									<tr>
										<td>Model : Galaxy S</td>
									</tr>
									<tr>
										<td>Pil Durumu : %82</td>
									</tr>
									<tr>
										<td>Sıcaklık : 20</td>
									</tr>
									<tr>
										<td>Son Giriş : 2014-05-05 20:42:33</td>
									</tr>
									<tr>
										<td>Kayıt Tarihi : 2014-03-03 20:42:33</td>
									</tr>


								</tbody>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /. box -->
			</section>

			<!-- /.content -->
		</aside>

		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->
	<!-- jQuery 2.0.2 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="js/AdminLTE/app.js" type="text/javascript"></script>

	<script src="js/plugins/fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<!-- Page specific script -->


</body>
</html>