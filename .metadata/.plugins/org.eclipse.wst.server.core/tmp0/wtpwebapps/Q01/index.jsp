<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<button id="test" class="A">버튼</button>
		<button>아이디 없는 버튼</button>
		<script>
			console.log(document);
			let data=document.getElementById("test");
			console.log(data);
		</script>
	</body>
</html>