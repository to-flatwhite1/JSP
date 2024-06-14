<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL 포맷fmt</title>
	</head>
	<body>
	<!-- 천단위 구분기호 fmt:formatNumber  -->
		<c:set var="num" value="5000000" scope="page"></c:set>
		<fmt:formatNumber value="${num }" type="number"></fmt:formatNumber><br>
		<fmt:formatNumber value="${num }" type="number" groupingUsed="false"></fmt:formatNumber><br>
		<fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber><br>
		<fmt:formatNumber value="${num }" type="currency"></fmt:formatNumber>
		<fmt:formatNumber value="${num }" type="currency" currencySymbol="$"></fmt:formatNumber><br>
		
		<c:set var="date" value="<%=new java.util.Date() %>" scope="page"></c:set>
		\${date }:${date }<br>
		fmt기본 서식:<fmt:formatDate value="${date }"></fmt:formatDate><br>
		fmt시간 서식 : <fmt:formatDate value="${date }" type="time"></fmt:formatDate><br>
		fmt전체 서식 : <fmt:formatDate value="${date }" type="both"></fmt:formatDate><br>
		fmt지정 서식 : <fmt:formatDate value="${date }" pattern="yyyy년 MM월 dd일 hh시 mm분 ss초"></fmt:formatDate>
		<!-- 년도 y, 월  M, 일 d, 시 h, 분 m, 초 s -->
	</body>
</html>