/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.89
 * Generated at: 2024-05-16 05:07:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class next_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"utf-8\">\r\n");
      out.write("		<title>for문의 사용예시</title>\r\n");
      out.write("		<style>\r\n");
      out.write("		\r\n");
      out.write("		</style>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("		<h1 id=\"start\">내가 next.jsp이다.</h1>\r\n");
      out.write("		");

			for(int i=1; i<7; i++){
		
      out.write("		\r\n");
      out.write("				<h");
      out.print(i );
      out.write(">나는 h");
      out.print(i );
      out.write("이다!!!</h");
      out.print(i );
      out.write(">\r\n");
      out.write("		");

			out.print("<h"+i+">저는 h"+i+"입니다.</h"+i+">");
			}
		
      out.write("\r\n");
      out.write("		\r\n");
      out.write("		");
 
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
			
      out.write("<h1 style=\"color:");
      out.print(color );
      out.write(";\">색상이 변동</h1>");

			
			}
			
      out.write("\r\n");
      out.write("			<a href=\"#start\">아이디를 기준으로 이동</a>\r\n");
      out.write("			<!--  <table border=1>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td>i=0,j=0</td>\r\n");
      out.write("					<td>i=0,j=1</td>\r\n");
      out.write("					<td>i=0,j=2</td>\r\n");
      out.write("					<td>i=0,j=3</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td>i=1,j=0</td>\r\n");
      out.write("					<td>i=1,j=1</td>\r\n");
      out.write("					<td>i=1,j=2</td>\r\n");
      out.write("					<td>i=1,j=3</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td>i=2,j=0</td>\r\n");
      out.write("					<td>i=2,j=1</td>\r\n");
      out.write("					<td>i=2,j=2</td>\r\n");
      out.write("					<td>i=2,j=3</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td>i=3,j=0</td>\r\n");
      out.write("					<td>i=3,j=1</td>\r\n");
      out.write("					<td>i=3,j=2</td>\r\n");
      out.write("					<td>i=3,j=3</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td>i=4,j=0</td>\r\n");
      out.write("					<td>i=4,j=1</td>\r\n");
      out.write("					<td>i=4,j=2</td>\r\n");
      out.write("					<td>i=4,j=3</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</table>-->\r\n");
      out.write("			<table>\r\n");
      out.write("			");

				for(int i=0; i<5; i++){
					out.print("<tr>");
					for(int j=0; j<4; j++){
						out.print("<td>[i="+i+",j="+j+"]</td>");
					}
					out.print("</tr>");
				}
			
      out.write("\r\n");
      out.write("			<br>\r\n");
      out.write("			<br>\r\n");
      out.write("			<br>\r\n");
      out.write("			<br>\r\n");
      out.write("			");

				for(int i=0; i<5; i++){
			
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					");

						for(int j=0; j<4; j++){
							
      out.write("<td>i=");
      out.print(i );
      out.write(", j=");
      out.print(j );
      out.write("</td>");

						}
						
      out.write("		\r\n");
      out.write("				</tr>		\r\n");
      out.write("			");

				}
			
      out.write("\r\n");
      out.write("			\r\n");
      out.write("			</table>\r\n");
      out.write("			<script>\r\n");
      out.write("			let tds=document.getElementsByTagName(\"td\");\r\n");
      out.write("				for(let i=0; i<tds.length; i++){\r\n");
      out.write("					tds[i].setAttribute(\"style\",\"border:1px solid blue\");\r\n");
      out.write("				}\r\n");
      out.write("			</script>\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
