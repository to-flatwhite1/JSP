<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>여기는 index.jsp입니다.</h1>
		<form method="post" action="view1.jsp">
			좋아하는 계절을 선택해 주세요
			<select name="data">
				<option selected>봄</option>
				<option>여름</option>
				<option>가을</option>
				<option>겨울</option>
			</select>
			<input type="submit" value="선택!">
		</form>
		<%
			
		%>
	</body>
</html>