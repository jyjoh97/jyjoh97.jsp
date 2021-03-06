<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
<div class="wrap">
	<header id="hd" class="panel-heading">
		<div class="hd_wrap">
			<%@ include file="nav.jsp" %>
		</div>		
		
	</header>
	<div class="content" class="panel_body">
		<h2>회원가입</h2>
		<form action="joinPro.jsp" name="joinform" method="post" onsubmit="joinCheck(f)">
			<table class="table">
				<tbody>
					<tr>
						<td class="necessary">아이디 : </td>
						<td><input type="text" name="uid" id="uid"  required >
							<input type="button" id="popopen" value="중복확인" class="btn btn-primary" onclick="idCheck()">
							<input type="hidden" name="idck" id="idck" value="">
						</td>
					</tr>
					<tr>
						<td class="necessary">비밀번호 : </td>
						<td><input type="password" name="upw" id="upw" required></td>
					</tr>
					<tr>
						<td class="necessary">비밀번호 확인 : </td>
						<td><input type="password" name="upw2" id="upw2" required></td>
					</tr>			
					<tr>
						<td class="necessary">이름 : </td>
						<td><input type="text" name="name" id="name" required></td>
					</tr>
					<tr>
						<td class="">성별 : </td>
						<td><input type="radio" name="gender" value="남" checked>남
							<input type="radio" name="gender" value="여" checked>여
						</td>
					</tr>	
					<tr>
						<td class="">연락처 : </td>
						<td><input type="tel" name="phone" id="phone"></td>
					</tr>
					<tr>
						<td class="">이메일 : </td>
						<td><input type="email" name="eamil" id="eamil"></td>	
					</tr>	
					<tr>
						<td class="">주소 : </td>
						<td><input type="text" name="address" id="address"></td>
				</tbody>
			</table>
			<script>
				function idCheck() {
					window.open("pop.jsp", "idwin", "width400, height=300")
				}
				function joinCheck(f) {
					if(f.idck!="yes") {
						alert("아이디 중복 검사를 진행하지 않았습니다.");
						return false;
					}
					if(f.upw.value!=f.upw2.value) {
						alert("비밀번호와 비밀번호 확인의 입력값이 다릅니다.");
						return false;
					}
				}
			</script>
			<br>
			<input type="submit" value="가입"/> <input type="button" value="취소">
		</form>
	</div>	
	<footer id="ft">
			<%@ include file="ft.jsp" %>
		</footer>
</div>
</body>
</html>