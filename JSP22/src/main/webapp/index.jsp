<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>Expression Language</title>
	</head>
	<body>
		<!-- EL(Expression Language) : 표현언어, 변수의 값을 외부로 표현해주는 역할 -->
		<%--${내용} : 내용은 변수의 이름 또는 값, 계산식을 포함한 외부로 적어주기 위한 데이터 --%>
		<% out.print("테스트1"); %><br>
		<%="테스트2" %><br>
		${"테스트3"}<br>
	
		
		<!-- EL의 종류 -->
		정수형 : ${10}<br>
		정수형 : ${5.6 }<br>
		문자열형 : ${"iot 융합"}<br>
		논리형 : ${true}<br>
		null 처리 : ${null }<br><!-- EL은 NULL값은 표현할게 없는거니까 눈에 안보이고 공란만 존재한다 -->
		<hr>
		<!-- EL산술 연산 -->
		1+2 : ${1+2}<br> <!-- 계산의 값만 나온다 -->
		3-4 : ${3-4}<br>
		7*8 : ${7*8}<br>
		7/8 : ${7/8}<br>
		9%10 : ${9%10}<br>
		11 div 12 : ${11 div 12}<br>
		<hr>
		<!-- 관계 연산 -->
		1 == 2 : ${1==2}<br> <!-- ==같다 -->
		1 eq 2 : ${1 eq 2}<br><!-- eq 같다 -->
		1 != 4 : ${1 != 4}<br>
		1 ne 4 : ${1 ne 4}<br><!-- negative equal -->
		
		5 < 6 : ${5 < 6 } <br>	
		5 lt 6 : ${5 lt 6 }<br> litte than
		
		7 > 8 : ${7 > 8 }<br>
		7 gt 8 : ${7 gt 8 }<br> 그레이터 큰
		
		9 <= 10 :${9 <= 10 }<br>
		9 le 10 : ${9 le 10 }<br>
		11 >=12 : ${11 >=12 }<br>
		11 ge 12 : ${11 ge 12 }<br>
		
		<hr>
		true && false : ${true && false }<br>
		true || false : ${true || false}<br>
		!false : ${!false }<br>
		
		<hr>
		<!-- null 확인 연산 -->
		empty null : ${empty null}<br>	
		
		<%
			int a=3+5;
			pageContext.setAttribute("num",a);
			
		%>	
		${num]
	</body>
</html>