<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Small boxes (Stat box) -->
<div class="row">
	<div class="col-lg-6 col-xs-8">
		<!-- small box -->
		<div class="small-box bg-aqua">
			<div class="inner">
				<h3>${totalUserCount}</h3>
				<p>cihaz aktif</p>
			</div>
			<div class="icon">
				<i class="ion ion-bag"></i>
			</div>
			<a href="#" class="small-box-footer"> Detay <i
				class="fa fa-arrow-circle-right"></i>
			</a>
		</div>
	</div>
	<!-- ./col -->
	<div class="col-lg-6 col-xs-8">
		<!-- small box -->
		<div class="small-box bg-yellow">
			<div class="inner">
				<h3>${onlineUserCount}</h3>
				<p>kullanıcı çevrimiçi</p>
			</div>
			<div class="icon">
				<i class="ion ion-person-add"></i>
			</div>
			<a href="#" class="small-box-footer"> Detay <i
				class="fa fa-arrow-circle-right"></i>
			</a>
		</div>
	</div>
	<!-- ./col -->

</div>
<!-- /.row -->

<!-- Main row -->
<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">Aktif Kullanıcılar</h3>
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive">
				<table id="users" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>İsim</th>
							<th>Soyisim</th>
							<th>Çevrimiçi</th>
							<th>Yaş</th>
							<th>Cihaz detayı</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${users}" var="user">
							<tr>
								<td>${user.userName}</td>
								<td>${user.lastName}</td>
								<td>${user.isOnline}</td>
								<td>${user.age}</td>
								<td><a href="device/${user.userName}">Detay</a></td>
							</tr>
						</c:forEach>
				</table>
			</div>
			<!-- /.box-body -->
		</div>
		<!-- /.box -->
	</div>
</div>