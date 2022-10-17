<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
         <title>좋좋잡</title>
         <meta charset="utf-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
         <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
         <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
         <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
         <script src="/webjars/sockjs-client/sockjs.min.js"></script>
         <script src="/webjars/stomp-websocket/stomp.min.js"></script>
         <style>
            /* Add Zoom Animation */
            .animate {
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
            @keyframes animatezoom {
               from {
                  transform: scale(0)
               }

               to {
                  transform: scale(1)
               }
            }
         </style>
      </head>

      <body>
         <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <div class="container-fluid">
               <a class="navbar-brand" href="/main">로고</a>
               <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapsibleNavbar">
                  <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse" id="collapsibleNavbar">
                  <ul class="navbar-nav" style="width: 100%">
                     <c:choose>
                        <c:when test="${empty principal}">
                           <li class="nav-item"><a class="nav-link" href="/loginForm">로그인/회원가입</a></li>
                        </c:when>
                        <c:when test="${principal.companyId != null}">
                           <li class="nav-item"><a class="nav-link" href="/recommend">관심 이력서 보기</a></li>
                           <li class="nav-item"><a class="nav-link" href="/company/${principal.companyId}/jobPostingBoardList"> 공고관리</a></li>
                           <li class="nav-item"><a class="nav-link" href="/company/inform">기업정보</a></li>
                           <li class="nav-item"><a class="nav-link" href="/logout" onclick="disconnect()">로그아웃</a></li>
                           <li style="position: fixed; color: aliceblue; margin-top: 7px; right: 10%;" class="nav-item">
                              ${principal.userinfo.companyName}님환영합니다.</li>
                           <li class="nav-item fa-regular fa-bell nav-link"
                              style="color: white; margin-top: 5px; margin-left: 20px; cursor:pointer"
                              data-bs-toggle="modal" data-bs-target="#myModal" id="alarm" onclick="iconchangToRead()">
                           </li>
                           <li style="display: none;" id="userId" value="${principal.usersId}"></li>
                        </c:when>
                        <c:otherwise>
                    <li class="nav-item"><a class="nav-link" href="/personal/info">내정보</a></li>
                 	<li class="nav-item"><a class="nav-link" href="/personal/resumesForm">이력서작성하기</a></li>
					<li class="nav-item"><a class="nav-link" href="/personal/myresumesList">내이력서목록보기</a></li>
                    <li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
                           <li class="nav-item" style="position: fixed; color: aliceblue; margin-top: 7px; right: 10%;">
                              ${principal.userinfo.personalName}님 환영합니다.</li>
                           <li class="nav-item fa-regular fa-bell nav-link"
                              style="color: white; margin-top: 5px; margin-left: 20px; cursor:pointer"
                              data-bs-toggle="modal" data-bs-target="#myModal" id="alarm" onclick="iconchangToRead()">
                           </li>
                           <li style="display: none;" id="userId" value="${principal.usersId}"></li>
                        </c:otherwise>
                     </c:choose>
                  </ul>
               </div>
            </div>
            <!-- The Modal -->
            <div class="modal animate" id="myModal">
               <div class="modal-dialog modal-dialog-scrollable">
                  <div class="modal-content">

                     <!-- Modal Header -->
                     <div class="modal-header">
                        <h4 class="modal-title">내게 온 알람</h4>
                     </div>

                     <!-- Modal body -->
                     <div class="modal-body">
                        <h3>내게 온 알림이 없습니다.</h3>
                     </div>

                     <!-- Modal footer -->
                     <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                     </div>

                  </div>
               </div>
            </div>
         </nav>
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