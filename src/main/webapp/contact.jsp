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
					<li><a href="contact.jsp">İletişim</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<!-- Main content -->
			<section class="content">
				<h2 class="page-header">İletişim</h2>
				<div class="row">
					<div class="col-md-2">
						<img src="https://diogomonica.com/assets/media/home.png" />
					</div>
					<div class="col-md-10">
						<div class="box-body">
							<p>Galatasaray Üniversitesi</p>
							<p>Adres: Çırağan Cad. No:36 34357 Ortaköy/İstanbul
							<p>Tel:+90 212 227 4480</p>
							<p>Faks: 0212 259 20 85</p>
							<p>
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