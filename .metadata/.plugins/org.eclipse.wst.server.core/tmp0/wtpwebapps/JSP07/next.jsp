<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>for문의 사용예시</title>
		<style>
		
		</style>
	</head>
	<body>
		<h1 id="start">내가 next.jsp이다.</h1>
		<%
			for(int i=1; i<7; i++){
		%>		
				<h<%=i %>>나는 h<%=i %>이다!!!</h<%=i %>>
		<%
			out.print("<h"+i+">저는 h"+i+"입니다.</h"+i+">");
			}
		%>
		
		<% 
			String color="";
			for(int i=0; i<=6; i++){
				switch(i%7){
				case 0:color="red";
					break;
				case 1:color="yellow";
					break;
				case 2:color="orange";
					break;
				case 3:color="green";
					break;
				case 4:color="blue";
					break;
				case 5:color="navy";
					break;
				case 6:color="skyblue";
					break;
				case 7:color="purple";
					break;
				}
			%><h1 style="color:<%=color %>;">색상이 변동</h1><%
			
			}
			%>
			<a href="#start">아이디를 기준으로 이동</a>
			<!--  <table border=1>
				<tr>
					<td>i=0,j=0</td>
					<td>i=0,j=1</td>
					<td>i=0,j=2</td>
					<td>i=0,j=3</td>
				</tr>
				<tr>
					<td>i=1,j=0</td>
					<td>i=1,j=1</td>
					<td>i=1,j=2</td>
					<td>i=1,j=3</td>
				</tr>
				<tr>
					<td>i=2,j=0</td>
					<td>i=2,j=1</td>
					<td>i=2,j=2</td>
					<td>i=2,j=3</td>
				</tr>
				<tr>
					<td>i=3,j=0</td>
					<td>i=3,j=1</td>
					<td>i=3,j=2</td>
					<td>i=3,j=3</td>
				</tr>
				<tr>
					<td>i=4,j=0</td>
					<td>i=4,j=1</td>
					<td>i=4,j=2</td>
					<td>i=4,j=3</td>
				</tr>
			</table>-->
			<table>
			<%
				for(int i=0; i<5; i++){
					out.print("<tr>");
					for(int j=0; j<4; j++){
						out.print("<td>[i="+i+",j="+j+"]</td>");
					}
					out.print("</tr>");
				}
			%>
			<br>
			<br>
			<br>
			<br>
			<%
				for(int i=0; i<5; i++){
			%>
				<tr>
					<%
						for(int j=0; j<4; j++){
							%><td>i=<%=i %>, j=<%=j %></td><%
						}
						%>		
				</tr>		
			<%
				}
			%>
			
			</table>
			<script>
			let tds=document.getElementsByTagName("td");
				for(let i=0; i<tds.length; i++){
					tds[i].setAttribute("style","border:1px solid blue");
				}
			</script>
	</body>
</html>