<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bookflix</title>
    <%@ include file="./include/header.jsp" %>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="resources/css/main.css" />
    <link rel="stylesheet" href="resources/css/font.css" />
    <link rel="stylesheet" href="<c:url value='resources/css/slideShow.css'/>"/>
  
  <script src="<c:url value='resources/js/slideShow.js'/> "/></script>
  </head>
  <body class="">
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Main -->

      <div id="main">
        <!-- Header -->
        <header id="header">
          <a href="${path}/index" class="logo"
            ><img src="resources/images/logo.png" alt=""
          /></a>

          <!-- Menu -->
          <nav id="menu">
            <ul>
              <li><a href="index.html">이용안내</a></li>
              <li><a href="${path}/book/list">도서검색</a></li>
              <li><a href="elements.html">사서추천</a></li>
              <li><a href="${path}/board/list">커뮤니티</a></li>
              <li><a href="#">문화/행사</a></li>
            </ul>
          </nav>

          <!-- 로그인 부분 -->
          <ul class="h_menu1">
            <li>
              <a href="${path}/login/login" class="h_menu2"><span class="label">로그인</span></a>
            </li>
            <li>
              <a href="${path}/login/logout" class="h_menu2"
                ><span class="label">로그아웃</span></a
              >
            </li>
            <li>
              <a href="${path}/member/write" class="h_menu2"
                ><span class="label">회원가입</span></a
              >
            </li>
            <li>
              <a href="#" class="h_menu2"
                ><span class="label">마이페이지</span></a
              >
            </li>
          </ul>
        </header>

        <!-- Search -->
        <section id="search" class="" >
          <form name="form1" method="post" action="${path}/book/list">
            <div class="searchboxdiv">
              <select name="searchOption" id="searchbox">
                <option value="all" <c:out value="${map.searchOption=='all'?'selected':''}"/>> 전체 </option>
 <option value="b_title" <c:out value="${map.searchOption=='b_title'?'selected':''}"/>>도서명</option>
 <option value="b_author" <c:out value="${map.searchOption=='b_author'?'selected':''}"/>>저자 </option>
 <option value="b_publisher" <c:out value="${map.searchOption=='b_publisher'?'selected':''}"/>>출판사</option>
              </select>
            </div>
            <div id="searchkeyword" style="display: inline-block; float: right">
              <input type="text" name="keyword" id="" placeholder="Search" />
              <button type="submit" >검색</button>
            </div>
          </form>
        </section>

        <!-- Content -->
        <section>
        <div class="slideshow-container">
		<div class="Slidesbackground">
			<div class="mySlides fade">
				<img src="resources/images/slideShow04.png" width="1500px" class="slideshow-image">
			</div>
			<div class="mySlides fade">
				<img src="resources/images/slideShow05.png" class="slideshow-image">
			</div>
		</div>
		</div>
        </section>
      </div>

      <div class="space4">&nbsp;</div>
      <div class="space10">&nbsp;</div>

      <!-- list Section -->
      <c:if test ="${sessionScope.userId!=null}">
      <section>
        <header class="list_title">
          <h2>[ ${sessionScope.userId}님이 관심 갖는 [${interest_ctg}]분야 추천 도서 ]</h2>
        </header>
        <div class="list">
          <ul>
          <!-- 아이디별 관심 카테고리 추천 목록 -->
		<c:forEach var="row" items="${ctg_recom}">
            <li>
              <a href="${path}/book/view?b_no=${row.b_no}&b_title=${row.b_title}" class="bookimage"><img src="./resources/images/${row.b_thumbnail}" alt=""/></a>
              <p><a href="${path}/book/view?b_no=${row.b_no}&b_title=${row.b_title}">${row.b_title}</a></p>
            </li>
            </c:forEach>
          </ul>
        </div>
      </section>
      </c:if>

      <hr class="major" />

      <!-- list Section -->
      <section>
        <header class="list_title">
          <h2>[ 조회 많은 인기 도서 ]</h2>
        </header>
        <div class="list">
          <ul>
          <!-- 조회수 많은 도서 목록 -->
		<c:forEach var="row" items="${best_hits}">
            <li>
              <a href="${path}/book/view?b_no=${row.b_no}&b_title=${row.b_title}" class="bookimage"
                ><img src="resources/images/${row.b_thumbnail}" alt=""
              /></a>
              <p><a href="${path}/book/view?b_no=${row.b_no}&b_title=${row.b_title}">${row.b_title}</a></p>
            </li>
            </c:forEach>
          </ul>
        </div>
      </section>

      <hr class="major" />

      <!-- librarian_recommend_list Section -->
      <section>
        <header class="list_title">
          <h2>[ 사서가 추천하는 도서 ]</h2>
        </header>
        <div class="list">
          <ul>
            <li>
              <a href="#" class="bookimage"
                ><img src="resources/images/8937460505_2.jpg" alt=""
              /></a>
              <p>책제목</p>
            </li>
            <li>
              <a href="#" class="bookimage"
                ><img src="resources/images/k892535380_1.jpg" alt=""
              /></a>
              <p>책제목</p>
            </li>
            <li>
              <a href="#" class="bookimage"
                ><img src="resources/images/s762635820_1.jpg" alt=""
              /></a>
              <p>책제목</p>
            </li>
            <li>
              <a href="#" class="bookimage"
                ><img src="resources/images/k722737325_1.jpg" alt=""
              /></a>
              <p>책제목</p>
            </li>
            <li>
              <a href="#" class="bookimage"
                ><img src="resources/images/k352535215_1.jpg" alt=""
              /></a>
              <p>책제목</p>
            </li>
            <li>
              <a href="#" class="bookimage"
                ><img src="resources/images/k042531406_2.jpg" alt=""
              /></a>
              <p>책제목</p>
            </li>
          </ul>
        </div>
      </section>

      <hr class="major2" />

      <!-- Footer -->
      <footer id="footer">
        <p class="copyright">
          &copy; Untitled. All rights reserved. Demo Images:
          <a href="https://unsplash.com">Unsplash</a>. Design:
          <a href="https://html5up.net">HTML5 UP</a>.
        </p>
        <div id="company">
          <p>
            서울특별시 강서구 까치산로 13 화곡빌딩 5층 (대표전화) 02-2692-4549
          </p>
        </div>
      </footer>
    </div>

    <!-- Scripts -->
    <script src="js/main.js"></script>
  </body>
</html>
