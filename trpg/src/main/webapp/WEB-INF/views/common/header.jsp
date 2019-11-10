<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" /> -->
<style>
#loginArea>input {
  width: 150px;
}
</style>
<link rel="stylesheet" href="resources/css/bootstrap.minty.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="/trpg"><b>PLAY TRPG</b></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
  
      <div class="collapse navbar-collapse" id="navbarsExample07">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item ${ menu == 'home'?'active':'' }">
            <a class="nav-link" href="/trpg">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Disabled</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="dropdown07" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Menu</a>
            <div class="dropdown-menu" aria-labelledby="dropdown07">
              <c:if test="${ empty loginUser }">
              <a class="dropdown-item" href="/trpg/login.tr">Login Page</a>
              </c:if>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
        </ul>
        <form class="form-inline my-2 my-md-0" id="loginArea">
          <c:choose>
            <c:when test="${ empty loginUser }">
            <input class="form-control pl-2" type="text" placeholder="ID" aria-label="ID" id="loginAID" autocomplete="false">&nbsp;
            <input class="form-control pl-2" type="password" placeholder="PW" aria-label="PW" id="loginAPW">&nbsp;
            <button type="button" class="btn btn-outline-success" id="loginBtn">LOG IN</button>
            </c:when>
            <c:otherwise>
            <button type="button" class="btn btn-outline-success">MY PAGE</button>
            </c:otherwise>
          </c:choose>
        </form>
      </div>
    </div>
  </nav>
<script>
$(function(){
  /* 로그인 버튼 클릭 시 로그인 하는 코드 */
  $("#loginBtn").on("click", function(){
    var uId = $("#loginAID").val().trim();
    var uPw = $("#loginAPW").val().trim();
    if ( uId == 0 || uPw == 0 ) {
      alert("아이디/패스워드를 입력해주세요");
      return false;
    } else {
      fn_loginUser(uId, uPw);
    }
  });
});

/* 로그인 하는 펑션 */
function fn_loginUser(uId, uPw){
  $.ajax({
    url: "/trpg/memberLogin.tr",
    type: "POST",
    data: { memId: uId,
            memPw: uPw },
    dataType: "JSON",
    error: function(e){ console.log(e); },
    success: function(result) {
      console.log(result);
      if ( result.result == 'noMatchId' ) {
        alert("가입되지 않은 아이디 입니다.");
        return false;
      } else if ( result.result == 'noMatchPw' ) {
        alert("패스워드가 일치하지 않습니다.");
        return false;
      } else if ( result.result == 'loginSuccess' ) {
        alert(result.loginUser.memId + "님 환영합니다!");
        location.href='/trpg';
      }
    }
  });
}
</script>