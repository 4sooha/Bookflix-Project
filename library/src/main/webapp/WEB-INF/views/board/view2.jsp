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
  <link href="<c:url value='/resources/css/view_board.css' />" rel="stylesheet" >
  
  <script>
$(function(){
	$("#btnUpdate").click(function(){
		var title=$("#title").val();
		var content=$("#content").val();
		//var writer=$("#writer").val();
		//document.form1.title.value 동일한 기능
		if(title==""){
			alert("제목을 입력하세요");
			docuemnt.form1.title.focus();
			return;
		}
		if(content=""){
			alert("내용을 입력하세요");
			docuemnt.form1.title.focus();
			return;
		}
		/* if(writer==""){
			alert("작성자를 입력하세요");
			docuemnt.form1.title.focus();
			return;
		} */
		if(confirm("수정하시겠습니까?")){
		document.form1.action="${path}/board/update";
		document.form1.submit();			
		}	
	});
	
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
		document.form1.action="${path}/board/delete";
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

      <div id="main" style="border:1px dotted red;">
        <!-- Header -->
		<%@ include file="../include/top.jsp" %>
		
		
        <!-- 00000000 -->
       
       <div id="v1">
        <div id="v2">
           <h2> 게시글 상세 보기 </h2>
         </div>
         <div id="v3">
    <form name="form1" method="post">
        
          <table class="v4">
          <thead class="v5">
          <tr>
            <th>작성 날짜 : </th>
          <td>${dto.regdate}</td>
          </tr>
          <tr>
          <th>조회수 : </th>
          <td>${dto.viewcnt}</td>
          </tr>
          <tr>
          <th>* 제목 :</th>
          <td ><input type="text" name="title" value="${dto.title}" id="title" class="vv7"></td>
          </tr>
          <tr>
          <th>* 내용 :</th>
          <td><textarea name="content" rows="4" cols="40" id="content" class="vv8"> ${dto.content}</textarea></td>
          </tr>
          <tr>
          <th>* 작성자 :</th>
          <td >${dto.writer}<input type="hidden" name="writer" value="${sessionScope.userId}" id="writer" ></td>
          </tr>
          
          </thead>
          </table>
        </div>
              <div id="v6">
               <c:if test="${sessionScope.userId == dto.writer}">
               <input type="hidden" name="bno" value="${dto.bno}">
               <button type="button" id="btnUpdate"> 수 정 하 기 </button>
               <button type="button" id="btnDelete"> 삭 제 하 기</button>
               </c:if>
               </div>
        
        </form>
    </div>
    </div>
    
      <!-- Footer -->
      <%@ include file="../include/footer.jsp" %>

    <!-- Scripts -->
    <script src=""></script>
  </body>
</html>
