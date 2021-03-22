<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
<style>
.table { <%--table class selector 정의--%>
	border-collapse:collapse;
	border-top: 3px solid hotpink;
	text-align: center;
	width: 90%;
	margin: auto;
}

.table th { <%--헤더 셀 정의--%>
	background:pink;
	text-align: center;
}

.table th, .table td { <%--전체 셀 정의--%>
	padding:10px;
	border: 1px solid #ddd;
}

.table th:first-child, .table td:first-child { <%--첫번째 열 테두리 제거--%>
	border-left:0;
	
}

.table th:last-child, .table td:last-child { <%--마지막 열 테두리 제거--%>
	border-right:0;
	
}

.table tr td:first-child { <%--텍스트 가운데 정렬--%>
	text-align:center;
	
}

.table caption { <%--table caption 정의--%>
	caption-side:bottom;
	font-size: 14px;
	color: silver;
	position: relative;
	top: 10px;
	text-align: right;
}
</style>
</head>
<body>

	<table class="table" style="width: 70%;">
		<caption>식품 이름을 클릭하면 식품영양정보를 볼 수 있습니다.</caption>
		<tr>
			<th>No</th>
			<th>Id</th>
			<th>Name</th>
			<th>Group</th>
			<th>Kcal/100g</th>
		</tr>
		<%@ include file="declaration.jsp"%>
		<%-- (directive tag)declaration.jsp 파일을 정적으로 포함 --%>
		<%
		int i = 0;
		for (FoodNutrientFact f : food.fList) {
			i++;
		%>
		<%-- 변수 f에 fList의 변수를 하나씩 대입 --%>
		<tr>
			<td><%=i%></td>
			<td><%=f.getId()%></td>
			<td><a href="detailView.jsp?name=<%=f.getName()%>"
				style="text-decoration: none; color: black;"><%=f.getName()%></a></td>
			<%-- f.getName()을 통해 불러온 Name을 클릭하면 해당 name의 detailView.jsp로 이동 --%>
			<td><%=f.getGroup()%></td>
			<td><%=f.getCalories()%></td>
			<%
			}
			%>
		
	</table>

</body>
</html>