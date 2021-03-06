<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 약관 및 동의</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container">
	<header id="hd" class="panel-heading navbar navbar-default">
		<div class="hd_wrap container">
			<%@ include file="nav.jsp" %>
		</div>
	</header>

<div class="content" class="panel-body"></div>
	<h2>회원 약관 및 개인정보처리방침</h2>
	<textarea rows="30" cols="90" readonly>회원약관</textarea><br>
		<input type="checkbox" name="ck1" id="ck1"> 회원약관에 동의합니다.
	<br><br><br>
	<textarea rows="30" cols="90" readonly>개인정보처리방침</textarea>
		<input type="checkbox" name="ck2" id="ck2"> 개인정보처리방침에 동의합니다.
	<br><br><br>
	<button id="btn1" onclick="fnc1()">회원가입</button>
	
	<script type="text/javascript">
		function fnc1(){
			var ck1 = document.getElementById("ck1");
			var ck2 = document.getElementById("ck2");
			if(ck1.checked && ck2.checked) {
				location.href = "join.jsp";
				return false;
			} else {
				alert("약관에 동의하지 않으셨습니다.");
				return false;
			}
		}
	</script>
	
	<footer id="ft">
			<%@ include file="ft.jsp" %>
	</footer>
</div>
</body>
</html>