<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터 확인 페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");//post 방식으로 가면 한국어 깨짐 깨짐 방지 위해서
			
			//EL 표현식을 이용하면 request정보를 획득할 때 편하게 사용 가능하다.
			//EL 표현식은 일반식보다 정밀하게 가공해서 사용이 불가능하다.
			//다만 한글을 인식 시키기 위해서는 EL이라 할지라도 UTF-8 설정은 잡아야한다.
			
			//String user=request.getParameter("user");
			//String pw=request.getParameter("pw");
			
			//out.print("<h1>"+user+"</h1>");
		%>
		<%-- <h1><%=pw %></h1>--%>
		<!-- EL에서 param이라 하면 request.get 'Param' eter를 의미한다. -->
		<h1>${param }</h1>
		<h1>${param.user}</h1>
		<h1>${param.pw}</h1>
		<h1>${param.season}</h1>
		
		<%
			String[] arr=request.getParameterValues("season");
			for(int i=0; i<arr.length; i++){
				%><h3><%=arr[i] %></h3><% 
			}
			%>
		
		<!-- name이 똑같은게 여러개 들어오면 어떻게 처리해야 하는가 -->
	</body>
</html>