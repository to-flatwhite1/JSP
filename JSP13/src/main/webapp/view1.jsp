<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>리퀘스트를 통한 데이터 확보</title>
	</head>
	<body>
		<h1>여기는 view1.jsp입니다.</h1>
		<h1>여기서 request속의 정보를 session으로 옮깁니다.</h1>
		<%
			request.setCharacterEncoding("utf-8");//한글 깨지는거 getParameter 갖고 온거 수정
			String str=request.getParameter("data");
			
			session.setAttribute("key",str);//key나오면 검색어 넣으라는거구나 생각하면 됨
		%>
		<h2>받아온 데이터는 [<%=str %>]입니다.</h2>
		<a href="view2.jsp">눌러서 세션 내부 정보 확인!</a>
	</body>
</html>