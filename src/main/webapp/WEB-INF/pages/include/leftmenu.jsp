<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<aside class="left-side sidebar-offcanvas">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li><a href="${pageContext.request.contextPath}/indexPage">
					<i class="fa fa-dashboard"></i> <span>Ana Sayfa</span>
			</a></li>
			<sec:authorize access="isAuthenticated()">
				<li class="treeview"><a
					href="${pageContext.request.contextPath}/secured/main"> <i
						class="fa fa-edit"></i> <span>Kontrol Paneli</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu" style="display: block;">
						<sec:authorize
							access="hasRole('ROLE_USER')  and !hasRole('ROLE_ADMIN')">
							<li><a
								href="${pageContext.request.contextPath}/secured/main"><i
									class="fa fa-angle-double-right"></i> Aktivite Bilgileri </a></li>
							<li><a
								href="${pageContext.request.contextPath}/secured/device/${username}"><i
									class="fa fa-angle-double-right"></i> Cihaz Bilgileri </a></li>
						</sec:authorize>
						<sec:authorize
							access="hasRole('ROLE_ADMIN')">
							<li><a
								href="${pageContext.request.contextPath}/secured/main"><i
									class="fa fa-angle-double-right"></i> Kullanıcı Listesi </a></li>
						</sec:authorize>
						<li><a
							href="${pageContext.request.contextPath}/secured/activityrankings"><i
								class="fa fa-angle-double-right"></i> Aktivite Sıralamaları </a></li>
					</ul></li>
			</sec:authorize>
			<li><a
				href="${pageContext.request.contextPath}/publications.jsp"><i
					class="fa fa-folder"></i> <span>Yayınlar</span> </a></li>
			<li><a href="${pageContext.request.contextPath}/team.jsp"> <i
					class="fa fa-th"></i> <span>Ekip</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/events.jsp">
					<i class="fa fa-laptop"></i> <span>Etkinlikler</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/news.jsp"> <i
					class="fa fa-edit"></i> <span>Haberler</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/links.jsp">
					<i class="fa fa-table"></i> <span>Bağlantılar</span>
			</a></li>
			<li><a href="${pageContext.request.contextPath}/contact.jsp">
					<i class="fa fa-envelope"></i> <span>İletişim</span>
			</a></li>
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>