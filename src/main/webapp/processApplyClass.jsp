<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp"%>

<%
	request.setCharacterEncoding("UTF-8");

	
	String filename = "";
	String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로

	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	
	
	String id = multi.getParameter("id");
	String classId = request.getParameter("id");
	String name = multi.getParameter("name");
	String phone = multi.getParameter("phone");
	
	int people = Integer.parseInt(multi.getParameter("people"));
    
    PreparedStatement pstmt = null; 
	PreparedStatement pstmtUpdate = null;
    
	String insertSql = "insert into classApply values(?,?,?,?)";
	pstmt = conn.prepareStatement(insertSql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, phone);
	pstmt.setString(4, classId);
	
	pstmt.executeUpdate();
	
	
	
	String updateSql = "update class set c_unitsInStock = c_unitsInStock - ? where c_id = ?";
	
	pstmtUpdate = conn.prepareStatement(updateSql);
	pstmtUpdate.setInt(1, people);
	pstmtUpdate.setString(2, classId);
	
	pstmtUpdate.executeUpdate();
	
	
	
	if (pstmt != null)
 		pstmt.close();
	if (pstmtUpdate != null)
		pstmtUpdate.close();
 	if (conn != null)
		conn.close();
    
	response.sendRedirect("classes.jsp");
%>
