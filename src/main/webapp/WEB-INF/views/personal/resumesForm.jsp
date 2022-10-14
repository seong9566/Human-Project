<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="userinfoId" type="text" value="${principal.userinfo.personalId}">

	<div id="main">
		<br /> <input id="resumesTitle" type="text" class="form-control"
			placeholder="이력서 제목을 입력해주세요.">
		<div class="tool">
			<div class="left">
				<br />
				<h3>개인정보</h3>
				<div class="left_input">
					<br />
					<div id="usersName">이름 : </div>
					<br />					
				</div>
			</div>			
			
			<div class="right">
				<img id="previewImg" />
			</div>
			<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
			
			<input id="resumesPicture" type="text" class="form-control"
			placeholder="사진 들어가는 자리입니다. "/>
			
		<div class="mb-3">◆경력사항</div>
			<div>
				<label><input type="checkbox" value="oneYearLess">oneYearLess</label><br />
				<label><input type="checkbox" value="twoYearOver">twoYearOver</label><br />
				<label><input type="checkbox" value="threeYearOver">threeYearOver</label><br />
				<label><input type="checkbox" value="fiveYearOver">fiveYearOver</label>
			</div>
			
		<div class="mb-3">◆관심분야</div>
			<div>
				<label><input type="checkbox" value="categoryFrontend">frontend</label><br />
				<label><input type="checkbox" value="categoryBackend">backend</label><br />
				<label><input type="checkbox" value="categoryDevops">devops</label><br />
				<label><input id="etc" type="checkbox" value="etc">etc</label>
			</div>
			
		<div class="mb-3">◆희망근무지역</div>
		<input id="resumesPlace" type="text" class="form-control"
			placeholder="희망근무지역받기"/>	
						
		<div class="mb-3">◆Github 주소 or Blog 주소</div>
			<input id="portfolioSource" type="text" class="form-control"
			placeholder="Github 주소 or Blog 주소 작성해주세요."/>	
			
		<div class="mb-3">◆포트폴리오</div>	
		<input id="portfolioFile" type="text" class="form-control"
			placeholder="포트폴리오 파일 들어가는 자리 - 파일업로드 필요. "/>		
		
		</div>

		<div class="form">
			<h2>자기소개서 작성</h2>
			<input id="resumesIntroduce" type="text" class="form-control"
			placeholder="자기소개를 입력해주세요."/>
		</div>

		<div class="btn-update">
			<button id="btnSave" type="button" class="btn btn-primary">이력서등록하기</button>
		</div>

	</div>
	
<script src="/js/resumes.js"></script>
	
<%@ include file="../layout/footer.jsp"%>