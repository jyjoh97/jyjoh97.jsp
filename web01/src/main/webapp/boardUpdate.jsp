<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글 수정</title>
</head>

<body>
<div class="wrap">
	<header id="hd" class="panel-heading">
		<div class="hd_wrap">
			<%@ include file="nav.jsp" %>
		</div>		
	</header>
	<div class="content" class="panel_body">
		<h2>게시판 글 수정</h2>
		<form action="boardUpdatePro.jsp" name="joinform" method="post" onsubmit="return writeCheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<td class="b_title">제목 : </td>
						<td>
							<input type="text" name="b_title" id="b_title">
						</td>
					</tr>
					<tr>
						<td class="b_content">내용 : </td>
						<td>
							<textarea name="b_content" id="b_content" cols="80" rows="10"></textarea>
						</td>
					</tr>
					<tr>
						<td class="author">작성자 : </td>
						<td><input type="text" name="author" id="author"></td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="수정" class="btn btn-primary">&nbsp;&nbsp;&nbsp;
							<input type="reset" value="취소" class="btn btn-primary">&nbsp;&nbsp;&nbsp;
							<a href="board.jsp" class="btn btn-primary">목록</a>
						</td>
					</tr>		
				</tbody>
			</table>
			<script>
				function writeCheck(f) {
					var memo = f.b_content.value;
					if(memo.length>=480) {
						alert("글 내용은 480글자 이내이어야 합니다.");
						return false;
					}
				}
			</script>
		</form>
	</div>
		
	<footer id="ft">
		<%@ include file="ft.jsp" %>
	</footer>
</div>
	
</body>
</html>