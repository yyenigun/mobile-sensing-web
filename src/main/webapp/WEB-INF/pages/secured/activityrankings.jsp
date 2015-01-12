<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="../include/head.jsp" />
<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<style>
#map-container {
	height: 500px
}
</style>
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
						href="${pageContext.request.contextPath}/secured/device/activityrankings">Aktivite
							Sıralamaları</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="col-xs-12">
					<div class="box">

						<div class="box">
							<div class="box-header">
								<h3 class="box-title">Aktiviteler</h3>
							</div>
							<div class="box-body table-responsive">
								<select id="activitySelect" class="form-control">
									<c:forEach items="${allactivities}" var="activity">
										<option>${activity.label}</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="box-header">
							<h3 id="currentActivity" class="box-title">Aktivite Sıralamaları :
								${currentActivity}</h3>
						</div>


						<!-- /.box-header -->
						<div class="box-body table-responsive">
							<table id="activityTable"
								class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>İsim</th>
										<th>Aktivite Sayısı</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${userrankings.userActivities}"
										var="userRanking">
										<tr>
											<td id = "${userRanking.userName}"> ${userRanking.userName} </td>
											<td id = "${userRanking.userName}activity">${userRanking.activityNumber}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
			</section>

			<!-- /.content -->
		</aside>

		<!-- /.right-side -->
	</div>
	<jsp:include page="../include/footer.jsp" />
	<script src="<c:url value="/resources/js/AdminLTE/dashboard.js" />"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			var datatable = $('#activityTable').dataTable();
		});
		$('#activitySelect').on('change', function() {
			var json = { "activity" : this.value};
	        $.ajax({
	            url : '${pageContext.request.contextPath}/secured/renderactivityrankings',
	            type: 'POST',
	            beforeSend: function(xhr) {
	                xhr.setRequestHeader("Accept", "application/json");
	                xhr.setRequestHeader("Content-Type", "application/json");
	            },
	            data: JSON.stringify(json),
	            success : function(data) {
	    			$("#currentActivity").text("Aktivite Sıralamaları : " + $('#activitySelect option:selected').text());
	            	for (var i = 0; i < data.userActivities.length; i++) {
	            		var userId = "#" + data.userActivities[i].userName;
	            		var activityId = "#" + data.userActivities[i].userName + "activity";
	            		$(userId).text(data.userActivities[i].userName);
	            		$(activityId).text(data.userActivities[i].activityNumber);
		            	console.log(userId);
		            	console.log(activityId);
	            	}
	            },
	            error: function(result) {
	            	console.log(result);
	            }
	        });
		});
	</script>
</body>
</html>