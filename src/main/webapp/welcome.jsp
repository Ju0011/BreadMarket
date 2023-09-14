<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<html>
<head>
<link rel = "stylesheet"
    href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome 어서오세요!</title>
</head>
<body style="background-image:url(./resources/images/background.jpg)">
<%@ include file="menu2.jsp" %>
    <%! String greeting = "서경 베이커리에 어서오세요!";
    String tagline = "Welcome to SK Bakery Market!";  %>
	<div class="jumbotron" style="background-color: #e6c98a;">
		<div class="container">
			<h1 class="display-3">
				<img src="./resources/images/banner.png" style="width: 100%">
			</h1>

		</div>
	</div>

	<main role="main">
		<div class="container" style = "text-align: center">
			<div style="font-size : 20px">
				<nav class="nav justify-content-center bg-light">
					<ul class="nav justify-content-center bg-light">
						<li class="nav-item"><a style="color: #be0000;"
							class="nav-link"
							href="<c:url value="/category.jsp?category=cake"/>">케이크</a></li>
						<li class="nav-item"><a style="color: #be0000;"
							class="nav-link"
							href="<c:url value="/category.jsp?category=bread"/>">빵 종류</a></li>
						<li class="nav-item"><a style="color: #be0000;"
							class="nav-link" href="<c:url value="/classes.jsp?"/>">원데이 클래스</a></li>
					</ul>
				</nav>
			</div>
			<hr>

			<div id="slide" class="carousel slide" style="width: 400px; margin: 0 auto">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="./resources/images/banner_bread.png"
							class="d-block w-100" alt="..."/>
					</div>
					<div class="carousel-item">
						<img src="./resources/images/banner_cookie.png"
							class="d-block w-100" alt="..." />
					</div>
					<div class="carousel-item">
						<img src="./resources/images/banner_cake.png" class="d-block w-100" alt="..." />
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#slide" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#slide" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
				crossorigin="anonymous"></script>
		</div>

		<hr>
		<div class="text-center">
			<h3><%=greeting%></h3>
			<h3><%=tagline%></h3>
			<%
			//response.setIntHeader("Refresh", 5);
			Date day = new java.util.Date();
			String am_pm;
			int hour = day.getHours();
			int minute = day.getMinutes();
			int second = day.getSeconds();
			if (hour / 12 == 0) {
				am_pm = "AM";
			} else {
				am_pm = "PM";
				hour = hour - 12;
			}
			String CT = hour + ":" + minute + ":" + second + " " + am_pm;
			out.println("현재 접속 시간: " + CT + "\n");
			%>
		</div>
		<hr>

		</div>
	</main>
	<%@ include file="footer.jsp" %>
</body>
</html>