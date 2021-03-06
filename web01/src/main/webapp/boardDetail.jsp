<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 보기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<table>
<tbody>

	<%@ include file="connectON.conf" %>
<%
		sql = "select * from board where bno=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bno);
		rs = pstmt.executeQuery();
		if(rs.next()) {
%>
	<tr>
		<th>글번호</th><td><%=rs.getInt("bno") %></td>
	</tr>
	<tr>
		<th>제목</th><td><%=rs.getString("b_title") %></td>
	</tr>
	<tr>
		<th>내용</th><td><%=rs.getString("b_content") %></td>
	</tr>
	<tr>
		<th>작성일</th><td><%=rs.getDate("regdate") %></td>
	</tr>
	<tr>
		<th>작성자</th><td><%=rs.getString("author") %></td>
	</tr>
	<tr>
		<td colspan="2">
			<% if(sid.equals("admin")) { %>
				<a href="boardUpdate.jsp?bno=<%=bno %>" class="btn btn-primary">수정</a>
				&nbsp;&nbsp;&nbsp;
				<a href="boardDelete.jsp?bno=<%=bno %>" class="btn btn-primary">삭제</a> &nbsp;&nbsp;&nbsp;
			<% } %>
			<a href="board.jsp" class="btn btn-primary">목록</a>
		</td>
	</tr>
	
	</tbody>
	</table>
<%
	}
%>

<%@ include file="connectOFF.conf" %>

<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>