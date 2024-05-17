<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>여기는 result.jsp입니다.</h1>
		<% String A=request.getParameter("nm");
			String B=request.getParameter("first");
			int num1=Integer.parseInt(B);//숫자변환방법
			String C=request.getParameter("second");
			int num2=Integer.parseInt(C);
		%>
		<h3>이름 :<%=A %></h3>
		<h3>첫번째 수 :<%=B %></h3>
		<h3>두번째 수 :<%out.print(C); %></h3>
		<h3>합계 : <%=num1+num2 %></h3>
	</body>
</html>