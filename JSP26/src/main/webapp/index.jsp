<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>자바빈과 JSTL</title>
	</head>
	<body>
		<%
			beans.Students s1=new beans.Students();
			s1.setName("김철수");
			s1.setAge("20");
			s1.setAddress("서울시 동대문구");
		%>
		<h1>자바코드 방식:</h1><%=s1 %>
		
		<h1>jsp 액션태그방식:</h1>
		<jsp:useBean class="beans.Students" id="s2"></jsp:useBean> <%--객체 조립하는 방법 --%>
		<jsp:setProperty property="name" name="s2" value="고희선"></jsp:setProperty>
		<jsp:setProperty property="age" name="s2" value="25"></jsp:setProperty>
		<jsp:setProperty property="address" name="s2" value="서울시 강서구"></jsp:setProperty>
		<%=s2 %>
		<%--상단의 자바코드와 상동 --%>
		<h1>jstl방식</h1>
		<c:set var="s3" value="<%=new beans.Students() %>"></c:set>
		<c:set target="${s3}" property="name" value="김철수"></c:set>
		<c:set target="${s3}" property="age" value="32"></c:set>
		<c:set target="${s3}" property="address" value="서울시 강남구"></c:set>
		${s3 }
	</body>
</html>