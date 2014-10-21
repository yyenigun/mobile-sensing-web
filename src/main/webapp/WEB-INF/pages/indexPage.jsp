<%@ page contentType="text/html; charset=UTF-8" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<jsp:include page="include/head.jsp" />
<body class="skin-blue">
	<!-- header logo: style can be found in header.less -->
    <jsp:include page="include/header.jsp" />
	<div class="wrapper row-offcanvas row-offcanvas-left">
		<!-- Left side column. contains the logo and sidebar -->
		<jsp:include page="include/leftmenu.jsp" />
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
											<img
												src="<c:url value="/resources/img/2014-4-Trabzon-SIU.JPG" />"
												alt="Second slide" class="mainCarouselImg" />
											<div class="carousel-caption">Nisan 2014: SIU 2014
												Konferansında Position-Aware Activity Recognition On Mobıle
												Phones başlıklı bildirimizi sunduk</div>
										</div>
										<div class="item ">
											<img src="<c:url value="/resources/img/TulinBitirme.jpg" />"
												alt="First slide" class="mainCarouselImg" />
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
    <jsp:include page="include/footer.jsp" />


</body>
</html>