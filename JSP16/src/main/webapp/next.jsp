<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>페이지 이동 테스트</title>
		<link rel="stylesheet" href="CSS/test.css">
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="header.jsp"></jsp:include>
			<p>여기는 next.jsp입니다.
			<p>페이지가 이동해도 같은 page를 사용해서 편리합니다</p>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	
	</body>
</html>