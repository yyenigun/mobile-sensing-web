<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main row -->
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
						<input type="text" class="form-control pull-right" id="donuttime" />
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