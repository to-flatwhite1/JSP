<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.*" %>    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="utf-8">
	<title>결제 내역 확인</title>
	</head>
	<body>
		<%
			String num1=request.getParameter("comp");//method get 방식 request.getParameter 데이터를 갖고온다
			String num2=request.getParameter("phone");
			
			int computer=0;
			int phone=0;
			int result=0;
			String change="";
			if(num1=="" || num2=="" || num1==null || num2==null){
				out.print("<h1 style='color:blue;'>수량을 지정해 주세요</h1>");
			}else if(num1.equals("0") && num2.equals("0")){
				out.print("<h1 style='color:red;'>구매하신 제품이 없습니다.</h1>");
			}else{
				computer=Integer.parseInt(num1)*1000000;
				phone=Integer.parseInt(num2)*1500000;
				result=computer+phone;
				
				DecimalFormat df=new DecimalFormat("#,###");
				change=df.format(result);
			
			}
		%>
		<h1>컴퓨터 구매 수 : <%=num1 %></h1>
		<h1>스마트폰 구매 수 : <%=num2 %></h1>
		<h1>결제 총액 : <%=change %>원</h1>
	
	</body>
</html>