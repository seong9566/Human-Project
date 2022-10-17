
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="userinfoId" type="hidden"
	value="${principal.userinfo.personalId}">

<div id="main">
	<br /> <input id="resumesTitle" type="text" class="form-control"
		placeholder="이력서 제목을 입력해주세요.">
	<div class="tool">
		<div class="left">
			<br />
			<h3>개인정보</h3>
			<div class="left_input">
				<div id="usersName">${principal.userinfo.personalName}</div>
				<br />
				<div id="phoneNumber">${personalInfoPS.personalPhoneNumber}</div>
				<br />
				<div id="email">${personalInfoPS.personalEmail}</div>
				<br />
				<div id="address">${personalInfoPS.personalAddress}</div>
				<br />
				<div id="학력">${personalInfoPS.personalEducation}</div>
				<div class="right">
					<div class="background">
						<div class="window">
							<div class="popup">
								<div>
									<img id="previewImg" />
								</div>
								<button id="close">팝업닫기</button>
							</div>
						</div>
					</div>
					<input id="show" type="button" value="증명사진 미리보기" /> <input
						type="file" id="fileUpload" class="Uploadbtn" accept='image/*'
						style="margin-left: 0;" />
				</div>
			</div>
		</div>
		<br /> <br /> <br />
		<div id="underplace">
			<div>
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
				<input id="resumesPlace" value="${detailResumesDtoPS.resumesPlace}"
					type="text" class="form-control" />

				<div class="mb-3">◆Github 주소 or Blog 주소</div>
				<input id="portfolioSource"
					value="${detailResumesDtoPS.portfolioSource}" type="text"
					class="form-control" />

				<div class="mb-3">◆포트폴리오</div>
				<input id="portfolioFile"
					value="${detailResumesDtoPS.portfolioFile}" type="text"
					class="form-control" />
			</div>
			<br />
			<div class="form">
				<h2>자기소개서 작성</h2>
				<input id="resumes_title" type="text" class="resume_title"
					placeholder="이력서 제목을 입력해주세요." /><br />
				<div id="resumes_introduce"></div>
			</div>
			<div class="btn-update">
				<button id="btnUpdate" type="button" class="btn btn-primary">이력서수정완료</button>
			</div>
		</div>
	</div>
</div>
<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>