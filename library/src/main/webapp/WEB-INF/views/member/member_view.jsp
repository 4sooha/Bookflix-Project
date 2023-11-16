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
		$("#btnDelete").click(function() {
			if (confirm("비밀번호를 입력하세요")) {
				document.form1.action = "${path}/member/modify";
				document.form1.submit();
			}
		});
		$("#btnUpdate").click(function() {
			if (confirm("수정화면으로 이동합니다")) {
				document.form1.action = "${path}/member/modify";
				document.form1.submit();
			}
		});
	});

	</SCRIPT>
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
								readonly class='bottom-border'/> <br /></li>
							<div class="space4">&nbsp;</div>
							<li><label for="userPw" id="s_userPw">비밀번호</label> <input
								type="password" name="userPw" id="userPw" maxlength="20"
								placeholder="비밀번호" value="${dto.userPw}" class='bottom-border' /> <br /></li>
							<div class="space4">&nbsp;</div>
							<li><label for="userName" id="s_userName">이 름</label> <input
								type="text" name="userName" id="userName" maxlength="20"
								placeholder="이름" value="${dto.userName}" class='bottom-border' /> <br /></li>
							<div class="space4">&nbsp;</div>
							<li><label for="userEmail" id="s_userEmail">이메일</label> <input
								type="email" name="userEmail" id="userEmail" maxlength="20"
								placeholder="123@abc.com" value="${dto.userEmail}" class='bottom-border'/> <br /></li>
						</ul>
					</div>
					<div id="buttons">
						<button type="button" id="btnUpdate">수정</button>
						<button type="button" id="btnDelete">탈퇴</button>
					</div>
					</from>
					<div id="v_msg"><b>${message}</b></div> 
			</div>
		</div>



		<!-- Footer -->
		<%@ include file="../include/footer.jsp"%>


		<!-- Scripts -->
		<script src=""></script>
</body>
</html>
