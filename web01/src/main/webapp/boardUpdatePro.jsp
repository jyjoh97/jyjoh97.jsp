<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connectON.conf" %>

<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	String b_title = request.getParameter("b_title");
	String b_content = request.getParameter("b_content");
	String author = request.getParameter("author");
	
	sql = "update board set b_title=?, b_content=?, author=?, regdate=now() where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, b_title);
	pstmt.setString(2, b_content);
	pstmt.setString(3, author);
	pstmt.setInt(4, bno);
	cnt = pstmt.executeUpdate();
%>
<%
	if(cnt>0) {
		response.sendRedirect("boardDetail.jsp");
	} else {
		response.sendRedirect("boardUpdate.jsp");
	}
%>
<%@ include file="connectOFF.conf"%>