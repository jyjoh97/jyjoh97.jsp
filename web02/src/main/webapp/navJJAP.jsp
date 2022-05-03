<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<%
	String[] dp1 = {"WHO WE ARE","WHAT WE CREATE","MEDIA CENTER","INVESTORS","CAREERS"};
	String[][] dp2 ={ {"기업소개","걸어온 길","가치와 목표","지속가능경영","NC 21 MOMENTS"},
			{"리니지","리니지2","아이온","블레이드 & 소울","블레이드 & 소울"},
			{"뉴스","미디어 행사","스토리","멀티미디어"},
			{"기업지배구조","재무 정보","공시 정보","주가 정보","IR 자료"},
			{"공고 보기","지원 안내","인사제도"}
			};
	String[][] lnk = { {"sub1.html#page1","sub1.html#page2","sub1.html#page3","sub1.html#page4","sub1.html#page5" },
			{"sub2.html#page1","sub2.html#page2","sub2.html#page3","sub2.html#page4","sub2.html#page5" },
			{"sub3.html#page1","sub3.html#page2","sub3.html#page3","sub3.html#page4","sub3.html#page5"},
			{"sub4.html#page1","sub4.html#page2","sub4.html#page3","sub4.html#page4","sub4.html#page5"},
			{"sub5.html#page1","sub5.html#page2","sub5.html#page3","sub5.html#page4","sub5.html#page5"}};
%>	
	<ul>
<%
	for(int i=0; i<dp1.length; i++){
%>		
	<li>
		<a><%=dp1[i] %></a>
		<ul>
<%
		for(int j=0; j<dp2[i].length; j++){
%>
			<li><a href="<%=lnk[i][j]%>"><%=dp2[i][j] %></a></li>
<%		
		}
%>
	</ul>
	</li>
<%
	}
%>
	</ul>

	<footer>
<%
	String sid = (String) session.getAttribute("uid");
	
	

	if(sid==null){
%>
		<a href="">로그인</a>
		<a href="">회원가입</a>
		<a href="">손님</a>
<%
	} else if(sid.equals("admin")){	
%>
		<a href="">로그아웃</a>
		<a href="">회원목록</a>
		<a href="">게시판</a>
<%
		} else if(!sid.equals("admin")){
%>
		<a href="">로그아웃</a>	
		<a href="">마이페이지</a>
		<a href="">회원탈퇴</a>
<%
		}
%>
	</footer>