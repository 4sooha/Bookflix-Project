<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Bookflix</title>
    <%@ include file="../include/header.jsp" %>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, user-scalable=no"
    />
    <link rel="stylesheet" href="../resources/css/common.css" />
    <link rel="stylesheet" href="../resources/css/font.css" />
	<style>
	button{cursor:pointer;}
  </style>
  </head>
  <body class="">
    <!-- Wrapper -->
    <div id="wrapper">
      <!-- Main -->

      <div id="main">
        <!-- Header -->
		<%@ include file="../include/top.jsp" %>
	
		
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
        
		 <div id="totalcnt">
		 ${map.count} 개의 게시글 목록
		 </div>
 
        <!-- list Section -->
        <section>
          <div class="list">
            <ul>
            <c:forEach var="row" items="${map.list}">
              <li>
                <a href="${path}/book/view?b_no=${row.b_no}&b_title=${row.b_title}" class="bookimage"
                  ><img src="../resources/images/${row.b_thumbnail}" alt=""
                /></a>
                <p><a href="${path}/book/view?b_no=${row.b_no}&b_title=${row.b_title}">${row.b_title}</a></p>
              </li>
              </c:forEach>
            </ul>
          </div>
        </section>
        
        <!-- 페이징 -->
        	<div  id="page">
		<c:if test="${map.prev}">
 			<span>[ <a href="/library/book/list?num=${map.startPageNum - 1}&searchOption=${map.searchOption}&keyword=${map.keyword}">이전</a> ]&nbsp;</span>
		</c:if>
		<c:forEach begin="${map.startPageNum}" end="${map.endPageNum}" var="num">
    		<span>
     			<a href="/library/book/list?num=${num}&searchOption=${map.searchOption}&keyword=${map.keyword}">${num}&nbsp;</a>
  			</span>
 		</c:forEach>
 		<c:if test="${map.next}">
 		<span>[ <a href="/library/book/list?num=${map.endPageNum + 1}&searchOption=${map.searchOption}&keyword=${map.keyword}">다음</a> ]</span>
		</c:if>
		</div>
      </div>
      
      	

      <!-- Footer -->
      <%@ include file="../include/footer.jsp" %>

    <!-- Scripts -->
    <script src=""></script>
  </body>
</html>
