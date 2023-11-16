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

		<div id="main" style="border: 1px dotted red;">
			<!-- Header -->
			<%@ include file="../include/top.jsp"%>


			<table border="1" width="600">
				<tr>
					<th id="col">NO</th>
					<th>제목</th>
					<th>저자</th>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="${path}/recommend/view1">코로나 이후의 생존 도시 : 만능
							백신은 없다</a></td>
					<td>홍윤철</td>
				</tr>
				<tr>
					<td>2</td>
					<td><a href="${path}/recommend/view2">빛의 물리학</a></td>
					<td><빛의 물리학> 제작팀</td>
				</tr>
				<tr>
					<td>3</td>
					<td><a href="${path}/recommend/view3">예민한 사람을 위한 좋은 심리 습관</a></td>
					<td>캐린 홀</td>
				</tr>
				<tr>
					<td>4</td>
					<td>오직 두 사람</td>
					<td>김영하</td>
				</tr>
				<tr>
					<td>5</td>
					<td>우주에서 살기, 일하기, 생존하기</td>
					<td>톰 존스</td>
				</tr>
				<tr>
					<td>6</td>
					<td>알고리즘, 인생을 계산하다</td>
					<td>톰 그리피스</td>
				</tr>
				<tr>
					<td>7</td>
					<td>이케아 옷장에 갇힌 인도 고행자의 신기한 여행</td>
					<td>로맹 퓌에르톨라</td>
				</tr>
				<tr>
					<td>8</td>
					<td>진돗개 보리</td>
					<td>김훈</td>
				</tr>
				<tr>
					<td>9</td>
					<td>나는 왜 똑같은 생각만 할까</td>
					<td>데이비드 니븐</td>
				</tr>
				<tr>
					<td>10</td>
					<td>천천히, 스미는</td>
					<td>G.K. 체스터튼</td>
				</tr>
			</table>


			<!-- Footer -->
			<%@ include file="../include/footer.jsp"%>

			<!-- Scripts -->
			<script src=""></script>
</body>
</html>
