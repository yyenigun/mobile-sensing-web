<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html class="bg-black">
<head>
<meta charset="UTF-8">
<title>AdminLTE | Log in</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>


<!-- bootstrap 3.0.2 -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="<c:url value="/resources/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<c:url value="/resources/css/AdminLTE.css" />"
	rel="stylesheet" type="text/css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
</head>
<body class="bg-black">

	<div class="form-box" id="login-box">
		<div class="header">Giriş</div>
		<form action="${pageContext.request.contextPath}/login" method="post">
			<div class="body bg-gray">
				<div class="form-group">
					<input type="text" name="username" class="form-control"
						placeholder="Kullanıcı Adı" />
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control"
						placeholder="Şifre" />
				</div>
				<c:if test="${'fail' eq param.auth}">
					<div style="color: red">
						Giriş başarısız.<br />
					</div>
				</c:if>
			</div>
			<div class="footer">
				<button type="submit" name="submit" class="btn bg-olive btn-block">Giriş</button>
			</div>
		</form>
	</div>


	<!-- jQuery 2.0.2 -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"
		type="text/javascript"></script>

</body>
</html>