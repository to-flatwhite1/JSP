<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>다중 폼태그 사용</title>
		<style>
			#wrap div{
				width:60px;
				height:30px;
				font-size:20px;
				font-weight:600;
				text-align:center;
				line-height:30px;
				border:2px solid gray;
			}
			#wrap div:hover{
				background-color:black;
				color:white;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form id="test" method="get" action="">
				<input hidden type="text"   name="in"><br>
				<input hidden type="submit" value="제출">
				<div id="btn1">입력</div>
				<div id="btn2">조회</div>
				<div id="btn3">수정</div>
			</form>
		</div>
		<script>
			let frm=document.getElementById("test");
			let btn1=document.getElementById("btn1");
			btn1.addEventListener("click",function(){
				frm.action="insert.jsp";
				frm.submit();
			});
			
			
			let btn1=document.getElementById("btn2");
			btn1.addEventListener("click",function(){
				frm.action="select.jsp";
				frm.submit();
			});
			
			let btn1=document.getElementById("btn3");
			btn1.addEventListener("click",function(){
				frm.action="update.jsp";
				frm.submit();
			});
			for(let i=0; i<4; i++){
				let btn1=document.getElementById("btn[i]");
				frm.action="insert.jsp";
				frm.submit();
			};
		</script>
	</body>
	
	
</html>