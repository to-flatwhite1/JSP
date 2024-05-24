<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
			#wrap{
				width:500px;
				margin:0 auto;
				border:5px solid black;
			}
			ul{
				margin:0;
				padding:0;
				list-style:none;
			}
			li{
				width:70px;
				height:20px;
				border:1px solid black;
				text-align:center;
				line-height:20px;
				float:left;
			}
			#wrap:after{
				content:"";
				display:block;
				clear:both;
			}
			li:hover{
				background-color:black;
				color:white;
			}
		</style>
	</head>
	<body>
		<%
			String grade=(String)session.getAttribute("grade");
			if(grade==null){
				//로그인처리(check.jsp)를 거치지 않고 main.jsp에 바로 접근한 경우
				response.sendRedirect("index.jsp");//다시 index.jsp로 되돌려버림
			}
		%>
		<div id="wrap">
			<h1><%=grade %>님 접속을 환영합니다.</h1>
			<ul>
				<li>메뉴1</li>
				<li>메뉴2</li>
				<li>메뉴3</li>
				<%
					if(grade!=null && grade.equals("관리자")){
						%>
						<li>관리메뉴</li>
						<%
					}
				%>
				
				<li id="out">로그아웃</li>
			</ul>
		</div>
		<script>
			let out=document.getElementById("out");
			out.addEventListener("click",function(){
				location.href="logout.jsp";
			});
			
		</script>
	</body>
</html>