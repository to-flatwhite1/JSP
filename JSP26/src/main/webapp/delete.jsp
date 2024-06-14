<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL 데이터 소거</title>
	</head>
	<body>
		<c:set var="add" value="${3+5}"></c:set>
		\${add} :${add }<br>
		<c:remove var="add"></c:remove>
		\${add } : ${add }<br>
		
		<form method="get" action="select.jsp">
			<select name="color">
				<option value="1">빨강</option>
				<option value="2">노랑</option>
				<option value="3">주황</option>
				
			</select>
			<input type="submit" value="선택">
		</form>
	</body>
</html>