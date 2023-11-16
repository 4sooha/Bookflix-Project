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
</head>
<body class="">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->

		<div id="main">
			<!-- Header -->
			<%@ include file="../include/top.jsp"%>


			<div id="view_container">

				<div id="prod-pic">
					<img src="../resources/images/${dto.b_thumbnail}" />
				</div>
				<div id="left">
					<h2 id="heading">${dto.b_title}</h2>
					<div id="desc">
						<ul>
							<li>저 자 : ${dto.b_author}</li>
							<li>출판사 : ${dto.b_publisher}</li>
							<li>출판연도 : ${dto.b_publish_year}</li>
							<li>카테고리 : ${dto.b_ctg1} > ${dto.b_ctg2} > ${dto.b_ctg3}</li>
						</ul>
					</div>

					<div class="go">
						<ul>
							<li>
								<p class="go_buy"><b>* 구매하러가기</b></p>
								<button type="button" onclick="window.open('https://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=All&SearchWord=${dto.b_title}')">
									go</button>
							</li>
						</ul>
						<p class="go_rent"><b>* 대여하러가기</b></p>
						<ul class="lib_nm">
						<c:forEach var="row" items="#{lib_list}">
							<li>
								<p>&nbsp;- ${row.lib_nm}</p>
								<button type="button" style="cursor:pointer;" onclick="window.open('${row.lib_url}${dto.b_title}')">
									go</button>
							</li>
						</c:forEach> 
						</ul>
					</div>
				</div>
			</div>

			<!-- Footer -->
			<%@ include file="../include/footer.jsp"%>

			<!-- Scripts -->
			<script src=""></script>
</body>
</html>
