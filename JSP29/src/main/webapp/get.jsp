<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8""%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"">
		<title>get으로 서블릿이 호출</title>
	</head>
	<body>
		<h1>여기는 get.jsp입니다.</h1>
		<p>test서블릿을 get방식으로 호출한 경우 이페이지가 반환됩니다.</p>
		${requestScope.data }	
	</body>
</html>