<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Bread"%>
<%@ page import="dao.BreadRepository"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("breads.jsp");
		return;
	}

	BreadRepository dao = BreadRepository.getInstance();
	
	Bread bread = dao.getBreadById(id);
	if (bread == null) {
		response.sendRedirect("exceptionNoBreadId.jsp");
	}

	ArrayList<Bread> cartList = (ArrayList<Bread>) session.getAttribute("cartlist");
	Bread goodsQnt = new Bread();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getBreadId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
