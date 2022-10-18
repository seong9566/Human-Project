<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>좋좋잡</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	rel="stylesheet">
<script src="/webjars/sockjs-client/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<link rel="stylesheet" href="/css/header.css">
<link rel="stylesheet" href="/css/login.css">
<link rel="stylesheet" href="/css/join.css">
<link rel="stylesheet" href="/css/companyInsert.css">
<link rel="stylesheet" href="/css/companyjoin.css">
<link rel="stylesheet" href="/css/main.css">
<link rel="stylesheet" href="/css/recommend.css">
<link rel="stylesheet" href="/css/resume.css">
<link rel="stylesheet" href="/css/info.css">
</head>

<body>
	<div class="container">
		<header>
			<a href="/main"><img src="/image/wwt.jpg" title="회사 로고" /></a>
			<nav>
				<ul class="navbar-nav" style="width: 100%">
					<c:choose>
						<c:when test="${empty principal}">
							<ul>
								<li><a class="nav-link" href="/loginForm" style="color:black;">로그인/회원가입</a></li>
							</ul>
						</c:when>
						<c:when test="${principal.companyId != null}">
							<ul>
								<li class="nav-item"><a class="nav-link"
									href="/companymain" style="color:black;">기업 메인화면</a></li>
								<li><a class="nav-link" href="/recommend" style="color:black;">관심 이력서 보기</a></li>
								<li><a class="nav-link" href="#" style="color:black;"> 공고관리</a></li>
								<li><a class="nav-link" href="/company/inform" style="color:black;">기업정보</a></li>
								<li><a class="nav-link" href="/logout"
									onclick="disconnect()" style="color:black;">로그아웃</a></li>
								<li>${principal.userinfo.companyName}님환영합니다.</li>
								<li class="nav-item fa-regular fa-bell fa-xl nav-link"
									data-bs-toggle="modal" data-bs-target="#myModal" id="alarm"
									onclick="iconchangToRead()">
								<li style="display: none;" id="userId"
									value="${principal.usersId}"></li>
							</ul>
						</c:when>
						<c:otherwise>
							<ul>
								<li><a class="nav-link" href="/personal/info" style="color:black;">내정보</a></li>
								<li><a class="nav-link" href="/personal/resumesForm" style="color:black;">이력서쓰기</a></li>
								<li><a class="nav-link" href="/personal/myresumes" style="color:black;">내이력서보기</a></li>
								<li><a class="nav-link" href="/logout"
									onclick="disconnect()" style="color:black;">로그아웃</a></li>
								<li>${principal.userinfo.personalName}님환영합니다.</li>
								<li class="nav-item fa-regular fa-bell fa-xl nav-link"
									data-bs-toggle="modal" data-bs-target="#myModal" id="alarm"
									onclick="iconchangToRead()">
								<li style="display: none;" id="userId"
									value="${principal.usersId}"></li>
							</ul>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
		</header>
	</div>
	<div class="modalpage">
		<!-- The Modal -->
		<div id="container">
			<div id="lorem-ipsum"></div>
		</div>
		<div id="modal" class="modal-overlay">
			<div class="modal-window">
				<div class="title">
					<h2>내게 온 알람</h2>
					<div class="close-area">X</div>
				</div>

				<div class="content">내게 온 알림이 없습니다.</div>

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