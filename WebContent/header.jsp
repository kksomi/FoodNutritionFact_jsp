<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style>
.navbar { <%-- 메뉴 바 정의 --%>
	background:hotpink;
	margin: 0;
	padding: 0;
	list-style: none;
	position: fixed;
	z-index: 99999;
	top: 0;
	left: 0;
	width: 100%;
}

.navbar>li { <%-- 메뉴 리스트 정의 --%>
	display:inline-block;
	
}

.navbar>li>a { <%--리스트 링크 정의--%>
	display:block;
	text-decoration: none;
	padding: 10px 20px;
	color: white;
}
</style>

</head>
<body>

	<nav>
		<ul class="navbar">
			<%-- 메뉴바 클래스 = "navbar" --%>
			<li
				style="float: left; font-family: arial; font-weight: bold; font-size: 20px;"><a
				href="index.jsp">Food Nutrition Facts</a></li>
			<!-- 왼쪽 정렬, 글씨체:arial, 글씨 굵기:굵게, 글씨 크기: 20ox, 링크="index.jsp" -->
			<li
				style="float: right; font-family: sans-serif; letter-spacing: 2px; font-size: 18px;"><a
				href="index.jsp">Back</a></li>
			<!-- 오른쪽 정렬, 글씨체:sans-serif, 글자간격:2px, 글씨크기:18px, 링크="index.jsp" -->
		</ul>
	</nav>

</body>
</html>