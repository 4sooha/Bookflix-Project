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
          
          <div id="reco_btndiv">
            <div id="reco_tot_cnt">
              <b>34</b>개의 글목록
            </div>
          </div>

          <ul id ="ulTable_main">
              <!-- 게시판 제목 -->
              <!-- <li>게시판 Title </li> -->
              <!-- 게시판 목록  -->
              <li>
                  <!-- Table --> 
                  <ul id ="ulTable_reco">
                      <li>
                        <ul>
                              <li>No</li>
                              <li class="left">제목</li>
                              <li class="left">저자</li>
                              <li>조회수</li>
                          </ul>
                      </li>
                      <!-- 게시물이 출력될 영역 -->
                      <li>
                          <ul>
                              <li>127</li>
                              <li class="left"><a href="${path}/recommend/view1">코로나 이후의 생존 도시 : 만능
							백신은 없다</a></li>
                              <li class="left">홍윤철</li>
                              <li>38</li>
                          </ul>
                      </li>
  
                      <li>
                          <ul>
                              <li>126</li>
                              <li class="left"><a href="${path}/recommend/view2">빛의 물리학</a></li>
                              <li class="left"><빛의 물리학> 제작팀</li>
                              <li>42</li>
                          </ul>
                      </li>
  
                      <li>
                          <ul>
                              <li>125</li>
                              <li class="left"><a href="${path}/recommend/view3">예민한 사람을 위한 좋은 심리 습관</a></li>
                              <li class="left">캐린 홀</li>
                              <li>37</li>
                          </ul>
                      </li>
  
                      <li>
                          <ul>
                              <li>124</li>
                              <li class="left">오직 두 사람</li>
                              <li class="left">김영하</li>
                              <li>51</li>
                          </ul>
                      </li>
      
                        <li>
                            <ul>
                              <li>123</li>
                              <li class="left">우주에서 살기, 일하기, 생존하기</li>
                              <li class="left">톰 존스</li>
                              <li>11</li>
                            </ul>
                        </li>
      
                      <li>
                            <ul>
                              <li>122</li>
                              <li class="left">알고리즘, 인생을 계산하다</li>
                              <li class="left">톰 그리피스</li>
                              <li>9</li>
                            </ul>
                        </li>
      
                        <li>
                            <ul>
                              <li>121</li>
                              <li class="left">이케아 옷장에 갇힌 인도 고행자의 신기한 여행</li>
                              <li class="left">로맹 퓌에르톨라</li>
                              <li>21</li>
                            </ul>
                        </li>
      
                        <li>
                            <ul>
                              <li>120</li>
                              <li class="left">진돗개 보리</li>
                              <li class="left">김훈</li>
                              <li>39</li>
                            </ul>
                          </li>
      
                          <li>
                              <ul>
                              <li>119</li>
                              <li class="left">나는 왜 똑같은 생각만 할까</li>
                              <li class="left">데이비드 니븐</li>
                              <li>14</li>
                            </ul>
                          </li>
      
                          <li>
                              <ul>
                              <li>118</li>
                              <li class="left">천천히, 스미는</li>
                              <li class="left">G.K. 체스터튼</li>
                              <li>18</li>
                          </ul>
                      <li>                                     
                  </ul>
              </li>
  
              <!-- 게시판 페이징 영역 -->
              <li>
                  <div id="divPaging">
                    <div id="Pag">◀&nbsp;&nbsp; 1&nbsp;&nbsp; 2&nbsp;&nbsp; 3&nbsp;&nbsp; 4&nbsp;&nbsp; 5&nbsp;&nbsp; 6&nbsp;&nbsp; 7&nbsp;&nbsp; 8&nbsp;&nbsp; 9&nbsp;&nbsp; 10&nbsp;&nbsp; ▶</div>

                  </div>
              </li>
              

  
              <!-- 검색 폼 영역 -->
              <li id='liSearchOption'>
                  <div>
                      <select id='selSearchOption' >
                          <option value='T'>제목</option>
                          <option value='C'>저자</option>
                          <option value='C'>내용</option>
                          <option value='C'>조회순</option>
                      </select>
                      <input id='txtKeyWord' style="width:180px;height:30px;font-size:12px;" />
                      <button id='txtbtn' type="button" onclick="alert('Hello World!')">검색</button>
                  </div>
                  </li>
  
          </ul>
      </div>




      <!-- Footer -->
      <footer id="footer2">
        <p class="copyright">
          &copy; Untitled. All rights reserved. Demo Images:
          <a href="https://unsplash.com">Unsplash</a>. Design:
          <a href="https://html5up.net">HTML5 UP</a>.
        </p>
        <div id="company">
          <p>서울특별시 강서구 내발산동 (대표전화) 123-456-7890</p>
        </div>
      </footer>
    </div>

    <!-- Scripts -->
    <script src="js/main.js"></script>
  </body>
</html>
