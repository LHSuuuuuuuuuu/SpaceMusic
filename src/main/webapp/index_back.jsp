<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>로그인</title>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <link rel="stylesheet" href="./assets/css/login.css" />
  </head>
  <body style="height:93% !important">
    <div class="background">
      <div class="login-container">
        <form action="./main.html" method="post" enctype="multipart/form-data" class="form-login" id="myform">
          <header>
            <div>
              <div class="logo"><img src="./assets/images/logo.png" class="main-logo" /></div>
              <div class="title"><span>로그인</span></div>
            </div>
          </header>

          <label for="login-input-userid" class="login__label"> Userid </label>
          <input id="login-input-userid" class="login__input" type="text" autocomplete="off" value="아이디를 입력하세요" />

          <label for="login-input-password" class="login__label"> Password </label>
          <input id="login-input-password" class="login__input" type="password" autocomplete="off" value="비밀번호를 입력하세요" />

          <button class="login__submit" type="submit">로그인</button>
          <button class="id_pw_find">아이디/비밀번호 찾기</button>
          <button class="signup">회원가입</button>
        </form>
      </div>
    </div>
  </body>
  <script src="./assets/js/login.js"></script>
</html>
