<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId"); //로그인 세션 관리
%>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

<nav class="navbar navbar-expand  navbar-dark" style="background-color: #DB9700;">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./welcome.jsp">Home</a>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
			
			<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMember.jsp"/>">로그인 </a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMember.jsp"/>'>회원 가입</a>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMember.jsp"/>">로그아웃 </a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/updateMember.jsp"/>'>내 정보</a>
					</c:otherwise>
				</c:choose>	
			
				<li class="nav-item"><a class="nav-link" href="<c:url value="/breads.jsp"/>">상품 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/classes.jsp?"/>">클래스 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/cart.jsp"/>">장바구니</a></li>
			</ul>
		</div>
	</div>
</nav>
