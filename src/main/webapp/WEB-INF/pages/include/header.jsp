<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="header">
	<a href="${pageContext.request.contextPath}/indexPage" class="logo"> <!-- Add the class icon to your logo image or logo icon to add the margining -->
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
		<div class="navbar-right">
			<ul class="nav navbar-nav">
				<!-- User Account: style can be found in dropdown.less -->
				<sec:authorize access="isAnonymous()">
					<a href="loginPage" class="navbar-btn sidebar-toggle"> <!-- Add the class icon to your logo image or logo icon to add the margining -->
						<span>Oturum Açın</span>
					</a>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<!-- User Account: style can be found in dropdown.less -->
					<li class="dropdown user user-menu"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"> <i
							class="glyphicon glyphicon-user"></i> <span>${pageContext.request.userPrincipal.name}<i
								class="caret"></i></span>
					</a>
						<ul class="dropdown-menu">
							<!-- User image -->
							<li class="user-header bg-light-blue"><img
								src="<c:url value="/resources/img/avatar3.png" />"
								class="img-circle" alt="User Image" />
								<p>${username}</p></li>

							<!-- Menu Footer-->
							<li class="user-footer">
								<div class="pull-left">
									<a href="#" class="btn btn-default btn-flat">Profil</a>
								</div>
								<div class="pull-right">
									<a href="${pageContext.request.contextPath}/logout"
										class="btn btn-default btn-flat">Çıkış</a>
								</div>
							</li>
				</sec:authorize>

			</ul>
		</div>
	</nav>
</header>