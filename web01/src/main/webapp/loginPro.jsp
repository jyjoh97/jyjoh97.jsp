<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");	//파라미터명은 요청 페이지의 name과 일치
	String upw = request.getParameter("upw");	//파라미터명은 요청 페이지의 name과 일치
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="reset.css">
</head>

<body>
<div class="wrap">
		<header id="hd">
			<div class="hd_wrap">
				<%@ include file="nav.jsp" %>
			</div>
		</header>
	<div class="content">
		<h2>로그인 정보</h2>
		<p>아이디 : <%=uid %></p>
		<p>비밀번호 : <%=upw %></p>
	<%
		if(uid.equals("jyjoh97") && upw.equals("wodud97")){
			session.setAttribute("uid", uid);
			session.setAttribute("name", "재영님");
			response.sendRedirect("index.jsp");
		} else if(uid.equals("admin") && upw.equals("1234")){
			session.setAttribute("uid", uid);
			session.setAttribute("name", "관리자");
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
	</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>

</div>
</body>
</html>