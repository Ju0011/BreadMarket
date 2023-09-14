<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Bread"%>
<%@ page import="dao.BreadRepository"%>
<%@ page import="java.sql.*"%>


<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css?after">
<title>상품 목록</title>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
<%
	String loginId = String.valueOf(session.getAttribute("sessionId"));
	if(loginId.equals("admin")){
%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" >
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
	</div>

	<div class="container">
		<div class="row" align="center" style="background-color: #ffffff;">
			<%@ include file="dbconn.jsp"%>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				String sql = "select * from bread";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
			
			<div class="col-md-4">
				<img src="./resources/images/<%=rs.getString("b_fileName")%>" style="width: 100%">
				
				<h3><%=rs.getString("b_name")%></h3>
				<p><%=rs.getString("b_description")%>
				<p><%=rs.getString("b_UnitPrice")%>원
				<p>
				<a href="./bread.jsp?id=<%=rs.getString("b_id")%>"
					class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
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
<%
	}
	else if(loginId.equals("null") || !loginId.equals("admin")){
%>

			<jsp:include page="menu2.jsp" />
			<div class="jumbotron">
				<div class="container">
					<h1 class="display-3">상품목록</h1>
				</div>
			</div>
			<%
				//ProductRepository dao = ProductRepository.getInstance();  //6장 수정 -> 16장에서 삭제. DB사용
				//ArrayList<Product> listOfProducts = dao.getAllProducts(); //6장 수정 -> 16장에서 삭제. DB사용
			%>

			<div class="container">
			<div class="row" align="center">
					<%@ include file="dbconn.jsp"%>
					<%
						
						PreparedStatement pstmt = null;
						ResultSet rs = null;
				
						String sql = "select * from bread";
						pstmt = conn.prepareStatement(sql);
						rs = pstmt.executeQuery();
						while (rs.next()) {
					%>
			
					<div class="col-md-4">
						<img src="./resources/images/<%=rs.getString("b_fileName")%>" style="width: 100%">
						<h3><%=rs.getString("b_name")%></h3>
						<p><%=rs.getString("b_description")%>
						<p><%=rs.getString("b_UnitPrice")%>원
						<p>
						<a href="./bread.jsp?id=<%=rs.getString("b_id")%>"
							class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
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
<%
	}
%>

	<jsp:include page="footer.jsp" />
</body>
</html>