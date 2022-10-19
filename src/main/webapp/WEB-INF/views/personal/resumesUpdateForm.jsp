<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="resumesId" type="hidden" value="${detailResumesDtoPS.resumesId}">
<input id="resumesCategoryId" type="hidden" value="${detailResumesDtoPS.resumesCategoryId}">
<input id="careerId" type="hidden" value="${detailResumesDtoPS.careerId}">
<input id="portfolioId" type="hidden" value="${detailResumesDtoPS.portfolioId}">
<section class="h-100">
	<div class="container py-5 h-100">
		<div class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12">
				<div class="card card-registration card-registration-2" style="border-radius: 15px;">
					<div class="card-body p-0">
						<div class="row g-0" style="margin-left: 30px;">
							<div class="col-lg-6">
								<div class="p-5">
									<h3 class="fw-normal mb-5" style="color: #4835d4;">이력서 수정</h3>
									<div class="left_input">
										<div class="mb-3">◆증명사진</div>
										<div id="image_container">
											<img id="oldImg" class="img-thumbnail" src="/img/${detailResumesDtoPS.resumesPicture}"
												style="width: 300px;"> <input type="file" id="file" onchange="setThumbnail(event)" />
										</div>
										<p style="font-size: 15px; margin-top:10px">이름</p>
										<input id="usersName" type="text" class="form-control" style="width: 300px"
											placeholder="${detailResumesDtoPS.personalName}" readonly> <br />
										<p style="font-size: 15px;">전화번호</p>
										<input id="phoneNumber" type="text" class="form-control" style="width: 300px"
											placeholder="${detailResumesDtoPS.personalPhoneNumber}" readonly> <br />
										<p style="font-size: 15px;">이메일</p>
										<input id="email" type="text" class="form-control" style="width: 300px"
											placeholder="${detailResumesDtoPS.personalEmail}" readonly> <br />
										<p style="font-size: 15px;">학력</p>
										<input id="education" type="text" class="form-control" style="width: 300px"
											placeholder="${detailResumesDtoPS.personalEducation}" readonly>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-lg-6 bg-indigo text-white">
								<div class="p-5">
									<div class="row">
										<div class="mb-3"
											style="margin-top: 50px; margine-left: 20px;">
											<p style="font-size: 20px; margin-top: 80px">최소 경력 사항</p>
											<div class="form-check d-flex">
												<div class="form-check">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input"
														id=" jobPostingSalary" name=" salary" value="oneYearLess">1년미만<i
														class="input-helper"></i></label>
												</div>
												<div style="margin: 0 10px 0 0;"></div>
												<div class="form-check">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input"
														id=" jobPostingSalary" name=" salary" value="twoYearOver">2년이상
														<i class="input-helper"></i></label>
												</div>
												<div style="margin: 0 10px 0 0;"></div>
												<div class="form-check">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input"
														id=" jobPostingSalary" name=" salary"
														value="threeYearOver">3년이상<i class="input-helper"></i></label>
												</div>
												<div style="margin: 0 10px 0 0;"></div>
												<div class="form-check">
													<label class="form-check-label"> <input
														type="radio" class="form-check-input"
														id=" jobPostingSalary" name=" salary" value="fiveYearOver">5년이상<i
														class="input-helper"></i></label>
												</div>
											</div>

											<div class="mb-3">
												<p style="font-size: 20px; margin-top: 50px">관심 분야</p>
												<div class="form-check form-check-inline"
													style="margin-left: 20px">
													<input class="form-check-input" type="checkbox"
														id="inlineCheckbox1" value="categoryFrontend"> <label
														class="form-check-label" for="inlineCheckbox1">
														frontend</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="checkbox"
														id="inlineCheckbox2" value="categoryBackend"> <label
														class="form-check-label" for="inlineCheckbox2">backend</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="checkbox"
														id="inlineCheckbox3" value="categoryDevops"> <label
														class="form-check-label" for="inlineCheckbox3">devops
													</label>
												</div>
											</div>

											<div class="mb-3">
												<p style="font-size: 20px; margin-top: 50px">연봉</p>
												<div>
													<div class="form-check d-flex">
														<div class="form-check">
															<label class="form-check-label"> <input
																type="radio" class="form-check-input"
																id=" jobPostingSalary" name=" jobPostingSalary"
																value="2000"> 2000만원 이상 <i class="input-helper"></i></label>
														</div>
														<div style="margin: 0 20px 0 0;"></div>
														<div class="form-check">
															<label class="form-check-label"> <input
																type="radio" class="form-check-input"
																id=" jobPostingSalary" name=" jobPostingSalary"
																value="3000"> 3000만원 이상 <i class="input-helper"></i></label>
														</div>
														<div style="margin: 0 20px 0 0;"></div>
														<div class="form-check">
															<label class="form-check-label"> <input
																type="radio" class="form-check-input"
																id=" jobPostingSalary" name=" jobPostingSalary"
																value="4000"> 4000만원 이상 <i class="input-helper"></i></label>
														</div>
														<div style="margin: 0 20px 0 0;"></div>
														<div class="form-check">
															<label class="form-check-label"> <input
																type="radio" class="form-check-input"
																id=" jobPostingSalary" name=" jobPostingSalary"
																value="5000"> 5000만원 이상 <i class="input-helper"></i></label>
														</div>
													</div>

													<br />
													<p style="font-size: 20px; margin-top: 30px">회사 주소</p>
													<input id="post" type="text" placeholder="우편번호" readonly
														onclick="findAddr()">
													<button id="detailAddress" type="button"
														class="btn btn-primary" onclick="findAddr()">우편번호찾기</button>
													<br> <input id="addr" type="text" placeholder="주소"
														style="width: 480px;" readonly>


													<p style="font-size: 20px; margin-top: 70px">채용공고 마감일</p>
													<input id="jobPostingBoardDeadline" type="date"
														class="form-control" placeholder="채용공고 마감일을 작성해 주세요">
													<br />
													<div class="form-group"></div>

												</div>
											</div>
										</div>
									</div>
								</div>

							</div>			
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>

	//////////////////////////////////////////////////////////////////////////////////






	<div class="mb-3">◆증명사진</div>
	<input type="file" id="file" onchange="setThumbnail(event)" />
	<div id="image_container">
		<img id="oldImg" class="img-thumbnail" src="/img/${detailResumesDtoPS.resumesPicture}"
			style="width: 300px;">
	</div>
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
						<img id="oldImg" class="img-thumbnail" src="/img/${detailResumesDtoPS.resumesPicture}"
							style="width: 300px;">
					</div>
					<br /> <input id="usersName" type="text" class="form-control" style="width: 300px"
						placeholder="${detailResumesDtoPS.personalName}" readonly> <br /> <input
						id="phoneNumber" type="text" class="form-control" style="width: 300px"
						placeholder="${detailResumesDtoPS.personalPhoneNumber}" readonly> <br /> <input
						id="email" type="text" class="form-control" style="width: 300px"
						placeholder="${detailResumesDtoPS.personalEmail}" readonly> <br /> <input
						id="education" type="text" class="form-control" style="width: 300px"
						placeholder="${detailResumesDtoPS.personalEducation}" readonly>
				</div>
			</div>

			<div class="mb-3">◆증명사진</div>
			<div class="right">
				<img id="previewImg" />
			</div>
			<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br /> <input
				id="resumesPicture" value="${detailResumesDtoPS.resumesPicture}" type="text"
				class="form-control" placeholder="사진 자리입니다." />

			<div class="mb-3">◆경력사항</div>
			<div>
				<tr>
					<td><label for="first"><input type="radio" name="year" value="oneYearLess"
							onclick="clickCheck(this)">oneYearLess</label><br /> <label for="second"><input
							type="radio" name="year" value="twoYearOver" onclick="clickCheck(this)">twoYearOver</label><br />
						<label for="third"><input type="radio" name="year" value="threeYearOver"
							onclick="clickCheck(this)">threeYearOver</label><br /> <label for="fourth"><input
							type="radio" name="year" value="fiveYearOver" onclick="clickCheck(this)">fiveYearOver</label><br />
					</td>
				</tr>
			</div>

			<div class="mb-3">◆관심분야</div>
			<div>
				<tr>
					<td><label><input type="checkbox" name="interest" value="categoryFrontend">frontend</label><br />
						<label><input type="checkbox" name="interest" value="categoryBackend">backend</label><br />
						<label><input type="checkbox" name="interest" value="categoryDevops">devops</label><br />
						<label><input id="etc" type="checkbox" name="interest" value="etc">etc</label></td>
				</tr>
			</div>

			<div class="mb-3">◆희망근무지역</div>
			<input id="resumesPlace" value="${detailResumesDtoPS.resumesPlace}" type="text"
				class="form-control" />

			<div class="mb-3">◆Github 주소 or Blog 주소</div>
			<input id="portfolioSource" value="${detailResumesDtoPS.portfolioSource}" type="text"
				class="form-control" />

			<div class="mb-3">◆포트폴리오</div>
			<input id="portfolioFile" value="${detailResumesDtoPS.portfolioFile}" type="text"
				class="form-control" />
		</div>
		<br />
		<div class="form-group">
			<label for="exampleFormControlTextarea1">자기소개서 작성</label> <input id="resumesTitle" type="text"
				class="form-control" placeholder="이력서 제목을 입력해주세요." value="${detailResumesDtoPS.resumesTitle}">
			<textarea class="form-control" id="resumesIntroduce" rows="8">${detailResumesDtoPS.resumesIntroduce}</textarea>
		</div>

		<div class="btn-update" style="text-align: center">
			<button id="btnUpdate" type="button" class="btn btn-primary"
				style="background-color: rgba(0, 195, 98, 255); border: none;">이력서수정완료</button>
		</div>
	</div>

	<script src="/js/resumes.js"></script>

	<%@ include file="../layout/footer.jsp"%>