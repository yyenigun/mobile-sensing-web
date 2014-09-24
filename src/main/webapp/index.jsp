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
		<a href="index.html" class="logo"> <!-- Add the class icon to your logo image or logo icon to add the margining -->
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
					<li class="active"><a href="index.jsp"> <i
							class="fa fa-dashboard"></i> <span>Ana Sayfa</span>
					</a></li>
					<li><a href="publications.jsp"><i class="fa fa-folder"></i> <span>Yayınlar</span>
					</a></li>
					<li><a href="widgets.html"> <i class="fa fa-th"></i> <span>Ekip</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-laptop"></i> <span>Etkinlikler</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-edit"></i> <span>Haberler</span>
					</a></li>
					<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
							<span>Bağlantılar</span>
					</a></li>
					<li><a href="mailbox.html"> <i class="fa fa-envelope"></i>
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
					<li><a href="#"><i class="fa fa-dashboard"></i> Ana Sayfa</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<h2 class="page-header">Yaygın Hesaplama ve Algılama</h2>
				<div class="row">
					<div class="col-md-2">
						<img src="http://www.teco.edu/~michael/pub/ub/Image10.gif" />
					</div>
					<div class="col-md-10">
						<p>Her yerde ya da yaygın hesaplama (ubiquitous or pervasive
							computing) konusunun temelleri 90’ların başında Mark Weiser
							tarafından ortaya atılan “yok olan bilgisayar” (disappearing
							computer) terimine dayanmaktadır ve temel olarak bilgisayarların
							ve hesaplamanın insanların hayatının bir parçası olarak ve onları
							rahatsız etmeden ve hatta onların farkında olmadan çevreleyerek,
							çevreleri ile etkileşimlerini arttırarak hayat kalitelerini
							arttırmayı amaçlamaktadır.
						<p>Yaygın hesaplamının 3 temel özelliği vardır: i)
							görünmezlik, ii) bağlam farkındalık (kişilerin konumları,
							eylemleri, çevresel faktörlere göre sistemin farklılık
							göstermesi) , iii) yaygınlık (hesaplamaya erişimin her yerde
							olması). Yaygın hesaplama konusuna katkıda bulunan araştırma
							konuları dağıtık sistemlerden yapay zekaya uzanan konuları
							içermektedir.</p>
						<p>Algılama (sensing) konusu ise yaygın hesaplama
							sistemlerinin vazgeçilmez unsurudur. Yaygın algılama konusu ise
							gömülü, algılama kapasitesi olan, ve çoğunlukla kablosuz iletişim
							yeteneği olan, evimizdeki cihazlarda, arabamızda, cep
							telefonlarımızda mevcut algılama sistemlerini kapsamaktadır.
							Yaygın Algılama konusunda bölümümüzde çevresel destekli yaşam
							(ambient assisted living), akıllı ev uygulamaları, e-sağlık ve
							özellikle akıllı telefonları kullanarak mobil algılama
							sistemlerinin geliştirilmesi üzerine araştırmalar yapılmaktadır.
							Akıllı telefonları kullanarak katılımcılı algılama sistemlerinin
							geliştirilmesi (örneğin telefonlar üzerindeki mikrofonları
							kullanarak şehrin gürültü haritasının çıkarılması), insan
							eylemlerinin algılanması ve uzaktan sağlık takibi gibi konularda
							çalışmaktayız.</p>

					</div>
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