<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<title>기업 로그인 헤더</title>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
			<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
			<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
			<script src="/webjars/sockjs-client/sockjs.min.js"></script>
			<script src="/webjars/stomp-websocket/stomp.min.js"></script>
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
						<ul class="navbar-nav" style="width:100%">
							<c:choose>
								<c:when test="${empty principal}">
									<li class="nav-item"><a class="nav-link" href="/loginForm">로그인/회원가입</a></li>
								</c:when>
								<c:when test="${principal.companyId != null}">
									<li class="nav-item"><a class="nav-link" href="#">관심 이력서 보기</a></li>
									<li class="nav-item"><a class="nav-link" href="#"> 공고관리</a></li>
									<li class="nav-item"><a class="nav-link" onclick="sendmessage()">기업정보</a></li>
									<li class="nav-item"><a class="nav-link" href="/logout">로그아웃</a></li>
									<li style="position: fixed; color: aliceblue; margin-top: 7px; right: 100px;"
										class="nav-item">${principal.userinfo.companyName}님
										환영합니다.</li>
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a class="nav-link" onclick="sendmessage()">내정보</a></li>
									<li id="myinfo" style="display: none;" value="${principal.userinfo}"></li>
									<li class="nav-item"><a class="nav-link" onclick="disconnect()"
											href="/logout">로그아웃</a></li>
									<li class="nav-item"
										style="position: fixed; color: aliceblue; margin-top: 7px; right: 100px;">
										${principal.userinfo.personalName}님 환영합니다.</li>
								</c:otherwise>
							</c:choose>
						</ul>
					</div>
				</div>
			</nav>
			<script>
				let stompClient = null;
				function sendmessage() {
					let stomp = JSON.parse(sessionStorage["stompClient"]);
					stomp.send("/app/testPersonal", {}, JSON.stringify($("#myinfo").val()));
				}
				function connectpersonal() {
					var socket = new SockJS('/personal_end_point');
					stompClient = Stomp.over(socket);
					stompClient.connect({}, (frame) => {
						console.log('Connected: ' + frame);
						stompClient.subscribe('/topic/testCompany', (test) => {
							console.log(JSON.parse(test));
						});
					});
				}
				async function connectcompany() {
					var socket = new SockJS('/company_end_point');
					stompClient = Stomp.over(socket);
					sessionStorage.setItem("stompClient", JSON.stringify(stompClient));
					stompClient.connect({}, function (frame) {
						alert('Connected: ' + frame);
						stompClient.subscribe('/topic/testPersonal', function (test) {
							console.log(JSON.parse(test));
						});
					});
					//stompClient.send("/app/testPersonal", {}, JSON.stringify($("#myinfo").val()));
				}
				function disconnect() {
					if (sessionStorage.getItem("stompCilent") !== null) {
						sessionStorage.getItem("stompCilent").disconnect();
						sessionStorage.clear();
					}
				}
			</script>