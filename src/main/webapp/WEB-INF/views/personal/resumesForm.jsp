<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="userinfoId" type="hidden"
	value="${principal.userinfo.personalId}">

<div class="container">
	<br />
	<div class="tool">
		<div class="left">
			<br />
			<h3>개인정보</h3>
			<div class="left_input">
				<img src="/image/농심.png" class="img-thumbnail" alt="..."
					style="float: right;"> <br /> <input id="usersName"
					type="text" class="form-control" style="width:300px"
					placeholder="${personalInfoPS.personalName}" readonly> <br />
				<input id="phoneNumber" type="text" class="form-control" style="width:300px"
					placeholder="${personalInfoPS.personalPhoneNumber}" readonly>
				<br /> <input id="email" type="text" class="form-control" style="width:300px"
					placeholder="${personalInfoPS.personalEmail}" readonly> <br />
				<input id="address" type="text" class="form-control" style="width:600px"
					placeholder="${personalInfoPS.personalAddress}" readonly> <br />
				<input id="education" type="text" class="form-control" style="width:300px"
					placeholder="${personalInfoPS.personalEducation}" readonly>
			</div>
		</div>
		<h5>경력사항</h5>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio1" value="oneYearLess">
			<label class="form-check-label" for="inlineRadio1">oneYearLess</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio2" value="twoYearOver">
			<label class="form-check-label" for="inlineRadio2">twoYearOver</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio3" value="threeYearOver">
			<label class="form-check-label" for="inlineRadio3">threeYearOver
			</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio3" value="fiveYearOver">
			<label class="form-check-label" for="inlineRadio3">fiveYearOver
			</label>
		</div>
		<div>
		<h5>관심분야</h5>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox1"
				value="categoryFrontend"> <label class="form-check-label"
				for="inlineCheckbox1">frontend</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2"
				value="categoryBackend"> <label class="form-check-label"
				for="inlineCheckbox2">backend</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox3"
				value="categoryDevops"> <label class="form-check-label"
				for="inlineCheckbox3">devops</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox3"
				value="etc"> <label class="form-check-label"
				for="inlineCheckbox3">etc</label>
		</div>
		<h5>희망근무지역</h5>
		<input id="resumesPlace" type="text" class="form-control" style="width:500px"
			placeholder="희망근무지역을 작성해주세요(ex. 서울, 경기, 부산 등)" />
		<h5>Github 주소 or Blog 주소</h5>
		<input id="portfolioSource" type="text" class="form-control"
			placeholder="Github 주소 or Blog 주소 작성해주세요." />
		<h5>포트폴리오</h5>
		<input id="portfolioFile" type="text" class="form-control"
			placeholder="포트폴리오 파일 들어가는 자리 - 파일업로드 필요. " />
			</div>
	</div>
	<div class="form-group">
		<label for="exampleFormControlTextarea1">자기소개서 작성</label> <input
			id="resumesTitle" type="text" class="form-control"
			placeholder="이력서 제목을 입력해주세요.">
		<textarea class="form-control" id="resumesIntroduce" rows="8"></textarea>
	</div>
	<div class="btn-update" style="text-align: center;">
		<br>
		<button id="btnSave" type="button" class="btn btn-primary" style="background-color: rgba(0, 195, 98, 255); border:none;">이력서등록하기</button>
	</div>

</div>

<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>