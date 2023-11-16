<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bookflix</title>
<%@ include file="../include/header.jsp"%>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../resources/css/common.css" />
<link rel="stylesheet" href="../resources/css/font.css" />
<link rel="stylesheet" href="../resources/css/board.css" />

<script>
	$(function() {
		$("#btnWrite").click(function() {
			var title = $("#title").val();
			var content = $("#content").val();
			//var writer=$("#writer").val();
			//document.form1.title.value 동일한 기능
			if (title == "") {
				alert("제목을 입력하세요");
				docuemnt.form1.title.focus();
				return;
			}
			if (content = "") {
				alert("내용을 입력하세요");
				docuemnt.form1.title.focus();
				return;
			}
			/* 
			if(writer==""){
				alert("작성자를 입력하세요");
				docuemnt.form1.title.focus();
				return;
			}
			 */

			if (confirm("등록 하시겠습니까?")) {
				document.form1.action = "${path}/board/insert";
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



			<!-- view Section -->
			<div id="mainWrapper_view">
				<form name="form1" id="frm" method="post">
					<table id="board_view">
						<colgroup>
							<col width="15%" />
							<col width="85%" />
						</colgroup>
						<caption>
							<!-- 게시글 상세 -->
						</caption>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td><input type="text" name="title" id="title" value=""
									style="width: 560px; height: 20px; font-size: 12px" />
								</td>
							</tr>
							<tr>
								<th scope="row">작성자</th>
								<td>${sessionScope.userId}<input type="hidden"
									name="writer" value="${sessionScope.userId}" id="writer" />
								</td>
							</tr>

							<tr>
								<th scope="row">이메일</th>
								<td>${sessionScope.userEmail}<input type="hidden"
									name="email" value="${sessionScope.userEmail}" id="email" /></td>
							</tr>
							<tr>
								<td class="view_text" colspan="2"><textarea rows="20"
										cols="100" title="내용" id="content" name="content"></textarea>
								</td>
							</tr>
						</tbody>
					</table>

					<div id="txtbtndiv">
						<button id="txtbtn" type="button" onClick="history.go(-1)">
							목록</button>
						<button id="btnWrite" type="submit">
							등록</button>
					</div>
				</form>
			</div>
		</div>




		<!-- Footer -->
		<%@ include file="../include/footer.jsp"%>

		<!-- Scripts -->
		<script src=""></script>
</body>
</html>
