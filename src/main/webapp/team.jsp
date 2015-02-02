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
					<li><a href="team.jsp">Ekip</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<h2 class="page-header">Ekip</h2>
				<div class="row">
					<div class="col-md-2">
						<img src="http://therefugechristianchurch.com/wp-content/uploads/2013/12/Team.jpg" />
					</div>
					<div class="col-md-10">
						<div class="box-body">
							<ul>
								<li><a
									href="http://www.cmpe.boun.edu.tr/~ersoy/CemErsoySite/Home.html">Prof.
										Dr. Cem Ersoy (Boğaziçi Üniversitesi)</a></li>
								<li><a
									href="http://personel.gsu.edu.tr/ozlem-durmaz-incel-2">Yrd.
										Doç. Dr. Özlem Durmaz İncel</a></li>
								<li><a href="http://personel.gsu.edu.tr/b-atay-ozgovde">Yrd.
										Doç. Dr. Bahri Atay Özgövde</a></li>
								<li>Yüksek Lisans Öğrencisi Doruk Coşkun</li>
								<li><a href="http://yalcinyenigun.com/">Yüksek Lisans
										Öğrencisi Yalçın Yenigün</a></li>
								<li>Yüksek Lisans Öğrencisi Mehmet Aktaş</li>
								<li>Faruk Açan (Boğaziçi Üniversitesi)</li>

							</ul>
						</div>
					</div>
				</div>
				<h2 class="page-header">Mezunlar</h2>
				<div class="row">
					<div class="col-md-2">
						<img src="http://acuns.org/wp-content/uploads/2012/05/graduate.jpg" />
					</div>
					<div class="col-md-10">
						<div class="box-body">
							<ul>
								<li>Tülin İzer (Lisans 2014)</li>
								<li>Kübra Sönmez (Lisans 2014)</li>
								<li>Özkan Çiftçi (Lisans 2014)</li>
								<li>Yüksek Lisans Öğrencisi Doruk Coşkun</li>
								<li>Mustafa Dönmez (Lisans 2014)</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /. box -->
			</section>

			<!-- /.content -->
		</aside>

		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->
    <jsp:include page="WEB-INF/pages/include/footer.jsp" />


</body>
</html>