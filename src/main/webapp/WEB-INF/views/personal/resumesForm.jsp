<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="userinfoId" type="hidden"
	value="${principal.userinfo.personalId}">
<div id="main">
	<br />
	<div class="tool">

		<div class="left">
			<br />
			<h3>개인정보</h3>
			<div class="left_input">
				<br />
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
				<h2>경력사항</h2>
				<label> <input type="radio" name="contact"
					value="oneYearLess" checked /> 1년 미만
				</label> <label> <input type="radio" name="contact"
					value="twoYearOver" /> 2년 이상
				</label> <label> <input type="radio" name="contact"
					value="threeYearOver" /> 3년 이상
				</label> <label> <input type="radio" name="contact"
					value="fiveYearOver" /> 5년 이상
				</label>
				<div>
					<h2>희망 직종</h2>
					<label><input type="checkbox" value="categoryFrontend">frontend</label>
					<label><input type="checkbox" value="categoryBackend">backend</label>
					<label><input type="checkbox" value="categoryDevops">devops</label>
					<label><input id="etc" type="checkbox" value="etc">etc</label>
				</div>
				<h2>희망근무지역</h2>
				<input id="resumesPlace" type="text" class="form-control"
					placeholder="희망근무지역을 작성해주세요(ex. 서울, 경기, 부산 등)" />

				<h2 class="mb-3">Github 주소 or Blog 주소</h2>
				<input id="portfolioSource" type="text" class="form-control"
					placeholder="Github 주소 or Blog 주소 작성해주세요." />
			</div>
			<br />
			<div class="form">
				<h2>자기소개서 작성</h2>
				<input id="resumes_title" type="text" class="resume_title"
					placeholder="이력서 제목을 입력해주세요." /><br />
				<div id="resumes_introduce"></div>
				<div>
					<h2>포트폴리오 제출</h2>
					<input type="file" id="attachFile">
					<button id="fileSubmitBtn" type="button">파일저장하기</button>
				</div>
			</div>
			<div class="btn-update">
				<button id="btnSave" type="button" class="btn btn-primary">이력서등록하기</button>
			</div>
		</div>
	</div>
</div>
<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>