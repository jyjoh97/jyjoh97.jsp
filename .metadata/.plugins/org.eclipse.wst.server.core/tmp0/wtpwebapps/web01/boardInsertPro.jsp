<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String b_title = request.getParameter("b_title");
	String b_content = request.getParameter("b_content");
	String author = request.getParameter("author");
%>
<%@ include file="connectON.conf" %>
<%
	sql = "insert into board(b_title, b_content, author) values(?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, b_title);
	pstmt.setString(2, b_content);
	pstmt.setString(3, author);
	cnt = pstmt.executeUpdate();
%>
<%
	if(cnt>0) {
		response.sendRedirect("board.jsp");
	} else {
		response.sendRedirect("boardInsert.jsp");
	}
%>
<%@ include file="connectOFF.conf"%>