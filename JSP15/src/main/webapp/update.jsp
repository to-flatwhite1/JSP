<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>수정 처리기</title>
	</head>
	<body>
		<h1>업데이트 수정 화면입니다.</h1>
		<%
			request.setCharacterEncoding("utf-8");
			String num=request.getParameter("number");
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			String name=request.getParameter("nm");
			String email=request.getParameter("em");
			String phone=request.getParameter("ph");
			String address=request.getParameter("ad");//매개변수의 검색어
	
			String sql="update register set id='"+id+"', pass='"+pw+"',name='"+name+"',";
			sql+="email='"+email+"',phone='"+phone+"',address='"+address+"' where num="+num+";";
		
			Connection conn=null;
			Statement stmt=null;
			
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url,db_id,db_pw);
				stmt=conn.createStatement();
				stmt.executeUpdate(sql);
				response.sendRedirect("edit.jsp");
			}catch(Exception e){
				System.out.println("update.jsp 접속 중 오류발생 "+e);
			}finally{
				try{
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
				}catch(Exception ex){
					System.out.println("update.jsp 접속 해제 중 오류발생 :"+ex);
				}
			}
		%>
		<h3><%=sql %></h3>
	</body>
</html>