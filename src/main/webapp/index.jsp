<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="src/css/style.css" />
    <script
      src="https://code.jquery.com/jquery-3.6.1.min.js"
      integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="wrap">
      <div id="Header">
        <h1 id="logo">
          <a href="#"><img src="/src/image/logo-f-5.png" alt="" /></a>
        </h1>
        <div id="LoginBox">
          <a class="loginBtn">로그인</a>
          <ul class="tog">
            <li><a href="#">마이페이지</a></li>
            <li><a href="#">공지사항</a></li>
            <li><a href="#">계정설정</a></li>
            <li><a href="#">친구초대 </a></li>
            <li><a href="#">로그아웃</a></li>
          </ul>
        </div>

        <input type="search" placeholder="MUSIC 검색" id="search" />
        <div id="GNB">
          <ul>
            <li><a id="today">투데이</a></li>
            <li><a id="chart">차트</a></li>
            <li><a href="#">보관함</a></li>
            <li><a href="#">스테이션</a></li>
            <li><a href="#">매거진</a></li>
            <li><a href="">고객센터</a></li>
          </ul>
        </div>
        <div id="events">
          <ul>
            <li>event1</li>
            <li>event2</li>
            <li>event3</li>
          </ul>
        </div>

        <div id="FloatArea">
          <a href="">멤버쉽 구독</a>
          <a href="">포도 티켓</a>
        </div>
        <a href="" class="service">서비스 소개</a>
      </div>

      <iframe
        src="main.html"
        width="100%"
        height="100%"
        style="display: block; padding-left: 230px"
        id="main"
      ></iframe>

      <iframe
        src="test.html"
        width="100%"
        height="100%"
        style="display: none; padding-left: 230px"
        id="test"
      ></iframe>

      <div id="MusicControl">
        <div class="gageBar"></div>
        <div class="hidden">
          <h1>hidden</h1>
        </div>
        <div class="controller">
          <ul class="musicInfo">
            <li><a href="">album</a></li>
            <li>
              <strong>ttile</strong>
              <p>name</p>
            </li>
            <li><button>like</button></li>
            <li><button>text</button></li>
          </ul>
          <ul class="">
            <li>랜덤</li>
            <li>이전곡</li>
            <li>재생</li>
            <li>다음곡</li>
            <li>전체반복</li>
          </ul>
          <ul class="volum">
            <li><a href="">volum</a></li>
            <li class="volumBar"><div></div></li>
          </ul>
          <a id="openList">button</a>
        </div>
      </div>
    </div>

    <script>
      // openList button toggle
      let ow = document.getElementById("openList");
      $(ow).click(function () {
        $(".hidden").toggle();
      });
    </script>
    <script>
      // loginBox button toggle
      let lb = document.getElementById("LoginBox");
      $(lb).click(function () {
        $(this).find(".tog").toggle();
      });
    </script>

    <script>
      // page move action
      let today = document.getElementById("today");
      let chart = document.getElementById("chart");

      $(today).click(function () {
        $("#test").css("display", "none");
        $("#main").fadeIn(450).css("display", "block");
      });

      $(chart).click(function () {
        $("#test").fadeIn(450).css("display", "block");
        $("#main").css("display", "none");
      });
    </script>
  </body>
</html>