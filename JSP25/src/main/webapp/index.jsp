<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL</title>
	</head>
	<body>
		<!-- Java server page Standard Tag Library -->
		<!-- JSTL : jsp에서 특수태그를 사용할 수 있는 표준 라이브러리 -->
		
		<!-- uri : uniform resource identifier (중복불가 자원의 고유값 고유식별자)-->
		<!-- url : uniform resource locator (위치정보를 표현하는 문자) -->
		<!-- urn : uniform resource name (자원의 이름,같은 이름을 가진 자원이 여럿 있을 수 있음-->
	
		<!-- core : c : 기본기능 -->
		<!-- fmt : ftm : 서식변경기능 -->
		<!-- sql : sql : DB조작 -->
		<!-- xml : x : xml조작 -->
		<!-- fn : fn : 함수조작 -->
		
		<c:out value="jstl출력"></c:out>
		${"EL출력"}
		<%="scriptlet 출력" %>
		<%
			out.print("java출력");
		%>
		<c:set var="test" value="jstl로 값 입력"  scope="page"></c:set>
		${test}
		<c:set var="number">30</c:set>
		${number}
		<!-- scope범위를 아주 편하게 조절 가능하고 EL과 섞어쓸 때 궁합이 좋다. -->
		<a href="view.jsp">표현법 확인하러 가기</a>
	</body>
</html>