<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FoodNutritionFacts</title>
</head>
<body
	style="font-family: 맑은 고딕, 돋움, dotum, 굴림, gulim, arial; padding: 20px; margin: 20px;">

	<jsp:include page="header.jsp" />
	<%-- (action tag)header.jsp 동적으로 포함 --%>
	<a style="text-decoration: none;" href="index.jsp">
		<h1
			style="text-align: center; font-family: arial; font-size: 50px; color: deeppink; font-weight: bold; padding: 20px;">
			Food Nutrition Facts</h1> <%-- 텍스트 가운데 정렬, 글씨체:arial, 글씨 크기:50px, 글씨 색상:deeppink, 굵게, 여백:20px --%>
	</a>
	<jsp:include page="list.jsp" />
	<%-- (action tag)list.jsp 동적으로 포함 --%>
	<jsp:include page="footer.jsp" />
	<%-- (action tag)footer.jsp 동적으로 포함 --%>



</body>
</html>