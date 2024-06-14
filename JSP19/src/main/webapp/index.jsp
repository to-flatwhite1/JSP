<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>자바빈 이용하기</title>
	</head>
	<body>
		<!-- jsp:useBean -->
		<!-- class부분에는 정말 java class경로를 적어주면 된다. -->
		<!-- id부분에는 변수의 이름을 적어주면 된다. -->
		<!-- scope부분에는 변수가 유지될 범위를 적어주면 된다. -->
		<jsp:useBean class="beans.Student" id="s" scope="page">
		</jsp:useBean>
		<%
			//beans.Student s=new beans.Student();
			//calss id=new class();
		%>

		<!-- name객체 내부에 property필드를 찾아 set을 붙인 메서드에 value를 입력 -->
		<jsp:setProperty name="s" property="name" value="안예지"></jsp:setProperty>
		<jsp:getProperty name="s" property="name"></jsp:getProperty>
		<%
			//s.setAge(25);
			//name.set Property(value);
		%>
		<jsp:setProperty name="s" property="age" value="30"></jsp:setProperty>
		<jsp:getProperty name="s" property="age"></jsp:getProperty>
		<%
			//out.print(s.getAge());
			//out.print(name.get Property());
		%>
		<jsp:setProperty name="s" property="address" value="제주도 서귀포시"></jsp:setProperty>
		<h1><jsp:getProperty name="s" property="address"></jsp:getProperty></h1>
	</body>
</html>