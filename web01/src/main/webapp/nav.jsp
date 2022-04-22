<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%	//스크립트릿(scriptlet)
	String[] dp1 = {"WHO WE ARE", "WHAT WE CREATE", "MEDIA CENTER", "INVESTORS", "CAREERS"};
	String[][] dp2 = { 
			{"기업소개", "걸어온 길", "가치와 목표", "지속가능경영", "NC 21 MOMENTS"},
			{"리니지", "리니지2", "아이온", "블레이드 & 소울", "블레이드 & 소울2"},
			{"뉴스", "미디어 행사", "스토리", "멀티미디어"},
			{"기업지배구조", "제무 정보", "공시 정보", "주가 정보", "IR 자료"},
			{"공고 보기", "지원 안내", "인사 제도"} 
			};
	String[][] lnk = { 
			{"company1.jsp", "company2.jsp", "company3.jsp", "company4.jsp", "company5.jsp"},
			{"sub1.jsp", "sub2.jsp", "sub3.jsp", "sub4.jsp", "sub5.jsp"},
			{"create1.jsp", "create2.jsp", "create3.jsp", "create4.jsp"},
			{"inverstors1.jsp", "inverstors2.jsp", "inverstors3.jsp", "inverstors4.jsp", "inverstors5.jsp" },
			{"careers1.jsp", "careers2.jsp", "careers3.jsp"} 
			};
%>
<%-- <%=표현식 %> --%>
<a class="logo" href="index.jsp"><img src="./image/NC.png" alt=""></a>
<nav id="gnb">
	<ul>
<%
	for(int i=0; i<dp1.length; i++){
%>
		<li>
			<span class="dp1"><%=dp1[i] %></span>
			<ul class="sub">	
<%
		for(int j=0; j<dp2[i].length; j++) {
%>
			<li>
			<a class="dp2" href="<%=lnk[i][j] %>"><%=dp2[i][j] %></a>
			</li>
<%
		}
%>
			</ul>
		</li>
<%
	}
%>
	</ul>
</nav>
<p id="tnb">
	<%
		String sid = (String) session.getAttribute("uid");
		String sname = (String) session.getAttribute("name");
		if(sid==null){
	%>
		<a href="login.jsp">로그인</a>
		<a href="">손님</a>
	<%
		} else{
	%>
		<a href="logout.jsp">로그아웃</a>
		<a href=""><%=sname %></a>
	<%
		}
	%>
	<a href="">상단2</a>
	<a href="">상단3</a>
</p>
</body>
</html>