<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String add = request.getParameter("add");
	int qty = Integer.parseInt(request.getParameter("qty"));
	String email = request.getParameter("email");
	String url = request.getParameter("url");
	String date = request.getParameter("date");
	String comment = request.getParameter("comment");
	String[] favorite = request.getParameterValues("favorite");
	
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 데이터 처리 및 결과 반환 실습</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
	<div class="panel-heading">
		<h2>form.html에 전송된 데이터</h2>
	</div>
	
	
	<div class="panel-body">
		<table>
			<tbody>
				<tr>
					<th>이름 : </th>
					<td><%=name %></td>
				</tr>
				<tr>
					<th>4강팀</th>
						<td>
							<ul>
							<%
								for(int i=0; i<favorite.length; i++) {
							%>
								<li><%= favorite[i]%></li>
							<%
								}
							%>
							</ul>
						</td>
				</tr>
			
			
			
			</tbody>
		</table>
	</div>
</body>
</html>