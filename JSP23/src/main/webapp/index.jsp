<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>EL 복습</title>
		<style>
			input[type="text"]{
			margin-left:17px;}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="get" action="text.jsp">
				<span>아이디 :</span><input type="text" name="user"><br>
				<span>비밀번호 :</span><input type="password" name="pw"><br>
				<hr>
				좋아하는 계절<br>
				<input type="checkbox" name="season" value="spring">봄
				<input type="checkbox" name="season" value="summer">여름
				<input type="checkbox" name="season" value="fall">가을
				<input type="checkbox" name="season" value="winter">가을
				<hr>
				<input type="submit" value="전송">
			</form>
			<hr>
			<form method="get" action="result.jsp">
				<input type="text" name="first">
				+
				<input type="text" name="second">
				<input type="submit" value="계산!">
			</form>
		</div>
	</body>
</html>