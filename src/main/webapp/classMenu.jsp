<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId"); //로그인 세션 관리
%>
<html>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<body style="background-image:url(./resources/images/background.jpg)">
	<nav class="navbar navbar-expand  navbar-dark" style="background-color: #DB9700;">
		<div class="container">

			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/addClass.jsp?"/>">클래스 개설</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/editClass.jsp?edit=update"/>">클래스 수정</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/editClass.jsp?edit=delete"/>">클래스 삭제</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value="/showApply.jsp?"/>">클래스 신청 현황</a></li>
				</ul>
			</div>

		</div>
		<hr>
	</nav>
	<%! String greeting = "원데이 클래스 수정 공간입니다!";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div id="section">
		<div class="col" align="center">
			<a href="./addClass.jsp?" class="btn btn-secondary" onclick="applyClass()"> 클래스 개설&raquo;</a> 
			
			<a href="./editClass.jsp?edit=update" class="btn btn-secondary"> 클래스 수정&raquo;</a>
			<a href="./editClass.jsp?edit=delete" class="btn btn-secondary"> 클래스 삭제&raquo;</a>
			<a href="./showApply.jsp?" class="btn btn-secondary"> 클래스 신청 현황&raquo;</a>
		</div>
	</div>

	<div id="footer"><%@ include file="footer.jsp"%></div>

</body>
</html>