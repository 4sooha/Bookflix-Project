<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- context 경로 -->

<c:set var="path" value="${pageContext.request.contextPath}"/>


 <nav>
	<ul>
	<li><a href="${path}/book/list?num=2&&searchOption=&keyword="> 도서 리스트 보기+페이징 </a></li>
		<li><a href="${path}/member/write"> 회원 가입 </a></li>
		<li><a href="${path}/login/login"> 로그인 </a></li>
		<li><a href="${path}/login/logout"> 로그아웃 </a></li>
		<li><a href="${path}/member/list"> 멤버리스트 </a></li>
		<li><a href="${path}/board/list"> 게시판 </a></li>
	</ul>
</nav>