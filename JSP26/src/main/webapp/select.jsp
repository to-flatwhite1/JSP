<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL IF의 사용</title>
	</head>
	<body>
		<%
			String color=request.getParameter("color");
			int number=Integer.parseInt(color);
			if(number==1){
				%><h1 style="color:red;">빨강색 입니다.</h1><%
				}else if(number==2){
					%><h1 style="color:orange;">주황색 입니다.</h1><%
				}else{
					%><h1 style="color:yellow;">주황색 입니다.</h1><% 
				}

				%>
				<c:if test="${param.color==1}">
					<h1 style="color:red;">jstl 빨강색입니다.</h1>
				</c:if>
				<!-- jstl에서는 if-else를 choose라고 부른다 -->
				<c:choose>
					<c:when test="${param.color==1} ">
						<h1 style="color:red;">빨강색 입니다.</h1>
					</c:when>
					<c:otherwise>
						<h1 style="color:orange;">주황색 입니다.</h1>
					</c:otherwise>
				</c:choose>	
	</body>
</html>