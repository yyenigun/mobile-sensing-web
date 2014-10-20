<%@ page contentType="text/html; charset=UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eylem Tabanlı Algılama</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- bootstrap 3.0.2 -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="css/AdminLTE.css" rel="stylesheet" type="text/css" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
	<header class="header">
		<a href="index.jsp" class="logo"> <!-- Add the class icon to your logo image or logo icon to add the margining -->
			Eylem Tabanlı Algılama
		</a>
		<!-- Header Navbar: style can be found in header.less -->
		<nav class="navbar navbar-static-top" role="navigation">
			<!-- Sidebar toggle button-->
			<a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
				role="button"> <span class="sr-only">Toggle navigation</span> <span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
			</a>
		</nav>
	</header>
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="left-side sidebar-offcanvas">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="active"><a href="index.jsp"> <i
							class="fa fa-dashboard"></i> <span>Ana Sayfa</span>
					</a></li>
					<li><a href="publications.jsp"><i class="fa fa-folder"></i>
							<span>Yayınlar</span> </a></li>
					<li><a href="team.jsp"> <i class="fa fa-th"></i> <span>Ekip</span>
					</a></li>
					<li><a href="events.jsp"> <i class="fa fa-laptop"></i> <span>Etkinlikler</span>
					</a></li>
					<li><a href="news.jsp"> <i class="fa fa-edit"></i> <span>Haberler</span>
					</a></li>
					<li><a href="links.jsp"> <i class="fa fa-table"></i> <span>Bağlantılar</span>
					</a></li>
					<li><a href="contact.jsp"> <i class="fa fa-envelope"></i>
							<span>İletişim</span>
					</a></li>
				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Right side column. Contains the navbar and content of the page -->
		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Eylem Tabanlı Kitle Kaynaklı Algılama Projesi <small>Galatasaray
						Üniversitesi</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Ana Sayfa</a></li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<div class="row">
					<div class="col-xs-3"></div>
					<div class="col-xs-6">
						<div class="box box-solid">
							<!-- /.box-header -->
							<div class="box-body">
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"
											class=""></li>
									</ol>
									<div class="carousel-inner">

										<div class="item active">
											<img src="img/2014-4-Trabzon-SIU.JPG" alt="Second slide"
												class="mainCarouselImg" />
											<div class="carousel-caption">Nisan 2014: SIU 2014
												Konferansında Position-Aware Activity Recognition On Mobıle
												Phones başlıklı bildirimizi sunduk</div>
										</div>
										<div class="item ">
											<img src="img/TulinBitirme.jpg" alt="First slide"
												class="mainCarouselImg" />
											<div class="carousel-caption">Haziran 2014: Bitirme
												Projesi öğrencileri poster ve proje sunumlarını
												gerçekleştirdiler</div>
										</div>
									</div>
									<a class="left carousel-control"
										href="#carousel-example-generic" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>

				<div class="row">
					<div class="col-xs-6">Bu proje Tübitak 3501-Kariyer
						Geliştirme Programı tarafından 113E271 numara ile
						desteklenmektedir.</div>
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="box-title">Özet</h3>
						<p>Kablosuz algılayıcılar ile eylem tanıma ve kitle kaynaklı
							algılama konuları yaygın hesaplama alanında öne çıkan araştırma
							konuları arasında yer almaktadır. Eylem tanıma konusu farklı
							algılama teknolojileri kullanılarak insan eylemleri ile ilgili
							veri toplanmasını ve toplanan veri ile eylemlerin
							sınıflandırılmasını içermekte, aynı zamanda sağlık, destekli
							yaşam gibi uygulama alanlarını hedeflemektedir. Kitle kaynaklı
							algılama konusu ise, çevresel ya da kişisel verilerin çok sayıda
							kullanıcı tarafından taşınan hareketli cihazlarla toplanmasını
							hedeflemektedir. Bu bağlamda, akıllı telefonlar üzerlerinde
							taşıdıkları ivmeölçer, GPS gibi zengin algılayıcı kümeleri,
							yaygın kullanımları, kullanım kolaylığı ve kablosuz iletişim ile
							toplanan verilerin sunuculara iletilmesi gibi yetenekleri
							sayesinde hem eylem tanıma hem de katılımcılı algılama
							konularında kullanılabilecek özgün ve ideal bir uygulama
							platformu sağlamaktadır.
						<p>Literatürde yer alan örnek kitle kaynaklı algılama
							uygulamalarında genellikle çevresel verilerin, örneğin ses
							seviyeleri ya da hava kirliliği gibi, katılımcılar tarafından yer
							ve zaman etiketli olarak toplanması amaçlanmaktadır. Eylem tanıma
							konusunda yapılan çalışmalarda ise kişisel hedeflere yönelik,
							örneğin sağlık, fiziksel formdalık, spor gibi, uygulama alanları
							hedeflenmiştir. Oysaki kitlelerin ve kalabalıkların eylemlerinin
							kitle kaynaklı algılama ile takibi kentsel planlama, ulaşım,
							hedefli reklamcılık gibi yeni uygulama alanlarına da bu
							sistemlerin entegre edilmesine olanak verebilir. Dolayısıyla,
							akıllı telefonlar üzerinde eylem tanıma ve kitle kaynaklı
							algılama tekniklerinin bütünleştirilmesi araştırma açısından ilgi
							çekici konuların adreslenmesine olanak sağlayacaktır.</p>
						<p>Projenin amaçlarından birisi, eylem tabanlı kitle kaynaklı
							algılama platformu tasarlanması ve geliştirilmesidir. Bu platform
							ile kullanıcıların telefonları üzerindeki ivmeölçer, GPS gibi
							algılayıcılar kullanılarak, hareket tabanlı eylemlerinin (yürüme,
							koşma gibi) yanı sıra ulaşım tiplerinin de sınıflandırılması
							mümkün olacaktır. Sınıflandırma sonuçları, telefonun kablosuz ara
							yüzleri sayesinde uygulama sunucusuna transfer edilerek, burada
							kitlelerin eylemlerinin analizi yapılabilecektir. Algılama
							platformu literatürdeki benzerlerine göre eylem tanıma işleminin
							tamamen telefon üzerinde yapılabilmesi açısından farklılık
							gösterecektir. Projenin ikinci hedefi ise geniş ölçekli bir eylem
							tanıma veri kümesi oluşturmaktır. Projede toplanacak veriler,
							kullanıcılardan alınacak izinler ve kişisel verilerde
							mahremiyetin ve gizliliğin korunması esas alınarak başka
							araştırmacıların kullanımına da açık hale getirilecektir ve
							farklı çalışmaların farklı çalışmaların analizinde bir kıyaslama
							ortamı (benchmark) sağlayacaktır. Proje çıktısı olarak
							oluşturulacak olan veri kümesi literatürdeki hareketli algılama
							veri kümelerinden farklı olarak, eylem tanımaya olanak sağlayan
							algılayıcılardan yararlanılması ve verinin işlem ve depolama
							kapasitesi açısından daha yetenekli yeni nesil telefonlar
							kullanılması açılarından farklılık gösterecektir.</p>
						<p>Bahsedilen bu amaçlara ulaşmak için, projenin araştırma
							konularını oluşturacak olan zorluklar ve problemle belirlenmiştir
							ve bu problemlerin çözümünde uygulamalı araştırma metotlarından
							yararlanılacaktır. İş planı dört iş paketinden oluşmaktadır.
							Öncelikle projenin ilk aşamasını oluşturacak olan eylem tanıma
							konusunda, uygun makine öğrenmesi algoritmalarının seçimi,
							öznitelik seçimi, bu metotların cep telefonları üzerinde
							çalışabilecek şekilde uyarlanması, kişi ve telefon pozisyonundan
							bağımsız eylem tanıma konuları projenin ilk fazındaki araştırma
							konularını oluşturacaktır. Daha sonra ise, eylem tanıma başarımı
							ve algılayıcı örnekleme aralıkları, veri iletimi sıklığı ve veri
							büyüklüğü arasındaki ödünleşimlerin analizi ve eniyileştirme
							algoritmaları üzerinde çalışılacaktır. Bu problemlerin çözümünden
							ve algılama platform için gerekli yazılımların geliştirilmesinden
							sonra veri toplama fazına geçilecektir. Bu fazda öncelikle
							gönüllü katılımcıların seçimi ve daha sonra da 9 ay boyunca en az
							20 katılımcı ile veri toplama işlemine geçilecektir. Projenin son
							temel araştırma konusunu oluşturacak toplanan verilerin analizi
							kısmında ise kümeleme ve topik model gibi yöntemlerden
							yararlanılacak ve eylemlere göre bölgelerin tanınması ve farklı
							bölgelerin hangi eylem kümeleri ile ilişkili olduğu konularında
							çalışılacaktır. Platform ayrıca üniversite kampusunda bir vaka
							çalışması ile test edilecektir. Bu araştırma konularından elde
							edilen sonuçlar, konferans bildirileri ve makalelerle ile ilgili
							taraflarla paylaşılacaktır. Proje süresince her yıl için 3
							konferans bildirisi ve 2 makale yayınlanması planlanmaktadır.
							Ayrıca proje sonuçlarının paylaşılması amacıyla 2 tane araştırma
							bilgilendirme toplantısı organize edilecek ve bu toplantılara
							konu ile ilgili çalışan diğer akademisyenlerin yanı sıra proje
							çıktılarından yararlanabilecek endüstri temsilcileri ve
							belediyelerin de katılımı sağlanacaktır. Bu toplantılara kitle
							kaynaklı algılama ve eylem tanıma konularında çalışan, literatüre
							büyük katkıları olmuş araştırmacılar davetli kocuşmacı olarak
							çağrılarak konu ile ilgili vizyonlarını paylaşmaları
							sağlanacaktır.</p>


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
	<!-- jQuery 2.0.2 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<!-- AdminLTE App -->
	<script src="js/AdminLTE/app.js" type="text/javascript"></script>

	<script src="js/plugins/fullcalendar/fullcalendar.min.js"
		type="text/javascript"></script>
	<!-- Page specific script -->


</body>
</html>