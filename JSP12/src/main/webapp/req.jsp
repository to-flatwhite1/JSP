<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>request data 확인</title>
	</head>
	<body>
		<h1>여기는 req.jsp입니다. 리퀘스트로 전송된 데이터를 확인합니다.</h1>
		<%
			request.setCharacterEncoding("utf-8");
			//POST 처리에서 한글이 깨지는 경우 requset의 문자 Encoding 방식을
			//utf-8로 변경 해주면 된다.POST 처리 방식은 전기 신호이기 때문에 한글 못 읽음
			String data1=request.getParameter("first");
			String data2=request.getParameter("c");
			
			//모든 페이지에 영향을 미치는 session 객체를 이용한 데이터 공유
			//session.setAttribute("검색어",데이터); map이랑 똑같은 방식
			//:해당 검색어로 데이터를 검색하도록 한쌍으로 데이터 저장
			
			//session.getAttribute("검색어");
			//:검색어로 검색 시 데이터를 꺼내 줌
			//session은 object타입으로 데이터를 저장하므로 꺼낼 때 캐스팅하여 사용하여야 한다.
			session.setAttribute("first",data1);//first변수로 해서 data를 담아
			session.setAttribute("c",data2);
		%>
		<h1>들어온 데이터 확인</h1>

		<h1 style="color:<%=data2 %>;"><%=data1 %></h1>
		<a href="next.jsp?first=<%=data1 %>&c=<%=data2 %>">다른 페이지에서 데이터 확인</a>
	</body>
</html>