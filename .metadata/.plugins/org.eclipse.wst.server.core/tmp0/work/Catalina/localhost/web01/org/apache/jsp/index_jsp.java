/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.60
 * Generated at: 2022-04-25 09:20:21 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/ft.jsp", Long.valueOf(1650877045853L));
    _jspx_dependants.put("/nav.jsp", Long.valueOf(1650877567903L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>메인페이지</title>\r\n");
      out.write("<link rel=\"stylesheet href=\"reset.css\">\r\n");
      out.write("<!-- 웹 아이콘 연결 -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css\">\r\n");
      out.write("<style>\r\n");
      out.write("a { text-decoration: none; color: #333;}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"wrap\">\r\n");
      out.write("		<header id=\"hd\">\r\n");
      out.write("			<div class=\"hd_wrap\">\r\n");
      out.write("				");
      out.write('\r');
      out.write('\n');
 /*
	스크립트릿(scriptlet) */
	String[] dp1 = {"WHO WE ARE","WHAT WE CREATE","MEDIA CENTER","INVESTORS","CAREERS"};
	String[][] dp2 ={
			{"기업소개","걸어온 길","가치와 목표","지속가능경영","NC 21 MOMENTS"},
			{"리니지","리니지2","아이온","블레이드 & 소울","블레이드 & 소울"},
			{"뉴스","미디어 행사","스토리","멀티미디어"},
			{"기업지배구조","재무 정보","공시 정보","주가 정보","IR 자료"},
			{"공고 보기","지원 안내","인사제도"}
			};
	String[][] lnk = {{"sub1.html#page1","sub1.html#page2","sub1.html#page3","sub1.html#page4","sub1.html#page5" },
			{"sub2.html#page1","sub2.html#page2","sub2.html#page3","sub2.html#page4","sub2.html#page5" },
			{"sub3.html#page1","sub3.html#page2","sub3.html#page3","sub3.html#page4","sub3.html#page5"},
			{"sub4.html#page1","sub4.html#page2","sub4.html#page3","sub4.html#page4","sub4.html#page5"},
			{"sub5.html#page1","sub5.html#page2","sub5.html#page3","sub5.html#page4","sub5.html#page5"}};

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<a class=\"Logo\" href=\"index.jsp\"><img src=\"./image/NC.png\" alt=\"로고\">\r\n");
      out.write("<i class=\"xi-star-o xi-spin\"></i></a>\r\n");
      out.write("<nav id=\"gnb\">\r\n");
      out.write("	<ul>\r\n");

	for(int i=0;i<dp1.length;i++){

      out.write("\r\n");
      out.write("	<li>\r\n");
      out.write("		<span class=\"dp1\">");
      out.print(dp1[i] );
      out.write("</span>\r\n");
      out.write("		<ul class=\"sub\">\r\n");

		for(int j=0;j<dp2[i].length;j++){

      out.write("\r\n");
      out.write("<li><a class=\"dp2\" href=\"");
      out.print(lnk[i][j] );
      out.write('"');
      out.write('>');
      out.print(dp2[i][j] );
      out.write("</a></li>\r\n");

		}

      out.write("\r\n");
      out.write("		</ul>\r\n");
      out.write("	</li>\r\n");

	}

      out.write("\r\n");
      out.write("</ul>	\r\n");
      out.write("</nav>\r\n");
      out.write("<p id=\"tnd\">\r\n");

	String sid = (String) session.getAttribute("uid");
	String sname = (String) session.getAttribute("name");
	if(sid == null){

      out.write("\r\n");
      out.write("	<a href=\"login.jsp\">로그인</a>\r\n");
      out.write("	<a href=\"\">손님</a>\r\n");
      out.write("	<a href=\"agree.jsp\">회원가입</a>\r\n");

	} else {

      out.write("\r\n");
      out.write("	<a href=\"logout.jsp\">로그아웃</a>\r\n");
      out.write("	<a href=\"mypage.jsp\">");
      out.print(sname );
      out.write("</a>\r\n");
      out.write("	<a href=\"\">회원탈퇴</a>\r\n");

	}

      out.write("\r\n");
      out.write("	<a href=\"\">사이트맵</a>\r\n");
      out.write("	<a href=\"memberList.jsp\">회원목록</a>\r\n");
      out.write("	<a href=\"\">오시는길</a>\r\n");
      out.write("</p>");
      out.write("\r\n");
      out.write("			</div>\r\n");
      out.write("		</header>\r\n");
      out.write("		<div class=\"content\">\r\n");
      out.write("			<h2>여기는 콘텐츠 영역</h2>\r\n");
      out.write("		</div>\r\n");
      out.write("		<footer id=\"ft\">\r\n");
      out.write("			");
      out.write('\r');
      out.write('\n');
    
    String[] dp3 = {"사이트맵","Contact US","회원약관","개인정보처리방침","보안신고센터","협력사"};

      out.write("\r\n");
      out.write("<div class=\"ft_wrap\">\r\n");

	for(int i=0;i<dp3.length;i++){

      out.write("\r\n");
      out.write("	<nav class=\"fnb\">\r\n");
      out.write("	<a href=\"\">");
      out.print(dp3[i] );
      out.write("</a>	\r\n");
      out.write("	</nav>\r\n");

	}

      out.write("\r\n");
      out.write("	<nav class=\"snb\">\r\n");
      out.write("		<ul>\r\n");
      out.write("			<li class=\"sns1\">\r\n");
      out.write("				<a href=\"\" title=\"페이스북\"><i class=\"xi-facebook\"></i></a>\r\n");
      out.write("			</li>\r\n");
      out.write("			<li class=\"sns2\">\r\n");
      out.write("                <a href=\"\" title=\"유튜브\"><i class=\"xi-youtube-play\"></i></a>\r\n");
      out.write("            </li>\r\n");
      out.write("            <li class=\"sns3\">\r\n");
      out.write("                <a href=\"\" title=\"네이버 포스트\"><i class=\"xi-naver\"></i></a>\r\n");
      out.write("            </li>\r\n");
      out.write("		</ul>\r\n");
      out.write("	</nav>\r\n");
      out.write("	<p class=\"copyright\">Copyright © 2022 LG Electronics. All Rights Reserved. 대표번호 : 02-3777-1114</p>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("		</footer>\r\n");
      out.write("	</div>\r\n");
      out.write("</body>\r\n");
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
