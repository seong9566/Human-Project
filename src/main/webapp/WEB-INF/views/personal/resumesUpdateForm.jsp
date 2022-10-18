<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="resumesId" type="hidden"
	value="${detailResumesDtoPS.resumesId}">
<input id="resumesCategoryId" type="hidden"
	value="${detailResumesDtoPS.resumesCategoryId}">
<input id="careerId" type="hidden"
	value="${detailResumesDtoPS.careerId}">
<input id="portfolioId" type="hidden"
	value="${detailResumesDtoPS.portfolioId}">

<div id="main">
	<br /> 
	<input id="resumesTitle" type="text" class="form-control" value="${detailResumesDtoPS.resumesTitle}">
	<div class="tool">
		<div class="left">
			<br /> <br />
				<h3>개인정보 </h3>
				<div class="left_input">
					<br />
					<div id="usersName">${detailResumesDtoPS.personalName}</div>
					<br />
					<div id="phoneNumber">${detailResumesDtoPS.personalPhoneNumber}</div>
					<br />
					<div id="email">${detailResumesDtoPS.personalEmail}</div>
					<br />
					<div id="education">${detailResumesDtoPS.personalEducation}</div>
				</div>
			</div>

			<div class="mb-3">◆증명사진</div>
			<div class="right">
				<img id="previewImg" />
			</div>
			<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />

			<input id="resumesPicture" value="${detailResumesDtoPS.resumesPicture}" type="text" class="form-control" placeholder="사진 자리입니다."/>
	
	<div class="mb-3">◆경력사항</div>
			<div>
				<label for="first"><input type="radio" value="oneYearLess" onclick="clickCheck(this)">oneYearLess</label><br />			
				<label for="second"><input type="radio" value="twoYearOver" onclick="clickCheck(this)">twoYearOver</label><br />
				<label for="third"><input type="radio" value="threeYearOver" onclick="clickCheck(this)">threeYearOver</label><br />
				<label for="fourth"><input type="radio" value="fiveYearOver" onclick="clickCheck(this)">fiveYearOver</label>
			</div>
						
		<div class="mb-3">◆관심분야</div>
			<div>
				<label><input type="checkbox" value="categoryFrontend" >frontend</label><br />
				<label><input type="checkbox" value="categoryBackend" >backend</label><br />
				<label><input type="checkbox" value="categoryDevops" >devops</label><br />
				<label><input id="etc" type="checkbox" value="etc" >etc</label>
			</div>
			
		<div class="mb-3">◆희망근무지역</div>
		<input id="resumesPlace" value="${detailResumesDtoPS.resumesPlace}" type="text" class="form-control" />	
						
		<div class="mb-3">◆Github 주소 or Blog 주소</div>
			<input id="portfolioSource" value="${detailResumesDtoPS.portfolioSource}" type="text" class="form-control" />	
			
		<div class="mb-3">◆포트폴리오</div>	
		<input id="portfolioFile" value="${detailResumesDtoPS.portfolioFile}"type="text" class="form-control" />			
		</div>
	
	<br /> <br />
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