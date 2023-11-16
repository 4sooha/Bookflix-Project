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
					<h2>[ 회원가입 ]</h2>
				</div>
				<div class="space2">&nbsp;</div>
				<form name="form1" method="post" action="${path}/member/insert">
					<div id="s_input">
						<ul>
							<li><label for="userId" id="s_userId">아이디</label>
							<input
								type="text" name="userId" id="userId" maxlength="12"
								placeholder="아이디" /> 
								<br /> 
								<span class="s_grayfont">*5자리 이상, 알파벳/숫자,
									첫글자는 알파벳으로 시작</span>
							</li>
							<div class="space1">&nbsp;</div>
							<li><label for="userPw" id="s_userPw">비밀번호</label>
							<input
								type="password" name="userPw" id="userPw" maxlength="20"
								placeholder="비밀번호" /> 
								<br /> 
								<span class="s_grayfont">*8자리 이상,
									알파벳/숫자/특수문자가 포함되어야 함</span>
							</li>
							<div class="space1">&nbsp;</div>
							<li><label for="userName" id="s_userName">이 름</label>
							<input
								type="text" name="userName" id="userName" maxlength="20"
								placeholder="이름" />
							<br />
							</li>
							<div class="space1">&nbsp;</div>
							<li><label for="userEmail" id="s_userEmail">이메일</label>
							<input
								type="text" name="userEmail" id="userEmail" maxlength="20"
								placeholder="123@abc.com" /> 
								<br />
							</li>
						</ul>
					</div>
					<div id="buttons">
						<button type="submit" >가입</button>
						<!-- <input type="submit" value="등록"> -->
						<button type="reset">다시입력</button>
					</div>
				</from>
			</div>
		</div>



		<!-- Footer -->
		<%@ include file="../include/footer.jsp"%>


		<!-- Scripts -->
		<script src="../resources/js/validation_chk.js"></script>
</body>
</html>
