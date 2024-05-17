<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>동작은 똑같이 수행함</title>
		<meta charset='utf-8'>
		<style>
		h1{
			text-align:center;
		}
		</style>
	</head>
	<body>
		//자바 주석 다는 방법
		<!-- 127.0.0.1:8080/JSP01 -->
		<%
			int a=10;
			int b=20;
			int result=a+b;
			%>
		<h1 style='color:red;'><%out.print(result);%></h1>
	</body>
	<script>
	
		alert("자바스크립는 브라우저에서 실행");
		<%--
			css는 /**/를 통해서 주석처리를 진행함
			HTML은 <!-- -->를 통해서 주석처리 진행함
			Java는 //	/* */를 통해서 주석처리를 진행함
			하나만 가지고 다 쓰기보다는 상황에 따라 잘 섞어 쓰는게 중요합니다.--%>
	</script>
</html>