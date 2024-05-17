<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터베이스 연결</title>
	</head>
	<style>
		tr,td,th{
			border:1px solid black;
			}
	</style>
	<body>
		<%
			Connection conn=null;	//회선연결
			Statement stmt=null;	//쿼리문 전달용 객체
			ResultSet rs=null;		//select문의 결과를 담을 객체
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			try{
				//접속 시도 위치
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url, db_id, db_pw);
				stmt=conn.createStatement();
				String sql="select * from register;";
				rs=stmt.executeQuery(sql);//select * from register 조회한걸 받아옴
				//조회 한걸 쓰려면 변수에 담아와서 써야함
				rs.next();// 한줄을 읽어
				
				String user=rs.getString("id");
				String nm=rs.getString("name"); //변수에 담아 데이터베이스 튜플을 getString에 담아서
				out.print("아이디 : "+user+"|");
				out.print("성함 :"+nm+"<br>");
				
				rs.next();
				user=rs.getString("id");
				nm=rs.getString("name"); 
				out.print("아이디 : "+user+"|");
				out.print("성함 :"+nm+"<br>");
				
				String add=rs.getString("address");
				String phoneNum=rs.getString("phone");
				
				
				
				out.print("<table>");
				out.print("<tr>");
				out.print("<th>고유번호</th>");
				out.print("<th>아이디</th>");
				out.print("<th>이메일</th>");
				out.print("</tr>");
				//클래스이름이 클래스
				//()괄호안에 있는 해당 이름을 가진 이름 클래스
				while(rs.next()){
					//rs.next() 값이 참 또는 거짓이기 때문에
					//while()괄호 안에는 조건이 들어가니까 rs.next()들어감
					out.print("<tr>");
					String number=rs.getString("num");
					user=rs.getString("id");
					String em=rs.getString("email");
					out.print("<td>"+number+"</td>");
					out.print("<td>"+user+"</td>");
					out.print("<td>"+em+"</td>");
					out.print("</td>");
					out.print("</tr>");
				}out.print("</table>");
			}catch(Exception e){
				System.out.println("접속 중 오류발생 : "+e);
			}finally{
				try{
					//접속 해제 위치
					if(conn!=null)conn.close();
				}catch(Exception ex){
					System.out.println("접속 해제 중 오류 발생 : "+ex);
				}
			}	
		%>	
	
	</body>
</html>