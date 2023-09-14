<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/classValidation.js"></script>
<title>클래스 등록</title>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > 
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
		<div class="text-right"> 
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>		
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a> 	
		</div>
			<h1 class="display-3"><fmt:message key="add_class" /></h1>
		</div>
	</div>
	<div class="container">
		<form name="newClass" action="./processAddClass.jsp" class="form-horizontal" method="post"
		enctype = "multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="classId" /> </label>
				<div class="col-sm-3">
					<input type="text" id="classId" name="classId" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="cname" /></label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
				<div class="col-sm-3">
					<input type="text" id="unitPrice" name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="Numberofpeople" /></label>
				<div class="col-sm-3">
					<input type="text" id="Numberofpeople" name="Numberofpeople" class="form-control" >
				</div>
			</div>
			<div class ="form-group row">
			<label class ="col-sm-2"><fmt:message key="classImage" /></label>
				<div class ="col-sm-5">
 					<input type="file" name="classImage" class="form-control">
 				</div>
 			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddClass()">
				</div>
			</div>
		</form>
	</div>
</fmt:bundle>
</body>
</html>
