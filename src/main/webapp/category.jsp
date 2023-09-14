<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css">
<title>카테고리</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if(confirm("해당 상품을 삭제합니다!!")==true)
			location.href="./deleteBread/jsp?id="+id;
		else
			return;
	}
</script>
</head>
<%
	String category=request.getParameter("category");
%>
<body style="background-image:url(./resources/images/background.jpg)">
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">카테고리</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				
				String sql="select * from bread where b_category = ?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, category);
				rs=pstmt.executeQuery();
				while(rs.next()) {
			%>
			<div class="col-md-4">
				
				<img src="./resources/images/<%=rs.getString("b_fileName")%>" style="width: 100%">

				<h3><%=rs.getString("b_name") %></h3>
				<p><%=rs.getString("b_description") %>
				<p><%=rs.getString("b_UnitPrice") %>원
				<p>
				<a href="./bread.jsp?id=<%=rs.getString("b_id")%>"
							class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
			<%
				}
				if(rs!=null)
					rs.close();
				if(pstmt!=null)
					pstmt.close();
				if(conn!=null)
					conn.close();
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html> 