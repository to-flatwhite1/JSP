<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>P태그 값 전송</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
			String str=request.getParameter("data");
		
		%>
		전송 받은 값:<%=str %>
	</body>
</html>