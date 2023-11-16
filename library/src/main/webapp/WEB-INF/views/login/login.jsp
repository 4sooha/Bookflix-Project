<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bookflix</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/css/common.css" />
<link rel="stylesheet" href="../resources/css/font.css" />
<link rel="stylesheet" href="../resources/css/validation_chk.css" />

<script>
	$(function() {
		$("#btnLogin").click(function() {
			var userId = $("#userId").val(); //userId에 입력된 값을 변수에저장
			var userPw = $("#userPw").val();

			if (userId == "") {
				alert("아이디를 입력하세요");
				$("#userId").focus();
				return;
			}
			if (userPw == "") {
				alert("비밀번호를  입력하세요");
				$("#userPw").focus();
				return;
			}
			document.form1.action = "${path}/login/loginCheck";
			document.form1.submit();
		});
	});
</script>
</head>
<body class="">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->

		<div id="main">
			<!-- Header -->
			<%@ include file="../include/top.jsp"%>

			<div id="container">
				<!-- <div><h1>login</h1></div> -->
				<div class="space4">&nbsp;</div>
				<div class="space10">&nbsp;</div>
				
				<form name="form1" method="post">
				<div id="input">
					<ul>
						<li><div id="label">아이디</div> 
						<input type="text"
							name="userId" id="userId" maxlength="12" placeholder="아이디" />
							<br /> 
							<span class="grayfont">*5자리 이상, 알파벳/숫자, 첫글자는 알파벳으로 시작</span></li>
						<li><div id="label">비밀번호</div> 
						<input type="password"
							name="userPw" id="userPw" maxlength="20" placeholder="비밀번호" />
							<br /> 
							<span class="grayfont">*8자리 이상, 알파벳/숫자/특수문자가 포함되어야 함</span></li>
					</ul>
				</div>
				<div id="buttons">
					<button type="button" id="btnLogin">로그인</button>
					<!-- <input type="button" value="로그인" id="btnLogin"> -->
					<button type="reset">다시입력</button>
				</div>
				</form>
			</div>
		</div>

		<c:if test="${msg=='failure'}">
			<div>아이디와 비밀번호가 일치하지 않습니다.</div>
		</c:if>
		<c:if test="${msg=='logout'}">
			<div>로그아웃 되었습니다.</div>
		</c:if>

		<!-- Footer -->
		<%@ include file="../include/footer.jsp"%>

		<!-- Scripts -->
		<script src=""></script>

</body>
</html>