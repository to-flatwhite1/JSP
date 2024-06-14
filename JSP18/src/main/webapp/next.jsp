<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="data.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 확인 페이지</title>
	</head>
	<body>
		<%	
			request.setCharacterEncoding("utf-8");
			Student s=new Student();
			
			s.setName(request.getParameter("nm"));
			s.kor=Integer.parseInt(request.getParameter("kor"));
			s.eng=Integer.parseInt(request.getParameter("eng"));
			s.math=Integer.parseInt(request.getParameter("math"));
			
			session.setAttribute("obj",s);
			//obj(이름)에 부르면 s(객체)들어간다
		%>
		<h1>전송결과 확인</h1>
		<p>이름 : <%=s.getName() %></p>
		<p>국어 : <%=s.kor %>
		<p>영어 : <%=s.eng %></p>
		<p>수학 : <%=s.math %></p>
		
		<a href="result.jsp">눌러서 다른 페이지 이동</a>
		
		<%--<form id="data" method="post" action="result.jsp">
			<input type="hidden" name="nm">
			<input type="hidden" name="kor">
			<input type="hidden" name="eng">
			<input type="hidden" name="math">
		</form><!-- a태그가 눌렸을때 정보만 들어가게 할려고  -->
	</body>
	<script>
		let data=document.getElementById("data");
		data.nm.value="<%=name%>";
		data.kor.value="<%=kor%>";
		data.eng.value="<%=eng%>";
		data.math.value="<%=math%>";
		
		function sub(){
			data.submit();
		}
	</script>--%>
</html>