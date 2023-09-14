<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet"
	href="./resources/css/bootstrap.min.css">
<title>상품 편집</title>
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
	String edit=request.getParameter("edit");
%>
<body >
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				
				String sql="select * from bread";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next()) {
			%>
			<div class="col-md-4">
				
				<img src="./resources/images/<%=rs.getString("b_fileName")%>" style="width: 100%">

				<h3><%=rs.getString("b_name") %></h3>
				<p><%=rs.getString("b_description") %>
				<p><%=rs.getString("b_UnitPrice") %>원
				<p>
				<%
					if(edit.equals("update")) {
				 %>
				<a href="./updateBread.jsp?id=<%=rs.getString("b_id") %>"class="btn btn-success" role="button"> 수정 &raquo;</a>
					<%
						}else if(edit.equals("delete")){
					%>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("b_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
					<%
						}
					%>
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