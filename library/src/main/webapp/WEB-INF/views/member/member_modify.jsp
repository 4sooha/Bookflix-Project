<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bookflix</title>
<%@ include file="../include/header.jsp"%>
<link rel="stylesheet" href="../resources/css/common.css" />
<link rel="stylesheet" href="../resources/css/font.css" />
<link rel="stylesheet" href="../resources/css/validation_chk.css" />
<script>
	$(function() {
		
		$("#btnUpdate").click(function() {
			if (document.form1.userPw.value == "") {
				alert("암호를 입력하세요");
				document.getElementById("userPw").focus();
				return false;
			}
			if (confirm("수정하시겠습니까?")) {
				document.form1.action = "${path}/member/update";
				document.form1.submit();
			}
		});
		$("#btnDelete").click(function() {
			if (document.form1.userPw.value == "") {
				alert("암호를 입력하세요");
				document.getElementById("userPw").focus();
				return false;
			}
			if (confirm("탈퇴하시겠습니까?")) {
				document.form1.action = "${path}/member/delete";
				document.form1.submit();
			}
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


			<div id="s_container">
				<div id="sign-up">
					<h2>[ 나의정보 ]</h2>
				</div>
				<div class="space2">&nbsp;</div>
				<form name="form1" method="post">
					<div id="s_input">
						<ul>
							<li><label for="userId" id="s_userId">아이디</label> <input
								type="text" name="userId" id="userId" value="${dto.userId}"
								readonly class='bottom-border' /> <br /></li>
							<div class="space4">&nbsp;</div>
							<li><label for="userPw" id="s_userPw">비밀번호</label> <input
								type="password" name="userPw" id="userPw" maxlength="20"
								placeholder="비밀번호" /> <br /> <span class="s_grayfont">*8자리
									이상, 알파벳/숫자/특수문자가 포함되어야 함</span></li>
							<div class="space1">&nbsp;</div>
							<li><label for="userName" id="s_userName">이 름</label> <input
								type="text" name="userName" id="userName" maxlength="20"
								placeholder="이름" value="${dto.userName}" /> <br /></li>
							<div class="space4">&nbsp;</div>
							<li><label for="userEmail" id="s_userEmail">이메일</label> <input
								type="email" name="userEmail" id="userEmail" maxlength="20"
								placeholder="123@abc.com" value="${dto.userEmail}" /> <br /></li>
						</ul>
					</div>
					<div id="buttons">
						<button type="button" id="btnUpdate">수정</button>
						<button type="reset" id="btnDelete">탈퇴</button>
					</div>
					</from>
					<div id="v_msg">${message}</div>
			</div>
		</div>



		<!-- Footer -->
		<%@ include file="../include/footer.jsp"%>


		<!-- Scripts -->
		<script src=""></script>
</body>
</html>
