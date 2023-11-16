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
		$("#btnDelete").click(function() {
			if (confirm("삭제하시겠습니까?")) {
				document.form1.action = "${path}/board/delete";
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
					<table class="board_view">
						<colgroup>
							<col width="15%" />
							<col width="55%" />
							<col width="15%" />
							<col width="25%" />
						</colgroup>
						<caption>
							<!-- 게시글 상세 -->
						</caption>
						<tbody>
							<tr>
								<th scope="row">제목</th>
								<td colspan="3">${dto.title}</td>
							</tr>
							<tr>
								<th scope="row">작성자</th>
								<td>${dto.writer}</td>
								<th scope="row">작성일</th>
								<td>${dto.regdate}</td>
							</tr>
							<tr>
								<th scope="row">이메일</th>
								<td>${dto.email}</td>
								<th scope="row">조회수</th>
								<td>${dto.viewcnt}</td>
							</tr>
							<tr>
								<td colspan="4" class="view_text"
									style="width: 800px; height: 230px; vertical-align: top;">${dto.content}</td>
							</tr>
						</tbody>
					</table>

					<div id="txtbtndiv">
						<input type="hidden" name="bno" value="${dto.bno}">
						<button id="txtbtn" type="button" onClick="history.go(-1)">목록</button>
						<c:if test="${sessionScope.userId == dto.writer}">
							<button id="txtbtn" type="button" onclick="location.href='${path}/board/modify?bno=${dto.bno}'">수정</button>
							<button id="btnDelete" type="button">삭제</button>
						</c:if>
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
