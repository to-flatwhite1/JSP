<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<h1>여기는 index.jsp입니다.</h1>
		<!-- a태그를 클릭해서 페이지를 이동하는 방식은 get방식이다 -->
		<!-- 브라우저 도메인을 직접 수정해서 이동하는 방식은 get방식이다 -->
		<!-- form태그의 method="get"으로 submit된 경우는 get방식이다 -->
		<a href="/test">a태그를 이용해서 test 호출</a>
		<!-- form태그의 method="post"로 submit된 경우에는 post방식이다 -->
		<form method="post" action="test">
			<input type="submit" value="form태그로 test 호출">
		</form>
	</body>
</html>