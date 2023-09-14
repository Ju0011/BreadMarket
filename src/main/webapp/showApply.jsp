<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.BakingClass"%>
<%@ page import="dao.BakingClassRepository"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>클래스 신청자 목록</title>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">클래스 신청자 목록</h1>
		</div>
	</div>
	<div class="container">
		<div class="col" align="center">
			<%@ include file="dbconn.jsp"%>

			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			String sql = "select * from classApply";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()){
			%>
			<div class="col-md-6">
				<table class="table table-hover">
					<tr>
						<th class="text-center">클래스 아이디</th>
						<th class="text-center">아이디</th>
						<th class="text-center">이름</th>
						<th class="text-center">전화번호</th>
					</tr>
					<%
					do{
					%>
					<tr>
						<td class="text-center"><%=rs.getString("classId")%></td>
						<td class="text-center"><%=rs.getString("id")%></td>
						<td class="text-center"><%=rs.getString("name")%></td>
						<td class="text-center"><%=rs.getString("phone")%></td>
					</tr>

					<%
					} while (rs.next());
					%>

				</table>
				<hr>
			</div>
			<%
			} else {
			%>
			<h2 class="alert alert-danger">신청한 클라이언트가 없습니다.</h2>
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