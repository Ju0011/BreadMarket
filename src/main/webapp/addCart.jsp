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

	ArrayList<Bread> goodsList = dao.getAllProducts();
	Bread goods = new Bread();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getBreadId().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Bread> list = (ArrayList<Bread>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Bread>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Bread goodsQnt = new Bread();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getBreadId().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}

	response.sendRedirect("bread.jsp?id=" + id);
%>