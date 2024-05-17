<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form method="get" action="next.jsp">
			<p>이 데이터를 보내고 싶어요</p>
			<input type="hidden" value="" name="data">
			<select name="sell">
				<option value="1">HTML</option>
				<option value="2">JAVA</option>
				<option value="3">CSS</option>
				<option value="4">JAVASCRIPT</option>
			</select>
			<input type="submit" value="전송">
		</form>
		<script>
			let pTag=document.getElementsByTagName("p");
			let value=pTag[0].innerHTML;
			console.log(value);
			
			let hidden=document.getElementsByTagName("input")[0];
			hidden.value=value;
		</script>
	</body>
</html>