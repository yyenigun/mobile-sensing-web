<%@ page contentType="text/html; charset=UTF-8" session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<jsp:include page="admin.jsp" />
				</sec:authorize>
				<sec:authorize access="hasRole('ROLE_USER')">
					<jsp:include page="user.jsp" />
				</sec:authorize>
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


	<!-- FLOT CHARTS -->
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
    
    <script src="<c:url value="/resources/js/plugins/timepicker/bootstrap-timepicker.min.js" />" type="text/javascript"></script>
    
      <script type="text/javascript">
            $(function() {

                //Date range picker
                $('#reservation').daterangepicker();
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
                //Date range picker with time picker
                $('#donuttime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
                
                //Date range as a button
                $('#daterange-btn').daterangepicker(
                        {
                            ranges: {
                                'Today': [moment(), moment()],
                                'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                                'Last 7 Days': [moment().subtract('days', 6), moment()],
                                'Last 30 Days': [moment().subtract('days', 29), moment()],
                                'This Month': [moment().startOf('month'), moment().endOf('month')],
                                'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                            },
                            startDate: moment().subtract('days', 29),
                            endDate: moment()
                        },
                function(start, end) {
                    $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                }
                );
                //Timepicker
                $(".timepicker").timepicker({
                    showInputs: false
                });
            });
        </script>
    
	<!-- Page script -->
	<script type="text/javascript">
		$(function() {

			/*
			 * Custom Label formatter
			 * ----------------------
			 */
			function labelFormatter(label, series) {
				return "<div style='font-size:13px; text-align:center; padding:2px; color: #fff; font-weight: 600;'>"
						+ label
						+ "<br/>"
						+ Math.round(series.percent)
						+ "%</div>";
			}

			/*
			 * BAR CHART
			 * ---------
			 */
			Morris.Bar({
				element : 'bar-chart',
				data : [ {
					y : '2006',
					a : 100,
					b : 90,
					c : 10
				}, {
					y : '2007',
					a : 75,
					b : 65,
					c : 10
				}, {
					y : '2008',
					a : 50,
					b : 40,
					c : 10
				}, {
					y : '2009',
					a : 75,
					b : 65,
					c : 10
				}, {
					y : '2010',
					a : 50,
					b : 40,
					c : 10
				}, {
					y : '2011',
					a : 75,
					b : 65,
					c : 10
				}, {
					y : '2012',
					a : 100,
					b : 90,
					c : 10
				} ],
				xkey : 'y',
				ykeys : [ 'a', 'b', 'c' ],
				labels : [ 'Sabit', 'Bisikletli', 'Yürüyor' ]
			});

			/* END BAR CHART */

			/*
			 * DONUT CHART
			 * -----------
			 */

			var donutData = [ {
				label : "Yürüyor",
				data : 30,
				color : "#4da74d"
			}, {
				label : "Bisikletli",
				data : 20,
				color : "#7a92a3"
			}, {
				label : "Sabit",
				data : 50,
				color : "#0b62a4"
			} ];
			$.plot("#donut-chart", donutData, {
				series : {
					pie : {
						show : true,
						radius : 1,
						innerRadius : 0.5,
						label : {
							show : true,
							radius : 2 / 3,
							formatter : labelFormatter,
							threshold : 0.1
						}

					}
				},
				legend : {
					show : false
				}
			});
			/*
			 * END DONUT CHART
			 */

		});
	</script>

</body>
</html>