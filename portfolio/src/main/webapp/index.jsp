<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
		h1{
			text-align:center;
		}
		#wrap{
			width:400px;
			height:500px;
			border:1px solid lightgray;
			margin:0 auto;
		}
		ul{
			width:350px;
			border:1px solid lightgray;
		}
		input[name="id"]{
			margin-left:86px;
		}
		input[name="pw"]{
			margin-left:37px;
		}
		</style>
	</head>
	<body>
		<div id=wrap>
		<form method="post" action=next.jsp>
		<h1>회원가입</h1>
		<hr>
		<ul type="none">
			<li>ID:<input type="text" name="id" placeholder="아이디 입력"></li>
			<li>비밀번호:<input type="password" name="pw"></li>
			<li>비밀번호 확인:<input type="password" name="pw_rchk"></li>
			<li>이름:<input type="text" name="nm"></li>
			<li>연락처:<input type="text" name="phone"></li>
		</ul>
		<input type="submit" value="전송"><!-- submit은 form 안에 쓰기 -->
		</form>

		</div>
	
	</body>
</html>