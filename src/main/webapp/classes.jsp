<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.BakingClass"%>
<%@ page import="dao.BakingClassRepository"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>클래스 목록</title>

</head>
<body style="background-image:url(./resources/images/background.jpg)">
	<jsp:include page="menu2.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">클래스 목록</h1>
		</div>
	</div>
	<div class="container" >
		<div class="col" align="center" style="background-color: #ffffff;">
			<%@ include file="dbconn.jsp"%>
			<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			String sql = "select * from class";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
			%>
			<script type="text/javascript">
				function checkNumber(id) {
				      if (id == 0) {
				        event.preventDefault(); // 페이지 전환을 막음
				        alert("이미 신청 마감된 클래스입니다.");
				      }
				}
			</script>

			<div class="col-md-6" >
				<img src="./resources/images/<%=rs.getString("c_fileName")%>"
					style="width: 100%; padding-top : 30px" align="left">
				<h3><%=rs.getString("c_name")%></h3>
				<p><%=rs.getString("c_description")%>
				<p><%=rs.getString("c_UnitPrice")%>원
				<p>
					신청가능 인원 수 :
					<%=rs.getInt("c_UnitsInStock")%>명
				<p>
					<a href="./class.jsp?id=<%=rs.getString("c_id")%>"
						id=<%=rs.getInt("c_UnitsInStock")%> class="btn btn-info" role="button" onclick="checkNumber(id)"> 상세 정보 &raquo;></a>
				<hr>
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