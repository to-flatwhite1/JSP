<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>세션</title>
</head>
<body>
	<%
		//세션은 제작하지 않아도 서버 내부에 미리 만들어져 있음.*
		//세션의 정보는 단일 사용자에게만 전체페이지 공유 *x5,000,000
		//scope라는 개념: 만들어진 데이터가 어디까지 유지 할 것인지
		//scope 1)page 2)request-회원가입,글쓰기
		//3)session-로그인정보 4)application
		//세션의 정보는 모든 jsp파일이 공유해서 사용가능
		//request 또는 response와 무관하게 사용 가능하다.
		
		//로그인이 성공했는지 여부는 세션에 저장 해둔다.
		//쿠키가 살아있으면 자동 로그인
		String str="세션에 대해 공부 합니다.";
		//session.setAttribute("검색어",값);
		session.setAttribute("msg",str);
	%>
	<a href="data.jsp">세션정보 확인하러 가기</a>
</body>
</html>