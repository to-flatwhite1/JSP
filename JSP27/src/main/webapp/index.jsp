<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String [] season={"봄","여름","가을","겨울"};
			System.out.println(season);
			
			for(int i=0; i<season.length; i++){
			%><h1 style="color:red";><%out.print(season[i]);%></h1>
			<% 
			}
			//향상된  for문을 이용해서 하나씩 확인
			for(String str:season){
				out.print("<p style='color:blue;'>"+str+"</p>");
			}
			pageContext.setAttribute("arr",season);
		%>
		<!-- forEach varStatus 내부의 변수 -->
		<!--  index : 배열의 인덱스와 동일 0번부터 시작해서 배열 끝번호 -1번까지 존재하는 번호 -->
		<!--  count : 반복의 횟수 데이터-->
		<!--  first :  반복의 첫번째 요소인지 확인 여부-->
		<!-- last : 반복의 마지막 요소인지 확인 여부-->
		
		<!--varStatus (변수의 이름 설정) : "변수이름"  -->
		<c:forEach var="str" items="${arr }" varStatus="iter">
			<c:if test="${iter.first }">
				<div style="border:2px solid red;">
			</c:if>
			<h3 style='color:green;'>${str } ${iter.index }</h3>
			<c:if test="${iter.last}">
				</div>
			</c:if>	
		</c:forEach>
		<%
			for(int i=0; i<5; i++){
				out.print("<h3 style='color:red'>"+i+"</h3>");
						
			}
		%>
		<hr>
		<h1>forEach for문</h1>
		<c:forEach var="i" begin="0" end="4">
			<h3 style='color:purple'>${i }</h3>
		</c:forEach>	
		<%
			String student="이영준,김철수,홍길동,고희선";
			//자바코드는 el 바로 안나옴 스코프에 넣어줘야 함
			pageContext.setAttribute("student",student);
		%>
		<c:forTokens var="data" items="${student }" delims=",">
			<h3 style='color:purple'>${data }</h3>
		</c:forTokens>	
	</body>
</html>