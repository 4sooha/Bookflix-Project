<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<%@ include file ="../include/header.jsp" %>
</head>
<body>
<%@ include file ="../include/menu.jsp" %>
<h2> 글쓰기 </h2>
<form name="form1" method="post" action="${path}/board/insert">
<div> 제목: 
 <input type="text" name="title" id="title"  placeholder="제목을 입력하세요"> <!-- id="title" 자바스크립트에 필요 -->
</div>
<div> 내용: <br />
 <textarea name="content" id="content" rows="4" cols="40" placeholder="내용을 입력하세요"> <!-- id="content" 자바스크립트에 필요 -->
 </textarea>
</div>
<div> 작성자: 
 <input type="text" name="writer" id="writer"  placeholder="이름을 입력하세요"> <!-- id="writer" 자바스크립트에 필요 -->
</div>
<div>
<input type="submit" value="확인" id="btnSave">
<input type="reset" value="취소"> 
</div>






</form>

</body>
</html>