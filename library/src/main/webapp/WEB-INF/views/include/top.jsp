<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <!-- Header -->
        <header id="header">
          <a href="${path}/" class="logo"
            ><img src="../resources/images/logo.png" alt=""
          /></a>

          <!-- Menu -->
          <nav id="menu">
            <ul>
              <li><a href="#">이용안내</a></li>
              <li><a href="${path}/book/list">도서검색</a></li>
              <li><a href="${path}/recommend/info_list">사서추천</a></li>
              <li><a href="${path}/board/list">커뮤니티</a></li>
              <li><a href="#">문화/행사</a></li>
            </ul>
          </nav>

          <!-- 로그인 부분 -->
          <ul class="h_menu1">
          <c:choose>
         <c:when test = "${sessionScope.userId!=null}">
			<li>
              <a href="${path}/login/logout" class="h_menu2"
                ><span class="label">로그아웃</span></a
              >
            </li>
           <li>
              <a href="${path}/member/view?userId=${sessionScope.userId}" class="h_menu2"
                ><span class="label">마이페이지</span></a
              >
            </li>
          </c:when>
          <c:otherwise> 
          <li>
              <a href="${path}/member/write" class="h_menu2"
                ><span class="label">회원가입</span></a
              >
            </li>
            <li>
              <a href="${path}/login/login" class="h_menu2"><span class="label">로그인</span></a>
            </li>
			</c:otherwise>
            </c:choose>
          </ul>
          
          <c:if test ="${sessionScope.userId!=null}">
          <div>
            <span class="welcom_name"><b>${sessionScope.userName}</b>님 환영합니다</span>
          </div>
          </c:if>
        </header>
        <hr />

