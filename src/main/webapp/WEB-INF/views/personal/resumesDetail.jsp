<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="resumesId" type="hidden" value="${detailResumesDtoPS.resumesId}">

	<div id="main">
		<br />
		<div class="tool">
			<div class="left">
				<h3>${detailResumesDtoPS.resumesTitle}</h3>
				<br />
				<h3>개인정보 </h3>
				<div class="left_input">
					<br />
					<div id="userName">${detailResumesDtoPS.personalName}</div>
					<br />
					<div id="phonenumber">${detailResumesDtoPS.personalPhoneNumber}</div>
					<br />
					<div id="email">${detailResumesDtoPS.personalEmail}</div>
				</div>
			</div>
			<div class="right">
				<img id="previewImg" />
				<div>사진자리!</div>
				<br />
				<br />
				<br />
			</div>
		</div>

		<div class="form">
			<h2>자기소개서 작성</h2>
			<div>${detailResumesDtoPS.resumesIntroduce}</div>
		</div>

		<div class="btn-update">
			<button id="btnUpdate" type="button" class="btn btn-primary">수정하러가기</button>
		</div>

	</div>
	
<script src="/js/resumes.js"></script>	

<%@ include file="../layout/footer.jsp"%>