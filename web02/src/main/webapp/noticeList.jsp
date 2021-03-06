<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.goyang.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	List<NoticeVO> ntv = (List<NoticeVO>) request.getAttribute("ntv");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<style>
.tb1 { display:table; width:1100px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
font-size:14px; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
.tb1 td.img_data { max-width:170px; }
.tb1 td.img_data img { max-width:170px; height:auto; }
.tb1 td p.coment { max-width:170px; line-height:24px;}
</style>
</head>

<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<table class="tb1">
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<ntv.size();i++){
		NoticeVO vo = ntv.get(i);
%>
	
		<tr>
			<td><%=vo.getNno() %></td>
			<td><a href="ncontent.jsp?nno=<%=vo.getNno() %>"><%=vo.getNtitle() %></a></td>
			<td><%=vo.getNname() %></td>
			<td><%=vo.getResdate() %></td>
			<td><%=vo.getNcnt() %></td>
			<td><a href="editNotice.jsp?nno=<%=vo.getNno() %>">수정</a></td>
			<td><a href="">삭제</a></td>
			
		</tr>
<%
	}
%>
		<tr>
			<td colspan="5">
				<a href="addNoticeForm.jsp">글 추가</a>
			</td>
		</tr>
	</tbody>
</table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>