<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li><a href="${pageContext.request.contextPath}/secured/data/">${username}</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Dışarıya Veri Aktarma</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body no-padding">
							<table class="table">
								<tr>
									<th style="width: 10px">#</th>
									<th>Tablo ismi</th>
									<th>Veri Aktarımı</th>
								</tr>
								<tr>
									<td>1.</td>
									<td>ActFeaturesData</td>
									<td>
										<button id="ActFeaturesData" class="btn btn-block btn-primary">CSV indir</button>
									</td>
								</tr>
								<tr>
									<td>2.</td>
									<td>AnnotationData</td>
									<td>
										<button id="AnnotationData" class="btn btn-block btn-primary">CSV indir</button>
									</td>
								</tr>
								<tr>
									<td>3.</td>
									<td>CommInfoData</td>
									<td>
										<button id="CommInfoData" class="btn btn-block btn-primary">CSV indir</button>
									</td>
								</tr>
								<tr>
									<td>4.</td>
									<td>LocationInfoData</td>
									<td>
										<button id="LocationInfoData" class="btn btn-block btn-primary">CSV indir</button>
									</td>
								</tr>
								<tr>
									<td>5.</td>
									<td>PhoneActData</td>
									<td>
										<button id="PhoneActData" class="btn btn-block btn-primary">CSV indir</button>
									</td>
								</tr>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
			</section>

			<!-- /.content -->
		</aside>

		<!-- /.right-side -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<script
		src="<c:url value="/resources/js/plugins/flot/jquery.flot.min.js" />"
		type="text/javascript"></script>
	<!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
	<script
		src="<c:url value="/resources/js/plugins/flot/jquery.flot.resize.min.js" />"
		type="text/javascript"></script>
	<!-- FLOT PIE PLUGIN - also used to draw donut charts -->
	<script
		src="<c:url value="/resources/js/plugins/flot/jquery.flot.pie.min.js" />"
		type="text/javascript"></script>
	<!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
	<script
		src="<c:url value="/resources/js/plugins/flot/jquery.flot.categories.min.js" />"
		type="text/javascript"></script>
	<!-- FLOT TIME PLUGIN - also used to draw donut charts -->
	<script
		src="<c:url value="/resources/js/plugins/flot/jquery.flot.time.min.js" />"
		type="text/javascript"></script>
	<script>
	var myApp;
	myApp = myApp
			|| (function() {
				var pleaseWaitDiv = $('<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false"><div class="modal-header"><h1>Processing...</h1></div><div class="modal-body"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div></div>');
				return {
					showPleaseWait : function() {
						pleaseWaitDiv.modal();
					},
					hidePleaseWait : function() {
						pleaseWaitDiv.modal('hide');
					},

				};
			})();
	
	$("button").click(function(){
		myApp.showPleaseWait();
		var buttonId = this.id;
	    window.open('${pageContext.request.contextPath}/secured/dataexport/${username}/' + buttonId, "popupWindow");
		myApp.hidePleaseWait();
	});
		
	</script>
	<script src="<c:url value="/resources/js/AdminLTE/dashboard.js" />"
		type="text/javascript"></script>
</body>
</html>