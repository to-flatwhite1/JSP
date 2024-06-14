<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP include</title>
		<link rel="stylesheet" href="CSS/test.css">
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="header.jsp"></jsp:include>
			<p>본문은 이곳에 작성합니다.</p>
			<p>내용은 다음과 같이 등장합니다.</p>
			<p>여기는 <u>index.jsp</u>입니다.</p>
			<p>다음 페이지로 넘어가려면 <a href="next.jsp">여기</a>를 누르세요.
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		
	</body>
</html>