<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Bread"%>
<%@ page import="dao.BreadRepository"%>
<%@ page errorPage="exceptionNoBreadId.jsp"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
<%
	String loginId = String.valueOf(session.getAttribute("sessionId"));
	if(loginId.equals("admin")){
%>
		<jsp:include page="menu.jsp" />
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">상품 정보</h1>
			</div>
		</div>
		<%
			String id = request.getParameter("id");
	
			BreadRepository dao = BreadRepository.getInstance();
			Bread bread = dao.getBreadById(id);               
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="./resources/images/<%=bread.getFilename()%>" style="width:100%" >
					
				</div>
				<div class="col-md-6">
					<h3><%=bread.getBname()%></h3>
					<p><%=bread.getDescription()%>
					<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=bread.getBreadId()%></span>
					<p><b>분류</b> : <%=bread.getCategory()%>
					<p><b>재고 수</b> : <%=bread.getUnitInstock()%>
					<h4><%=bread.getUnitPrice()%>원</h4>
					<p>
					<form name="addForm" action="./addCart.jsp?id=<%=bread.getBreadId()%>" method="post">
						<a href="./breads.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
					</form>			
					
				</div>
			</div>
			<hr>
		</div>
<%
	}
	else if(loginId.equals("null") || !loginId.equals("admin")){
%>
		<jsp:include page="menu2.jsp" />
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">상품 정보</h1>
			</div>
		</div>
		<%
			String id = request.getParameter("id");
	
			BreadRepository dao = BreadRepository.getInstance(); //6장 수정
			Bread bread = dao.getBreadById(id);                //6장 수정
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="./resources/images/<%=bread.getFilename()%>" style="width:100%" >
				</div>
				<div class="col-md-6">
					<h3><%=bread.getBname()%></h3>
					<p><%=bread.getDescription()%>
					<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=bread.getBreadId()%></span>
					<p><b>분류</b> : <%=bread.getCategory()%>
					<p><b>재고 수</b> : <%=bread.getUnitInstock()%>
					<h4><%=bread.getUnitPrice()%>원</h4>
					<p>
					<form name="addForm" action="./addCart.jsp?id=<%=bread.getBreadId()%>" method="post">
						<a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a> 
						<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
						<a href="./breads.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
					</form>			
					
				</div>
			</div>
			<hr>
		</div>
<%
	}
%>
<jsp:include page="footer.jsp" />
</body>
</html>
