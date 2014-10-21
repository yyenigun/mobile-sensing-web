<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="WEB-INF/pages/include/head.jsp" />
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
    <jsp:include page="WEB-INF/pages/include/header.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<jsp:include page="WEB-INF/pages/include/leftmenu.jsp" />
		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Eylem Tabanlı Kitle Kaynaklı Algılama Projesi <small>Galatasaray
						Üniversitesi</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="indexPage"><i class="fa fa-dashboard"></i>
							Ana Sayfa</a></li>
					<li><a href="links.jsp">Bağlantılar</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-text-width"></i>
						<h3 class="box-title">Bağlantılar</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<ul>
							<li><a href="http://www.gsu.edu.tr">Galatasaray
									Üniversitesi</a></li>
							<li><a href="http://bm.gsu.edu.tr/">Galatasaray
									Üniversitesi Bilgisayar Mühendisliği Bölümü</a></li>
						</ul>
					</div>
					<div class="box-header">
						<i class="fa fa-text-width"></i>
						<h3 class="box-title">İlgili Konferanslar</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<ul>
							<li><a href="http://percom.org/">Percom</a></li>
							<li><a href="http://ubicomp.org/ubicomp2014/">Ubicomp</a></li>
							<li><a href="http://mobiquitous.org/">Mobiqutious</a></li>
							<li><a href="http://www.cister.isep.ipp.pt/ewsn2015">EWSN</a></li>
							<li><a href="http://cse.stfx.ca/~uic2014/cfp.php ">UIC</a></li>
							<li><a href="http://www.cister.isep.ipp.pt/ewsn2015">ISSNIP</a></li>
							<li><a href="http://pervasivehealth.org/2015/show/home">Pervasive
									Health</a></li>
							<li><a href="http://mobicase.org/">Mobicase</a></li>
							<li><a href="http://iwcmc.org/">IWCMC</a></li>
							<li><a href="http://www.icmu.org/">ICMU</a></li>
							<li><a href="http://ami-conferences.org/ ">AMI</a></li>
							<li><a href="http://www.iswc.net/">ISWC</a></li>
							<li><a href="http://cs-conferences.acadiau.ca/mobispc-14/">MobiSPC</a></li>
						</ul>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->
    <jsp:include page="WEB-INF/pages/include/footer.jsp" />
</body>
</html>