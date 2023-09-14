<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" 	href="./resources/css/bootstrap.min.css"/>
<title>상품 아이디 오류</title>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
<%
	String loginId = String.valueOf(session.getAttribute("sessionId"));
	if(loginId.equals("admin")){
%>
		<jsp:include page="menu.jsp"/>
		<div class="jumbotron">
			<div class="container">
				<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
			</div>
		</div>
		<div class="container">
			<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
			<p> <a href="breads.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
		</div>
<%
	}
	else if(loginId.equals("null") || !loginId.equals("admin")){
%>
		<jsp:include page="menu2.jsp"/>
		<div class="jumbotron">
			<div class="container">
				<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
			</div>
		</div>
		<div class="container">
			<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
			<p> <a href="breads.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
		</div>
<%
	}
%>

</body>
</html>