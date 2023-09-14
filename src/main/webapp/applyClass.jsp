<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.BakingClass"%>
<%@ page import="dao.BakingClassRepository"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/applyValidation.js"></script>
<title>클래스 신청</title>
</head>

<body style="background-image:url(./resources/images/background.jpg)">
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > 
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
	<%
		String id = request.getParameter("id");
		BakingClassRepository dao = BakingClassRepository.getInstance(); //6장 수정
		BakingClass product = dao.getClassById(id);                //6장 수정
	%>
		<div class="container">
		<div class="text-right"> 
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>		
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a> 	
		</div>
			<h1 class="display-3"><fmt:message key="apply_class" /></h1>
		</div>
	</div>
	<div class="container">
		<form name="applyClass" action="./processApplyClass.jsp?id=<%=product.getClassId()%>" class="form-horizontal" method="post"
		enctype = "multipart/form-data">
			
			<h3><%=product.getCname()%></h3>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="id" /></label>
				<div class="col-sm-3">
					<input type="text" id="id" name="id" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="phone" /></label>
				<div class="col-sm-3">
					<input type="text" id="phone" name="phone" class="form-control" >
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="people" /></label>
				<div class="col-sm-3">
					<input type="number" id="people" name="people" min="1" max="4" class="form-control" >
				</div>
			</div>
			
				
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckApplyClass()">
				</div>
			</div>
		</form>
	</div>
</fmt:bundle>
</body>
</html>
