<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>form태그의 사용</title>
</head>
<body>
	<!-- form 태그의 속성 -->
	<!-- method : 전송방식 -->
	<!-- action : 목적지 -->
	
	<!-- form태그가 데이터를 전송할 때는 name=value의 형태로 값을 전송한다 ★5,000,000 -->
	<!-- input에 name이 없으면 데이터를 전송할 수 없다. -->
	<form method="get" action="result.jsp">
		이름:<input type="text" name="nm"><br><!-- input 인라인블록 -->
		첫번째:<input type="text" name="first" placeholder="제발숫자만 입력해주세요"><br>
		두번째:<input type="text" name="second" placeholder="제발숫자만 입력해주세요"><br>
		<input type="submit" value="제출">
	</form>
</body>
</html>