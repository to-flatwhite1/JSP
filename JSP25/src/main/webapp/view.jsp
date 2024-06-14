<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>jstl표현법 연습</title>
	</head>
	<body>
		<%
			String data="자바단위 데이터";
		//일반 자바 변수는 java실행 즉시 사라지므로 EL실행시까지 존재하지 않는다.
		//따라서 일반 자바 변수는 EL로 출력시  null을 반환하며
		//EL은 NULL은 표현하지 않는다.
		pageContext.setAttribute("pag","페이지 단위 데이터");
		request.setAttribute("req","리퀘스트단위 데이터");
		session.setAttribute("ses","세션단위 데이터");
		application.setAttribute("app","어플리케이션단위 데이터");
		%>
		<h1>EL의 출력</h1>
		${data }<br>
		${pag }<br>
		${req }<br>
		${ses }<br>
		${app }<br>
		
		<h1>jstl의 출력</h1>
		<c:set var="pag2" value="jstl로 입력한 페이지 단위 데이터"></c:set>
		<c:set var="req2" value="jstl로 입력한 리퀘스트단위 데이터" scope="request"></c:set>
		<c:set var="ses2" value="jstl로 입력한 세션단위 데이터" scope="session"></c:set>
		<c:out value="${pag2 }"></c:out><br>
		<c:out value="${req2 }"></c:out><br>
		<c:out value="${ses2 }"></c:out><br>
		
	</body>
</html>