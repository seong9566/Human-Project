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


<div class="container">
	<br />
	<div class="tool">
		<div class="left">
			<br />
			<h3>개인정보</h3>
			<div class="left_input">
				<div class="mb-3">◆증명사진</div>
				<input type="file" id="file" onchange="setThumbnail(event)" />
				<div id="image_container">
					<img id="oldImg" class="img-thumbnail"
						src="/img/${detailResumesDtoPS.resumesPicture}">
				</div>
				<br /> <input id="usersName" type="text" class="form-control"
					style="width: 300px"
					placeholder="${detailResumesDtoPS.personalName}" readonly>
				<br /> <input id="phoneNumber" type="text" class="form-control"
					style="width: 300px"
					placeholder="${detailResumesDtoPS.personalPhoneNumber}" readonly>
				<br /> <input id="email" type="text" class="form-control"
					style="width: 300px"
					placeholder="${detailResumesDtoPS.personalEmail}" readonly>
				<br /> <input id="education" type="text" class="form-control"
					style="width: 300px"
					placeholder="${detailResumesDtoPS.personalEducation}" readonly>
			</div>
		</div>

		<div class="mb-3">◆증명사진</div>
		<div class="right">
			<img id="previewImg" />
		</div>
		<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />

		<input id="resumesPicture"
			value="${detailResumesDtoPS.resumesPicture}" type="text"
			class="form-control" placeholder="사진 자리입니다." />

		<div class="mb-3">◆경력사항</div>
		<div>
			<tr>
				<td><label for="first"><input type="radio" name="year"
						value="oneYearLess" onclick="clickCheck(this)">oneYearLess</label><br />
					<label for="second"><input type="radio" name="year"
						value="twoYearOver" onclick="clickCheck(this)">twoYearOver</label><br />
					<label for="third"><input type="radio" name="year"
						value="threeYearOver" onclick="clickCheck(this)">threeYearOver</label><br />
					<label for="fourth"><input type="radio" name="year"
						value="fiveYearOver" onclick="clickCheck(this)">fiveYearOver</label><br />
				</td>
			</tr>
		</div>

		<div class="mb-3">◆관심분야</div>
		<div>
			<tr>
				<td><label><input type="checkbox" name="interest"
						value="categoryFrontend">frontend</label><br /> <label><input
						type="checkbox" name="interest" value="categoryBackend">backend</label><br />
					<label><input type="checkbox" name="interest"
						value="categoryDevops">devops</label><br /> <label><input
						id="etc" type="checkbox" name="interest" value="etc">etc</label></td>
			</tr>
		</div>

		<div class="mb-3">◆희망근무지역</div>
		<input id="resumesPlace" value="${detailResumesDtoPS.resumesPlace}"
			type="text" class="form-control" />

		<div class="mb-3">◆Github 주소 or Blog 주소</div>
		<input id="portfolioSource"
			value="${detailResumesDtoPS.portfolioSource}" type="text"
			class="form-control" />

		<div class="mb-3">◆포트폴리오</div>
		<input id="portfolioFile" value="${detailResumesDtoPS.portfolioFile}"
			type="text" class="form-control" />
	</div>
	<br />
	<div class="form-group">
		<label for="exampleFormControlTextarea1">자기소개서 작성</label> <input
			id="resumesTitle" type="text" class="form-control"
			placeholder="이력서 제목을 입력해주세요."
			value="${detailResumesDtoPS.resumesTitle}">
		<textarea class="form-control" id="resumesIntroduce" rows="8">${detailResumesDtoPS.resumesIntroduce}</textarea>
	</div>

	<div class="btn-update" style="text-align: center">
		<button id="btnUpdate" type="button" class="btn btn-primary"
			style="background-color: rgba(0, 195, 98, 255); border: none;">이력서수정완료</button>
	</div>
</div>

<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>