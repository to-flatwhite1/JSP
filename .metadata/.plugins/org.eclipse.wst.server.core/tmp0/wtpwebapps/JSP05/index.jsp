<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>간단한 회원가입</title>
	<style>
		#wrap{
			width:300px;
			border:5px solid black;
			height:500px;
			padding:30px;
			margin:0 auto;
		}
		input[name="nm"]{
			margin-left:38px;
		}
		input[name="id"]{
			margin-left:53px;
		}
		input[name="pw"]{
			margin-left:5px;
		}
		input[name="phone"]{
			margin-left:22px;
		}
	</style>
</head>
<body>
	<div id="wrap">
		<form method="post" action="main.jsp">
		<h1>회원가입</h1>
		<hr>
		ID:<input type="text" name="id" placeholder="아이디 입력"><br>
		비밀번호:<input type="password" name="pw"><br>
		이름:<input type="text" name="nm"><br>
		연락처:<input type="text" name="phone"><br>
		<hr>
		선호색상:<input type="color" name="c">
		<fieldset>
		<legend>관심분야</legend>
		JAVA<input type="radio" name="subject" value="java">
		HTML<input type="radio" name="subject" value="html">
		CSS<input type="radio" name="subject" value="CSS">
		<legend>수강과목</legend>
		JSP<input type="checkbox" name="jsp">
		JAVA<input type="checkbox" name="java">
		</fieldset>
		<input type="hidden" name="hid" value="요주의!"><!-- 사용자는 안보이는데 관리자 보여야 하는것 -->
		<input type="submit" value="회원가입">
		
		</form>
	</div>
</body>
</html>