<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>세션 내부 정보 확인 페이지</title>
	</head>
	<body>
		<h1>여기는 view2.jsp입니다.</h1>
		<h1>세션 내부 정보를 확인합니다.</h1>
		<%
			request.setCharacterEncoding("utf-8");
			//리퀘스트에서 한글 깨지면 이거 쓰세요..
			
			String value=(String)session.getAttribute("key");
			//세션 내부 값은 캐스팅 해서 써야 안전합니다..
			
			
		%>
		
		<h2>세션 내부의 정보 [<%=value %> ]</h2>
		<%
			//세션이 생성된 시간
			//컴퓨터가 아는 시간은 인간이 생각하는 시간이랑 다름
			//컴퓨터는 밀리초를 가지고 있음
			long time=session.getCreationTime();//세션이 생성된 시간
			//써먹으려면 변수에 담아야 함
			
			long last=session.getLastAccessedTime();//클라이언트에서 세션을 마지막으로 사용한 시간
			
			session.setMaxInactiveInterval(60*60);//세션이 활동할 수 있는 시간 지정
			
			int interval=session.getMaxInactiveInterval();//세션이 활동할 수 잇는 시간 확인
		
			//세션 만료 처리(session을 사용중인 사용자와 연결 해제)
			session.invalidate();//로그아웃 하게 하는 방법
			//데이터 만료 처리 시 사용자와 연결되어 있던 데이터는 소멸한다.
			//session.invalidate() *5,000,000 세션 정보 만료
			//
		%>
		<hr>
		<p>세션이 생성된 시간 : <%=time %></p><!-- 변환 처리 해줘야 시간 알 수 있음 -->
		<p>세션이 마지막으로 사용된 시간: <%=last %></p>
		<p>세션이 활동할 수 있는 시간 : <%=interval %></p>
		
	</body>
</html>