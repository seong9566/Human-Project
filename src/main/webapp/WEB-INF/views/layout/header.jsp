<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>좋좋잡</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	rel="stylesheet">
<link href="/css/header.css" rel="stylesheet">
<link rel="stylesheet" href="/css/main.css">
<script src="/webjars/sockjs-client/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
<style>
/* Add Zoom Animation */
/*            .animate {
               -webkit-animation: animatezoom 0.6s;
               animation: animatezoom 0.6s
            }
            @-webkit-keyframes animatezoom {
               from {
                  -webkit-transform: scale(0)
               }
               to {
                  -webkit-transform: scale(1)
               }

            }

            @keyframes animatezoom {
               from {
                  transform: scale(0)
               }
               to {
                  transform: scale(1)
               }
            }*/
</style>
</head>
<body>
<div class="container">
<header>
	<a href="/main">로고</a>
	<nav>
		<ul class="navbar-nav" style="width: 100%">
			<c:choose>
				<c:when test="${empty principal}">
					<ul style="flex-direction: row-reverse">
						<li class="nav-link"><a href="/loginForm" style="color: black; ">로그인/회원가입</a></li>
					</ul>
				</c:when>
				<c:when test="${principal.companyId != null}">
					<ul>
						<li class="nav-link"><a href="/recommend" style="color: black;">관심 이력서 보기</a></li>
						<li class="nav-link"><a href="/company/jobPostingBoardList" style="color: black;">
								공고관리</a></li>
						<li class="nav-link"><a href="/company/inform" style="color: black;">기업정보</a></li>
						<li class="nav-link"><a href="/logout" onclick="disconnect()" style="color: black;">로그아웃</a></li>
						<li class="nav-link" style="color: black;">${principal.userinfo.companyName}님환영합니다.</li>
						<li class="nav-link fa-regular fa-bell fa-xl" data-bs-toggle="modal"
							data-bs-target="#myModal" id="alarm" onclick="iconchangToRead()"></li>
						<li style="display: none;" id="userId" value="${principal.usersId}"></li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul>
						<li class="nav-link"><a href="/personal/info" style="color: black;">내정보</a></li>
						<li class="nav-link"><a href="/personal/resumesForm" style="color: black;">이력서작성하기</a></li>
						<li class="nav-link"><a href="/personal/myresumesList" style="color: black;">내이력서목록보기</a></li>
						<li class="nav-link"><a href="/logout" style="color: black;">로그아웃</a></li>
						<li class="nav-link" style="color: black;">${principal.userinfo.personalName}님 환영합니다.</li>
						<li class="nav-link fa-regular fa-bell fa-xl" data-bs-toggle="modal"
							data-bs-target="#myModal" id="alarm" onclick="iconchangToRead()"></li>
						<li style="display: none;" id="userId" value="${principal.usersId}"></li>
					</ul>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>
</header>
</div>
            <!-- The Modal -->
            <div class="modal animate" id="myModal">
               <div class="modal-dialog modal-dialog-scrollable">
                  <div class="modal-content">

                     <div class="modal-header">
                        <h4 class="modal-title">내게 온 알람</h4>
                     </div>

                     <div class="modal-body">
                        <h3>내게 온 알림이 없습니다.</h3>
                     </div>

                     <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                     </div>

                  </div>
               </div>
            </div>
	<script>
            $(document).ready(() => {
               if ('<%=(Integer) session.getAttribute("companyId")%>' != "null") {
                  connectpersonal();
               }
               else if ('<%=(Integer) session.getAttribute("personalId")%>' != "null") {
                  connectcompany();
               }
            });
</script>
<script src="/js/header.js"></script>