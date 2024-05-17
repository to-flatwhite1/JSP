<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>메인페이지</title>
</head>
<body>
	<h1>여기는 main.jsp입니다.</h1>
	<%
		request.setCharacterEncoding("utf-8");
		//POST데이터 전송처리 시 한글이 깨지는 문제 해결
		//데이터를 받아주는 페이지의 request에서 처리한다.
		String user=request.getParameter("id");
		String pass=request.getParameter("pw");
		String nam=request.getParameter("nm");
		String ph=request.getParameter("phone");
		String bg=request.getParameter("c");
		String sub=request.getParameter("subject");
		String js=request.getParameter("jsp");
		String ja=request.getParameter("java");
	%>
	<h3>회원 ID:<%=user %></h3>
	<h3>비밀번호:<% out.print(pass); %></h3>
	<h3>성함:<%=nam %></h3>
	<h3>연락처:<%=ph %></h3>
	<h3>선호색상:<%=bg %></h3>
	<h3>선호과목:<%=sub %>></h3>	
	<h3>jsp수강여부: <%out.print(js); %></h3>
	<h3>java수강여부: <%=ja %></h3>
	<hr>
	
	<script>
		var user=document.getElementsByTagName("h3")[0];
		user.setAttribute("style","color:<%=bg %>");
	</script>
</body>
</html>