<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>자바 일반 문법의 이용</title>
	</head>
	<body>
		
		<%
			int number=-1;
			if(number>0){
		%>		
			<h1><%=number %>
			
			는 양수입니다.여기는 html코드
			</h1>
		<%		
			}else{
		%>
			<h2><%=number %>은 음수입니다.</h2>
			
		<%
			}
		%>
		<a href="next.jsp">눌러서 for문 확인하러 가기</a>	
		
	</body>
</html>