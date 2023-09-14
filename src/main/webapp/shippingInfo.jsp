<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Bread"%>
<%@ page import="dao.BreadRepository"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>배송 정보</title>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
	<jsp:include page="menu2.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">배송 정보</h1>
		</div>
	</div>
	<div class="container">
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">연락처</label>
				<div class="col-sm-3">
					<input name="shippingDate" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">우편번호</label>
				<div class="col-sm-3">
					<input name="zipCode" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-5">
					<input name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">배송요청사항</label>
				<div class="col-sm-3">
					<select name="mail2">
						<option>선택해주세요.</option>
						<option>배송전 연락바랍니다.</option>
						<option>부재시 경비실에 맡겨주세요.</option>
						<option>문 앞에 두고 가주세요.</option>
						<option>조심히 안전하게 와주세요.</option>
					</select>					
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><p style="font-weight:bolder;">총액</p></label>
				<div class="col-sm-5">
						<%String sum = String.valueOf(session.getAttribute("sum")); %>
						<p style="font-weight:bolder; color:red;">
							<%=sum %>
						</p>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
					<input	type="submit" class="btn btn-primary" value="등록" />
					<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
