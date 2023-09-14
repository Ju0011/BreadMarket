<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.BakingClass"%>
<%@ page import="dao.BakingClassRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>클래스 상세 정보</title>
<script type="text/javascript">
	function applyClass() {
		if (confirm("클래스를 신청하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
		<%@ include file="dbconn.jsp"%>
			<h1 class="display-3">클래스 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		BakingClassRepository dao = BakingClassRepository.getInstance(); //6장 수정
		BakingClass product = dao.getClassById(id);                //6장 수정	
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from class where c_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		while (rs.next()) {
	
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=product.getFilename()%>" style="width:100%" >
			</div>
			<div class="col-md-6" style="background-color: #ffffff;">
				<h3><%=rs.getString("c_name")%></h3>
				<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getClassId()%></span>
				<p><%=rs.getString("c_description")%>
				<p><%=rs.getString("c_UnitPrice")%>원
				<p>신청가능 인원 수 : <%=rs.getString("c_UnitsInStock")%>명
				
				<p>
				<form name="addForm" action="./applyClass.jsp?id=<%=product.getClassId()%>" method="post">
					<a href="#" class="btn btn-info" onclick="applyClass()"> 클래스 신청 &raquo;</a> 
					<a href="./classes.jsp" class="btn btn-secondary"> 클래스 목록 &raquo;</a>
					
					
				</form>			
				
			</div>
			<%
				}
				
			if (rs != null)
				rs.close();
 			if (pstmt != null)
 				pstmt.close();
 			if (conn != null)
				conn.close();
			%>
		</div>
		<hr>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>
