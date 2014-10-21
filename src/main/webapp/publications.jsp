<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li><a href="publications.jsp">Yayınlar</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="box box-solid">
					<div class="box-header">
						<i class="fa fa-text-width"></i>
						<h3 class="box-title">Yayınlar</h3>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<ul>

							<li>(under review) M. Shoaib, S. Bosch, Ö. Durmaz Incel, H.
								Scholten, P.J.M. Havinga, A survey of real-time physical
								activity recognition using mobile phones, submitted to 11th IEEE
								International Conference on Ubiquitous Intelligence and
								Computing, 2014.</li>
							<li>(under review) D. Coşkun, Ö. Durmaz İncel, A. Özgövde,
								Phone Position/Placement Detection using Accelerometer: Impact
								on Activity Recognition, submitted to 11th IEEE International
								Conference on Ubiquitous Intelligence and Computing, 2014.</li>
							<li>M. Shoaib, S. Bosch, Ö. Durmaz Incel, H. Scholten,
								P.J.M. Havinga, Fusion of Smartphone Motion Sensors for Physical
								Activity Recognition, Sensors 14 (6), 10146-10176, June 2014.</li>
							<li>D. Coşkun, Ö. Durmaz İncel, A. Özgövde, Posıtıon-Aware
								Actıvıty Recognıtıon On Mobıle Phones, 22nd Signal Processing
								and Communication Applications Symposium, April 2014</li>
							<li>Üstev, Y.E., Ersoy, C. and Ö. Durmaz Incel, User, Device
								and Orientation Independent Human Activity Recognition on Mobile
								Phones: Challenges and a Proposal. In Adj. Proc. UbiComp'13,
								Ubiquitous Mobile Instrumentation (UbiMI'13)</li>
							<li>Ö. Durmaz Incel, M. Kose, C. Ersoy A Review and Taxonomy
								of Activity Recognition on Mobile Phones, Springer
								BioNanoScience Journal, Special Issue on Personal Health Systems
								for Well-being and Lifestyle Change, 2013.</li>
							<li>E. Toplan, Y.E Ustev, Ö. Durmaz Incel, C. Ersoy, Eylem
								Tanıma ile Şehir Dinamiklerini Elde Etmek, Akademik Bilişim
								2013, Antalya, Ocak 2013.</li>
							<li>B. Kosucu, Ö. Durmaz Incel and C. Ersoy, Kitle Kaynaklı
								ve Katılımcılı Algılama Konularına Genel Bakış ve Açık Noktalar,
								Akademik Bilişim 2013, Antalya, Ocak 2013.</li>
							<li>M. Kose, Ö. Durmaz Incel, C. Ersoy, Online Human
								Activity Recognition on Smart Phones, accepted to the Workshop
								on Mobile Sensing: From Smartphones and Wearables to Big Data
								(colocated with IPSN 2012), April 2012.</li>
							<li>M. Kose, Ö. Durmaz Incel, C. Ersoy, Performance
								Evaluation of Classification Methods for Online Activity
								Recognition on Smart Phones, accepted to 20th Signal Processing
								and Communication Applications Symposium, April 2012.</li>

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