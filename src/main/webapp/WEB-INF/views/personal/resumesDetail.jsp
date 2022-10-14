<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<div id="main">
		<br />
		<div class="tool">
			<div class="left">
				<h3>${detailResumesDtoPS.resumesTitle}</h3>
				<br />
				<h3>개인정보 </h3>
				<div class="left_input">
					<br />
					<div id="usersName">${detailResumesDtoPS.personalName}</div>
					<br />
					<div id="phoneNumber">${detailResumesDtoPS.personalPhoneNumber}</div>
					<br />
					<div id="email">${detailResumesDtoPS.personalEmail}</div>
					<br />
					<div id="address">${detailResumesDtoPS.personalAddress}</div>
					<br />
					<div id="education">${detailResumesDtoPS.personalEducation}</div>
				</div>
			</div>

			<div class="mb-3">◆증명사진</div>
			<div class="right">
				<img id="previewImg" />
			</div>
			<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
			
			<input id="resumesPicture" type="text" class="form-control"
			placeholder="사진 들어가는 자리입니다. " readonly/>
			
		<div class="mb-3">◆경력사항</div>
			<div>
				<label><input type="checkbox" value="oneYearLess" readonly>oneYearLess</label><br />
				<label><input type="checkbox" value="twoYearOver" readonly>twoYearOver</label><br />
				<label><input type="checkbox" value="threeYearOver" readonly>threeYearOver</label><br />
				<label><input type="checkbox" value="fiveYearOver" readonly>fiveYearOver</label>
			</div>
			
		<div class="mb-3">◆관심분야</div>
			<div>
				<label><input type="checkbox" value="categoryFrontend" readonly>frontend</label><br />
				<label><input type="checkbox" value="categoryBackend" readonly>backend</label><br />
				<label><input type="checkbox" value="categoryDevops" readonly>devops</label><br />
				<label><input id="etc" type="checkbox" value="etc" readonly>etc</label>
			</div>
			
		<div class="mb-3">◆희망근무지역</div>
		<input id="resumesPlace" type="text" class="form-control" readonly/>	
						
		<div class="mb-3">◆Github 주소 or Blog 주소</div>
			<input id="portfolioSource" type="text" class="form-control" readonly/>	
			
		<div class="mb-3">◆포트폴리오</div>	
		<input id="portfolioFile" type="text" class="form-control" readonly/>			
		</div>
			
		<div class="form">
			<h2>자기소개서 작성</h2>
			<div>${detailResumesDtoPS.resumesIntroduce}</div>
		</div>
		
		<a href="/personal/resumes/update/${detailResumesDtoPS.resumesId}">
			<div class="lineheight">수정하러가기</div></a>

	</div>
	
<script src="/js/resumes.js"></script>	

<%@ include file="../layout/footer.jsp"%>