<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="resumesId" type="hidden"
	value="${detailResumesDtoPS.resumesId}">

<div id="main">
	<br /> 
	<input id="resumesTitle" type="text" class="form-control"
		placeholder="수정할 이력서 제목을 입력해주세요." value="${detailResumesDtoPS.resumesTitle}">
	<div class="tool">
		<div class="left">
			<br /> <br />
			<h3>개인정보</h3>
			<div class="left_input">
				<br />
				<div id="userName">${detailResumesDtoPS.personalName}</div>
				<br />
				<div id="phoneNumber">${detailResumesDtoPS.personalPhoneNumber}</div>
				<br />
				<div id="email">${detailResumesDtoPS.personalEmail}</div>

			</div>
		</div>
		<div class="right">
			<img id="previewImg" /> 
			<input id="resumesPicture" type="text"
				class="form-control" placeholder="수정할 사진 칸이랍니다" value="${detailResumesDtoPS.resumesPicture}"/>
		</div>
	</div>
	<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
	<div class="form">
		<h2>자기소개서 작성</h2>
		<input id="resumesIntroduce" type="text" class="form-control"
			placeholder="수정할 자기소개를 입력해주세요." value="${detailResumesDtoPS.resumesIntroduce}"/>
	</div>

	<div class="btn-update">
		<button id="btnUpdate" type="button" class="btn btn-primary">이력서수정완료</button>
	</div>

</div>

<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>