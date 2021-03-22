<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DetailView</title>
<style>
.table { <%--테이블 정의--%>
	border-collapse:collapse;
	text-align: left;
	width: 100%;
	margin: auto;
	position: relative;
	top: 20px;
}

.table th, .table td { <%--전체 셀 정의 --%>
	padding:10px;
	border: 1px solid #ddd;
}

.table th:first-child, .table td:first-child { <%--첫번째 열 테두리 제거--%>
	border-left:0;
	
}

.table th:last-child, .table td:last-child { <%--마지막 열 테두리 제거--%>
	border-right:0;
	
}

.table tr td:first-child {
	text-align: center;
}

.table caption { <%--테이블 설명 정의--%>
	caption-side:top;
	margin-top: 30px;
	margin-bottom: 30px;
	text-align: left;
	color: hotpink;
	font-weight: 800;
	font-size: 20px;
}

.total { <%--열량 색상--%>
	background-color:rgba(90, 154, 211, 0.2);
	
}

.fat { <%--지방 색상--%>
	background-color:rgba(252, 228, 236, 0.7);
	
}

.pro { <%--단백질 색상--%>
	background-color:rgba(255, 140, 0, 0.2);
	
}

.car { <%--탄수화물 색상--%>
	background-color:rgba(0, 250, 154, 0.2);
	
}

.fib { <%--식이섬유 색상--%>
	background-color:rgba(124, 104, 238, 0.2);
	
}

.button { <%-- 버튼 정의 --%>
	background-color:#FCE4EC;
	width: 80px;
	height: 30px;
	float: right;
	margin-right: 20px;
	border-radius: 5px;
	border: 1px solid silver;
	cursor: pointer;
}
</style>
</head>
<body
	style="font-family: 맑은 고딕, 돋움, dotum, 굴림, gulim, arial; padding: 40px; margin: 35px;">

	<%@ include file="declaration.jsp"%>
	<%-- (directive tag)declaration.jsp 정적으로 포함 --%>
	<%
	String name = request.getParameter("name");
	FoodNutrientFact f = food.get(name);
	%>
	<%-- String name:list.jsp에서 대입한 name, 
			name에 해당하는 정보를 f에 대입 --%>
	<jsp:include page="header.jsp" />
	<%-- (action tag)header.jsp 동적으로 포함 --%>
	<h1><%=name%>
		Nutrient Facts
	</h1>
	<%-- 제목(h1) --%>
	<hr color="black" size="3px">
	<%-- 구분선 색상:black, 굵기:3px --%>
	<h3 style="color: hotpink; font-weight: 800; font-size: 20px;">Food
		Description</h3>
	<%-- 제목(h3) 색상:hotpink, 굵기:800, 크기:20px --%>
	<hr color="lightgrey" size="1px">
	<%-- 구분선 색상:lightgrey, 굵기:1px --%>
	<table>
		<tr
			style="text-align: left; float: left; display: block; font-weight: bold; width: 150px;">
			<%-- 텍스트 왼쪽 정렬, 블록(줄바꿈), 글씨:굵게, 너비:150px --%>
			<th style="display: block;">Id</th>
			<th style="display: block;">Name</th>
			<th style="display: block;">Group</th>
		</tr>
		<tr style="display: block; float: left;">
			<%-- 블록(줄바꿈), 왼쪽 정렬 --%>
			<td style="display: block;"><%=f.getId()%></td>
			<td style="display: block;"><%=f.getName()%></td>
			<td style="display: block;"><%=f.getGroup()%></td>
		</tr>
	</table>
	<hr color="lightgrey" size="1px">
	<%-- 구분선 색상:lightgrey, 굵기: 1px --%>
	<div
		style="float: left; width: 50%; text-align: center; line-height: 500px;">
		<%-- 왼쪽 정렬, 너비:50%, 정렬:가운데, 높이:500px --%>
		<img src="image/<%=name%>.png" alt=<%=name%>
			style="padding: 10%; width: 70%; vertical-align: middle;">
		<%-- image폴더의 'name'.png 이미지, 대체글:'name', 여백:10%, 너비:70%, 세로 가운데 정렬 --%>
	</div>
	<div style="float: right; width: 50%;">
		<table class="table">
			<caption>Total Nutrient Content Information</caption>
			<tr>
				<td class="total">1</td>
				<td>Calories</td>
				<td><%=f.getCalories()%> Kcal</td>
			</tr>
			<tr>
				<td class="fat">2</td>
				<td>Fat</td>
				<td><%=f.getFat()%> g</td>
			</tr>
			<tr>
				<td class="pro">3</td>
				<td>Protein</td>
				<td><%=f.getProtein()%> g</td>
			</tr>
			<tr>
				<td class="car">4</td>
				<td>Carbohydrate</td>
				<td><%=f.getCarbohydrate()%> g</td>
			</tr>
			<tr>
				<td class="car">5</td>
				<td>Sugar</td>
				<td><%=f.getSugars()%> g</td>
			</tr>
			<tr>
				<td class="fib">6</td>
				<td>Fiber</td>
				<td><%=f.getFiber()%> g</td>
			</tr>
			<tr>
				<td class="fat">7</td>
				<td>Cholesterol</td>
				<td><%=f.getCholesterol()%> mg</td>
			</tr>
			<tr>
				<td class="fat">8</td>
				<td>Saturated Fats</td>
				<td><%=f.getSaturatedFats()%> g</td>
			</tr>
		</table>
	</div>
	<div style="clear: both;"></div>
	<button class="button" onclick="location.href = 'index.jsp'">목록</button>
	<%-- 버튼 클릭시 "index.jsp"로 이동 --%>
	<div style="clear: both;"></div>
	
	<jsp:include page="footer.jsp" />
	<%-- (action tag)footer.jsp 동적으로 포함 --%>

</body>
</html>