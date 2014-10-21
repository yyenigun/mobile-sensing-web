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
							Eylem Tabanlı Kitle Kaynaklı Algılama Projesi  <small>Galatasaray Üniversitesi</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="indexPage"><i class="fa fa-dashboard"></i>
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
											24.06.2014 - 14:15</small> Haziran 2014 - Bitirme Projeleri 
									</a> Bitirme Projesi öğrencileri poster ve proje sunumlarını  gerçekleştirdiler 
								</p>
								<!-- /.attachment -->
							</div>
							<!-- /.item -->
							<!-- chat item -->
							<div class="item">
								<br /> <br />
								<p class="message">
									<a href="http://siu2014.ktu.edu.tr/" class="name"> <small
										class="text-muted pull-right"><i class="fa fa-clock-o"></i>
											14.04.2014 - 12:15</small> SIU 2014
									</a>  SIU 2014 Konferansında Position-Aware Activity Recognition On Mobıle Phones başlıklı bildirimizi sunduk
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
    <jsp:include page="WEB-INF/pages/include/footer.jsp" />
</body>
</html>