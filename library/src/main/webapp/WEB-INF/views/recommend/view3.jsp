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

			<div id="dataContainer"  ></div>

			<!-- Footer -->
			<%@ include file="../include/footer.jsp"%>
			<!-- Scripts -->
	
	
	<script>
      let url =
        "http://api.kcisa.kr/openapi/service/rest/meta13/getNLSF0401?serviceKey=58fb3372-ca89-4a2e-a3b7-7278bf1ef815&numOfRows=10&pageNo=1";

      // 1. XMLHttpRequest로 서버에 자료 요청하기
      // 1-1. XMLHttpRequest 객체 생성
      const xhr = new XMLHttpRequest();

      // 1-2. 요청 초기화
      xhr.open("GET", url, true);

      // 1-3. 요청 전송 : 사용자 요청을 서버로 보낸다.
      xhr.send();

      // 2. 응답받은 자료 처리하기
      xhr.onreadystatechange = () => {
        if (xhr.readyState === 4 && xhr.status === 200) {
          // XML 데이터 파싱하기
          let responseText = xhr.responseText;
          let parser = new DOMParser();
          let xmlDoc = parser.parseFromString(responseText, "text/xml");

          // 파싱된 데이터를 가져오는 코드 (이미 파싱된 데이터로 가정)
          let items = xmlDoc.getElementsByTagName("item");

          // 데이터를 표시할 컨테이너 엘리먼트 가져오기
          let dataContainer = document.getElementById("dataContainer");

          // 모든 엘리먼트를 반복하고 내용을 웹 페이지에 추가하기
          // for (let i = 0; i < items.length; i++) {
          let item = items[2];

          // 각 엘리먼트의 내용을 가져오기
          let itemTitle = item.querySelector("title").textContent;
          let itemRights = item.querySelector("rights").textContent;
          let itemDescription = item.querySelector("description").textContent;

       // 이미지 URL 가져오기
          let imageURL = item.querySelector("referenceIdentifier").textContent;

          // 새로운 HTML 엘리먼트를 생성하고 데이터를 추가
          let itemElement = document.createElement("div");
          
    

          // 이미지 엘리먼트를 생성하고 src 속성을 설정
          let imageElement = document.createElement("img");
          imageElement.src = imageURL;
          imageElement.alt = itemTitle; // 이미지 대체 텍스트 설정

          // 나머지 데이터를 추가
          itemElement.innerHTML = '<h3>'+ itemTitle +'</h3><p>'+ itemRights +'</p>'
                                 +'<p>'+ itemDescription +'</p>';
         
          //itemElement.innerHTML = `<h3>${itemTitle}</h3><p>${itemRights}</p>
          //                         <p>${itemDescription}</p> <img src="${imageURL}" alt="${itemTitle} Image">`;


          // 이미지 엘리먼트를 데이터 컨테이너에 추가
          itemElement.appendChild(imageElement);

          // 데이터 컨테이너에 추가
          dataContainer.appendChild(itemElement);

          // }
        }
      };
      </script>
</body>
</html>
