<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<jsp:include page="../include/head.jsp" />
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
						href="${pageContext.request.contextPath}/secured/activity/${username}">${username}</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<!-- Bar chart -->
						<div class="box box-primary">
							<div class="box-header">
								<i class="fa fa-bar-chart-o"></i>
								<h3 class="box-title">Zamana Göre Hareket Karşılaştırması</h3>
							</div>
							<div class="box-body">
								<div class="form-group">
									<div class="input-group">
										<button class="btn btn-default pull-right" id="daterange-btn">
											<i class="fa fa-calendar"></i> Zaman Aralığı <i
												class="fa fa-caret-down"></i>
										</button>
										<!-- /btn-group -->
									</div>
									<!-- /.input group -->
								</div>
								<!-- /.form group -->
								<div id="bar-chart" style="height: 300px;"></div>
							</div>
							<!-- /.box-body-->
						</div>
						<!-- /.box -->

						<!-- Donut chart -->
						<div class="box box-primary">
							<div class="box-header">
								<i class="fa fa-bar-chart-o"></i>
								<h3 class="box-title">Zamana Göre Hareketler</h3>
							</div>
							<div class="box-body">
								<div class="form-group">
									<label>Zaman Aralığı:</label>
									<div class="input-group">
										<div class="input-group-addon">
											<i class="fa fa-clock-o"></i>
										</div>
										<input type="text" class="form-control pull-right"
											id="donuttime" />
									</div>
									<!-- /.input group -->
								</div>
								<div id="donut-chart" style="height: 300px; width: 100%;"></div>
							</div>
							<!-- /.box-body-->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->

			</section>
			<!-- /.content -->
		</aside>
		<!-- /.right-side -->
	</div>
	<!-- ./wrapper -->
	<jsp:include page="../include/footer.jsp" />

	<script type="text/javascript">
		$(function() {
			$("#example1").dataTable();
			$('#users').dataTable({
				"bPaginate" : true,
				"bLengthChange" : false,
				"bFilter" : false,
				"bSort" : true,
				"bInfo" : true,
				"bAutoWidth" : false
			});
		});
	</script>
	<jsp:include page="../include/activitycharts.jsp" />

</body>
</html>