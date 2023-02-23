<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet" />

    <title>Space Music</title>

   
    <link rel="stylesheet" href="assets/css/list.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo-cyborg-gaming.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- Mouseover Effect CSS Files-->
    <link rel="stylesheet" href="assets/css/mouseover.css" />

    <!-- modal CSS Files -->
    <link rel="stylesheet" href="assets/css/signin.css" />

    <!--

TemplateMo 579 Cyborg Gaming

https://templatemo.com/tm-579-cyborg-gaming

-->

 
  </head>

<body>
<c:set var="MusicList" value="${requestScope.MusicList }" />
        <div class="bs-example">
            <div id="Geeks2" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button"
                                    class="close"
                                    data-dismiss="modal"
                                    aria-hidden="true" style="margin-left: 450px;"
                                    onclick="pauseYoutube();">X</button>
                        </div>
                        <!-- 해당 유튜브 음원 썸네일을 보여주는 부분 -->
                         <img style="width: 100% ; height: 100%;" id = "imageTest"
                                    src="http://img.youtube.com/vi/bLpIBiUYEds/2.jpg" /> 
                        <!-- 실질적으로 유튜브 영상이 틀어져서 노래를 재생함 -->
                        <div class="modal-body" id="youtube_player" style="display: none;"> 
                            <iframe id="Geeks3" width="450" height="350"
                                    src="">
                            </iframe>
                        </div>
                        
                         <div id="myProgress" style="display: flex; justify-content: space-between;">
                            <div id="runningtime"  >00:00</div>
                       <div style="min-width: 85%" ><div id="myBar" ></div></div>
                       <div id="songtime" style="white-space:nowrap;">00:00</div>
                  </div>
                        <div style="height: 15px;"></div>
                        <div style="text-align: center;">
                           <div style="display: inline-block; margin-right: 150px;"><a>⇆</a></div>
                           <div style="display: inline-block; margin-right: 50px;"><a onclick="prev();">◁</a></div>
                           <div style="display: inline-block;"><a onclick="playYoutube();">▶️</a></div>
                           <div style="display: inline-block;"><a onclick="pauseYoutube();">❚❚</a></div>
                           <div style="display: inline-block; margin-left: 50px;"><a onclick="next();"> ▷</a></div>
                            <div style="display: inline-block; margin-left: 150px;"><a onclick="restart();">↻</a></div>
                       </div>
                        <div style="height: 10px;"></div>
                    </div>
                </div>
          </div>
      </div>


    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots"><span></span> <span></span> <span></span></div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->

    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <nav class="main-nav">
              <!-- ***** Logo Start ***** -->
              <a href="main.jsp" class="logo"> <img src="assets/images/logo.png" alt="" /> </a>
              <!-- ***** Logo End ***** -->
              <!-- ***** Search End ***** -->
              <div class="search-input" style="width: 100%">
                <form id="search" action="search.html">
                  <input type="text" placeholder="검색어 입력" id="searchText" name="searchKeyword" onkeypress="handle" style="width: 100%" />
                  <i class="fa fa-search"></i>
                </form>
              </div>
              <!-- ***** Search End ***** -->
              <!-- ***** Menu Start ***** -->
              <ul class="nav">
                <li class="dropdown">
                  <a href="#" class="dropdown-btn">환영합니다.<img src="assets/images/profile-header.jpg" alt="" /></a>
                  <div class="dropdown-submenu">
                    <button
                      class="modalmenu"
                      style="text-align: center; padding: 5px 60px 5px 60px; background-color: rgba(0, 0, 0, 0); border: none; color: gray"
                      onclick="location.href='popular.html'"
                    >
                      Popular
                    </button>

                    <button
                      class="modalmenu"
                      style="text-align: center; padding: 5px 60px 5px 60px; background-color: rgba(0, 0, 0, 0); border: none; color: gray"
                      onclick="location.href='profile.html'"
                      ;
                    >
                      My Menu
                    </button>

                    <button
                      class="modalmenu"
                      style="text-align: center; padding: 5px 60px 5px 60px; background-color: rgba(0, 0, 0, 0); border: none; color: gray"
                      onclick="location.href='index.html'"
                    >
                      Logout
                    </button>
                  </div>
                </li>
              </ul>
              <a class="menu-trigger"> <span>Menu</span> </a>
              <!-- ***** Menu End ***** -->
            </nav>
          </div>
        </div>
      </div>
    </header>
    <!-- ***** Header Area End ***** -->

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">

          <!-- ***** Banner Start ***** -->
          <div class="row">
          <div class="row">
            <div class="col-lg-12">
              <div class="featured-games header-text" style="display: none;">
                <div class="heading-section">
                  <h4>나의 앨범</h4>
                </div>
                <div class="owl-features owl-carousel">
                  <div class="item" style="text-align: center;">
                    <div class="thumb">
                      <img src="/assets/images_final/popular-03.jpg" style="border-radius: 23px;"></img>
                      <div class="hover-effect" st>
                        <h6>2.4K Streaming</h6>
                      </div>
                    </div>
                    <h4>쓸쓸할 때</h4> 
                  </div>
                  <div class="item" style="text-align: center;" >
                    <div class="thumb">
                      <img src="/assets/images_final/popular-04.jpg" style="border-radius: 23px;"></img>
                      <div class="hover-effect">
                        <h6>2.4K Streaming</h6>
                      </div>
                    </div>
                    <h4>나의 최애리스트</h4>
                  </div>
                  <div class="item" style="text-align: center;">
                    <div class="thumb">
                      <img src="/assets/images_final/popular-05.jpg" style="border-radius: 23px;"></img>
                      <div class="hover-effect">
                        <h6>2.4K Streaming</h6>
                      </div>
                    </div>
                    <h4>행복할 때 듣는 노래</h4>
                  </div>
                  <div class="item" style="text-align: center;">
                    <div class="thumb">
                      <img src="assets/images_final/popular-02.jpg" style="border-radius: 23px;"></img>
                      <div class="hover-effect">
                        <h6>2.4K Streaming</h6>
                      </div>
                    </div>
                    <h4>모르겟다</h4>
                  </div>
                  <div class="item" style="text-align: center;">
                    <div class="thumb">
                      <img src="assets/images_final/popular-03.jpg" style="border-radius: 23px;"></img>
                      <div class="hover-effect">
                        <h6>2.4K Streaming</h6>
                      </div>
                    </div>
                    <h4>게임할 때 듣는 노래</h4>
                  </div>
                  <div class="item" style="text-align: center;">
                    <div class="thumb">
                      <img src="assets/images_final/popular-02.jpg" style="border-radius: 23px;" alt=""></img>
                      <div class="hover-effect">
                        <h6>2.4K Streaming</h6>
                      </div>
                    </div>
                    <h4>헉</h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- ***** Banner End ***** -->

          <!-- ***** Gaming Library Start ***** -->
          <div class="gaming-library profile-library">
            <div class="col-lg-12">
              <div class="heading-section">
                <h4><em>TOP100</em></h4>
              </div>
              <!-- item 뒤에붙는 id 1,2,3,4는 나중에 노래번호를 붙일예정 -->
              <c:choose>
              	<c:when test="${MusicList != null }">
              		<c:forEach var="music" items="${MusicList }">
              			<div class="item" id="item1">
                			<ul>
			    			  <li><img width="120" height="80" src=" http://img.youtube.com/vi/${music.music_source }/2.jpg" scrolling="no" class="templatemo-item"></img></li>
			                  <li><h4>${music.music_name }</h4><span>${music.artist_name }</span></li>
			                  <li><h4>재생시간</h4><span>${music.music_time }</span></li>
			                   <!-- id값의 modal1 <- 숫자 같은 경우에 DB에 숫자 값을 가져옴 -->
			                  <li><div class="main-border-button border-no-active"><a href="#Geeks2" src="${music.music_source }" data-toggle="modal" id="modal1">듣기</a></div></li>
			                  <li><div class="main-border-button border-no-active"><a href="javascript:remove('1');">삭제</a></div></li>
			                   <li><h4>조회수</h4><span>${music.music_count }</span></li>
               				</ul>
              			</div>
              		</c:forEach>
              	</c:when>
              </c:choose>
            </div>
          </div>
          <!-- ***** Gaming Library End ***** -->
        </div>
      </div>
    </div>
  </div>
  </div>
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
           <p>Copyright © 2022 <a href="#">Korea IT Academy</a> 2조. All rights reserved. 
         </div>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   
   <script type="text/javascript">
      //youtube player 실행하는 부분 (API라 알 필요 X)
      var tag = document.createElement('script');
          tag.src = "https://www.youtube.com/iframe_api";
       var firstScriptTag = document.getElementsByTagName('script')[0];
          firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
          
          var player; // 유튜브 영상을 실행하는 영상 플레이어
          var url; // 재생하고자 하는 유튜브 영상 URL
          var startnum = 1; //처음 시작 노래 번호 (바뀔 일 없음)
          var lastnum = 6; // 마지막 노래 번호 (DB count 해서 갖고와야됨)
          var now = 1; // 현재 노래 위치
       var i = 0;
        var width = 1;
          var song = [0,2680,2390,2730,2570,2470,1680];
          var id;
          var id2;
          var songStart;
          var songFinish; 
          var temp = 0; // 현재 진행중인 영상 시간을 가져오기 위한 변수
        function onYouTubeIframeAPIReady() {
          if(url != "undefined")
          {
              player = new YT.Player('youtube_player', {
                    height: '400',           
                     width: '480',
                     videoId: 'EBMwWyAPtmI',
              
                 });
          }
        }
        
        
  
             // 듣고자 하는 영상 재생 버튼 클릭시
           $("#modal1").click(function() {
              now = 1;
              // src에 저장된 해당 유튜브 영상 아이디를 가져옴
              url = $("#modal1").attr('src');
              // 해당 유튜브 영상에 썸네일을 modal창에 보이게함
              $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
              // youtube player에 해당 url을 통해 실행
              player.loadVideoById(url); 
              width = 1;
              temp = 0;
                move();
           });
          
           $("#modal2").click(function() {
              now = 2;
              url = $("#modal2").attr('src');
              $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
              player.loadVideoById(url);
              width = 1;
              temp = 0;
              move();
           });
           $("#modal3").click(function() {
              now = 3;
               url = $("#modal3").attr('src');
               $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
               player.loadVideoById(url);
               width = 1;
               temp = 0;
               move();
           });
           $("#modal4").click(function() {
              now = 4;
               url = $("#modal4").attr('src');
               $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
               player.loadVideoById(url);
               width = 1;
               temp = 0;
               move();
           });
           $("#modal5").click(function() {
              now = 5;
               url = $("#modal5").attr('src');
               $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
               player.loadVideoById(url);
               width = 1;
               temp = 0;
               move();
           });
           $("#modal6").click(function() {
              now = 6;
               url = $("#modal6").attr('src');
               $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
               player.loadVideoById(url);
               width = 1;
               temp = 0;
               move();
           });
           
           function move() {
             if (i == 0) {
               i = 1;
               var elem = document.getElementById("myBar");
               var run = document.getElementById("runningtime");
               var end = document.getElementById("songtime");
               var fullVideoMin = 2470 / 600; // 전체 영상 길이 분 구하기
               var fullVideoSec = (2470 % 600)/ 10; // 전체 영상 길이 초 구하기
               var nowVideoMin; // 현재 영상 분
               var nowVideoSec; // 현재 영상 초
               id2 = setInterval(() => {
                  temp++;
                  // 60초가 넘는지 확인함
                  if(temp >= 60)
                  {
                  nowVideoMin = temp / 60;
                  nowVideoSec = temp % 60;
                        // 초가 10초가 넘지 않으면 앞에 0을 붙혀줌
                     if(nowVideoSec < 10)
                     {
                     run.innerHTML = "0"+Math.floor(nowVideoMin) +":0" +Math.floor(nowVideoSec); 
                     }else
                     {
                     run.innerHTML = "0"+Math.floor(nowVideoMin) +":" +Math.floor(nowVideoSec);    
                     }
                  }else
                  {
                     nowVideoSec = temp % 60;
                      if(nowVideoSec < 10)
                     {
                         run.innerHTML = "00:0"+Math.floor(nowVideoSec);
                     }else
                     {
                        run.innerHTML = "00:"+Math.floor(nowVideoSec);
                     }
                  }
            }, 1000);
               // 초가 10초가 넘지 않으면 앞에 0을 붙혀줌
               if(fullVideoSec < 10)
               {
                  end.innerHTML = "0"+Math.floor(fullVideoMin) +":0" +Math.floor(fullVideoSec); 
               }else
               {
                  end.innerHTML = "0"+Math.floor(fullVideoMin) +":" +Math.floor(fullVideoSec); 
               }
              // 10이 1초임
               id = setInterval(frame, song[now]);
               function frame() {
                 if (width >= 100) {
                   clearInterval(id);
                   i = 0;
                 } else {
                   width++;
                   elem.style.width = width + "%"; 
                 }
               }
             }
           }
           // 유튜브 재실행
           function restart()
           {
               player.loadVideoById(url);
           }
           // 유튜브 플레이
           function playYoutube() {
            player.playVideo();
            move();
           }
           // 유튜브 일시정지
           function pauseYoutube() {
               player.pauseVideo();
               i = 0;
               clearInterval(id);
               clearInterval(id2);
           }
           // 앨범에 입력한 이전 곡
           function prev() {
              if(now != startnum)
              {   
                 // 첫 영상이 아닐 경우
                 width = 1;
                 temp = 0;
                 now--;
                 url = $("#modal"+ now).attr('src');
                  $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
                  player.loadVideoById(url);
              }else
              {
                 // 첫 영상일 경우 작동 x
              }
           }
           // 앨범에 입력한 다음 곡
           function next() {
            if(now != lastnum)
            {   
               width = 1;
                 temp = 0;
               //마지막 영상이 아닐 경우
               now++;
               url = $("#modal"+ now).attr('src');
                  $("#imageTest").attr('src', 'http://img.youtube.com/vi/' + url + '/maxresdefault.jpg');
                  player.loadVideoById(url);
            }else
            {
               //마지막 영상일 경우   작동 x
            }
           }
      // DB 연결이 되지 않아서 임의로 삭제 기능 부여함
        function remove(i) {
           var item = document.getElementById("item" + i);
           item.style.display = item.style.display === 'none' ? '' : 'none';
        }
   </script>
  </body>
</html>