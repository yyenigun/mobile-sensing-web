<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GSÜ Peralab | Dashboard</title>
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
			GSÜ Peralab
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
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
					<li><a href="publications.jsp"><i class="fa fa-folder"></i> <span>Yayınlar</span>
					</a></li>
					<li><a href="team.jsp"> <i class="fa fa-th"></i> <span>Ekip</span>
					</a></li>
					<li><a href="events.jsp"> <i
							class="fa fa-laptop"></i> <span>Etkinlikler</span>
					</a></li>
					<li  class="active"><a href="news.jsp"> <i class="fa fa-edit"></i> <span>Haberler</span>
					</a></li>
					<li><a href="links.jsp"> <i
							class="fa fa-table"></i> <span>Bağlantılar</span>
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
					Peralab <small>Galatasaray Üniversitesi</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="index.jsp"><i class="fa fa-dashboard"></i>
							Ana Sayfa</a></li>
					<li><a href="news.jsp">Haberler</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="box box-solid">
					<!-- /.box-header -->
					<!-- Chat box -->
					<div class="box box-success">
						<div class="box-header">
							<i class="fa fa-comments-o"></i>
							<h3 class="box-title">Haberler</h3>
							<div class="box-tools pull-right" data-toggle="tooltip"
								title="Status">
								<div class="btn-group" data-toggle="btn-toggle">
									<button type="button" class="btn btn-default btn-sm active">
										<i class="fa fa-square text-green"></i>
									</button>
									<button type="button" class="btn btn-default btn-sm">
										<i class="fa fa-square text-red"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="box-body chat" id="chat-box">
							<!-- chat item -->
							<div class="item">
								<br /> <br />
								<p class="message">
									<a href="#" class="name"> <small
										class="text-muted pull-right"><i class="fa fa-clock-o"></i>
											24.11.2014 - 2:15</small> Haber 1
									</a> I would like to meet you to discuss the latest news about the
									arrival of the new theme. They say it is going to be one the
									best themes on the market
								</p>
								<!-- /.attachment -->
							</div>
							<!-- /.item -->
							<!-- chat item -->
							<div class="item">
								<br /> <br />
								<p class="message">
									<a href="#" class="name"> <small
										class="text-muted pull-right"><i class="fa fa-clock-o"></i>
											24.11.2014 - 2:15</small> Haber 1
									</a> I would like to meet you to discuss the latest news about the
									arrival of the new theme. They say it is going to be one the
									best themes on the market
								</p>
								<!-- /.attachment -->
							</div>
							<!-- /.item -->
						</div>

					</div>
					<!-- /.box (chat box) -->
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
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
</body>
</html>