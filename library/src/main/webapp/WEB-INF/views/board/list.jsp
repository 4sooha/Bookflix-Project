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
    function checkLogin() {
        var userId = '${sessionScope.userId}'; // 방법1
        // 방법2 방법2
        /* var id = '<c:out value='${sessionScope.userId}' /> 
        alert(userId); */
        if (userId == '') {
            alert("로그인 후 글쓰기가 가능합니다.");
            return false;
        } else {
            location.href = '${path}/board/write';
        }
    }
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
			<div id="mainWrapper">
				<div id="l_r_btndiv">
					<div id="tot_cnt">
              			<b>${map.count}</b>개의 글목록
            		</div>
					<button id="txtbtn3" type="button" onclick="checkLogin()">
						글쓰기</button>
				</div>

				<ul id="ulTable_main">
					<!-- 게시판 제목 -->
					<!-- <li>게시판 Title </li> -->
					<!-- 게시판 목록  -->
					<li>
						<!-- Table -->
						<ul id="ulTable">
							<li>
								<ul>
									<li>No</li>
									<li>제목</li>
									<li>작성자</li>
									<li>작성일</li>
									<li>조회수</li>
								</ul>
							</li>
							<!-- 게시물이 출력될 영역 -->
							<li>
							<c:forEach var="row" items="${map.list}">
								<ul>
									<li>${row.bno}</li>
									<li class="left"><a href="${path}/board/view?bno=${row.bno}" id="a1">${row.title}</a></li>
									<li>${row.writer}</li>
									<li>${row.regdate}</li>
									<li>${row.viewcnt}</li>
								</ul>
							</c:forEach>
							</li>
							<!-- 게시물이 출력될 영역 end-->
						</ul>
					</li>

              <!-- 게시판 페이징 영역 -->
              <li>
                  <div id="divPaging">
        
                    <div id="Pag">
                    		<c:if test="${map.prev}">
 							<a href="/library/board/list?num=${map.startPageNum - 1}&searchOption=${map.searchOption}&keyword=${map.keyword}">◀&nbsp;&nbsp;</a>
							</c:if>
                    		<c:forEach begin="${map.startPageNum}" end="${map.endPageNum}" var="num">
                         <a href="/library/board/list?num=${num}&searchOption=${map.searchOption}&keyword=${map.keyword}">${num}&nbsp; &nbsp; </a>
                         	 </c:forEach>
                         	 <c:if test="${map.next}">
                         	<a href="/library/board/list?num=${map.endPageNum + 1}&searchOption=${map.searchOption}&keyword=${map.keyword}"> ▶</a>
                         	 </c:if>
                         	 </div>

                  </div>
              </li>



					<!-- 검색 폼 영역 -->
					 <form name="form1" method="post" action="${path}/board/list" >
					<li id='liSearchOption'>
					
						<div>
							<select name="searchOption" id='selSearchOption'>
								<option value="all" <c:out value="${map.searchOption=='all'?'selected':''}"/>> 전체 </option>
								<option value="writer" <c:out value="${map.searchOption=='writer'?'selected':''}"/>>작성자</option>
								<option value="content" <c:out value="${map.searchOption=='content'?'selected':''}"/>>내용 </option>
								<option value="title" <c:out value="${map.searchOption=='title'?'selected':''}"/>>제목</option>
								<option value="viewcnt" <c:out value="${map.searchOption=='viewcnt'?'selected':''}"/>>조회수 많은수</option>
							</select> <input type="text" name="keyword" id='txtKeyWord' value="${map.keyword}" placeholder="검색할 내용을 입력하세요."
								style="width: 180px; height: 30px; font-size: 12px;" />
							<button id='txtbtn' type="submit">검색</button>
						</div>
					</li>
					 </form>
				</ul>
			</div>




			<!-- Footer -->
			<%@ include file="../include/footer.jsp"%>

			<!-- Scripts -->
			<script src=""></script>
</body>
</html>
