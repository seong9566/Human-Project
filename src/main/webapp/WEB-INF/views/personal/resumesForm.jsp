<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="userinfoId" type="hidden"
	value="${principal.userinfo.personalId}">
<section class="h-100">
	<div class="container py-5 h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12">
				<div class="card card-registration card-registration-2"
					style="border-radius: 15px;">
					<div class="card-body p-0">
						<div class="row g-0" style="margin-left: 30px;">
							<div class="col-lg-6">
								<div class="p-5">
									<h3 class="fw-normal mb-5" style="color: #4835d4;">이력서 작성
										페이지</h3>
									<div class="left_input">
										<p style="font-size: 15px;">이름</p>
										<input id="usersName" type="text" class="form-control"
											style="width: 300px"
											placeholder="${personalInfoPS.personalName}" readonly>
										<br />
										<p style="font-size: 15px;">번호</p>
										<input id="phoneNumber" type="text" class="form-control"
											style="width: 300px"
											placeholder="${personalInfoPS.personalPhoneNumber}" readonly>
										<br />
										<p style="font-size: 15px;">이메일</p>
										<input id="email" type="text" class="form-control"
											style="width: 300px"
											placeholder="${personalInfoPS.personalEmail}" readonly>
										<p style="font-size: 15px;">학력</p>
										<input id="education" type="text" class="form-control"
											style="width: 300px"
											placeholder="${personalInfoPS.personalEducation}" readonly>
										<div>
											<p style="font-size: 15px; margin-top: 10px">사진입력</p>
											<div class="form-group">
												<div id="imageContainer"></div>
												<input type="file" id="file" accept="image/*"
													onchange="setThumbnail(event)">
											</div>
										</div>

									</div>
								</div>
							</div>
							<div class="col-lg-6 bg-indigo text-white">
								<div class="p-5">
									<div class="row">
										<div class="mb-3">
											<p style="font-size: 20px; margin-top: 20px">경력 사항</p>
											<div class="form-check d-flex">
												<div>
													<tr>
														<td>
															<div class="form-check d-flex">
																<div class="form-check">
																	<label for="first"><input type="radio"
																		name="year" value="oneYearLess"
																		onclick="clickCheck(this)">1년이하</label>
																</div>
																<div class="form-check">
																	<label for="second"><input type="radio"
																		name="year" value="twoYearOver"
																		onclick="clickCheck(this)">2년이상</label>
																</div>
																<div class="form-check">
																	<label for="third"><input type="radio"
																		name="year" value="threeYearOver"
																		onclick="clickCheck(this)">3년이상</label>
																</div>
																<div class="form-check">
																	<label for="fourth"><input type="radio"
																		name="year" value="fiveYearOver"
																		onclick="clickCheck(this)">5년이상</label>
																</div>
															</div>
														</td>
													</tr>
												</div>
											</div>

											<div class="mb-3">
												<p style="font-size: 20px; margin-top: 20px">관심 분야</p>
												<div>
													<tr>
														<td><label><input type="checkbox"
																name="interest" value="categoryFrontend">frontend</label>
															<label><input type="checkbox" name="interest"
																value="categoryBackend">backend</label> <label><input
																type="checkbox" name="interest" value="categoryDevops">devops</label>
															<label><input id="etc" type="checkbox"
																name="interest" value="etc">etc</label></td>
													</tr>
												</div>
											</div>

											<div class="mb-3">
												<br />
												<p style="font-size: 20px; margin-top: 10px">희망근무지역</p>
												<input id="resumesPlace" type="text" class="form-control"
													placeholder="희망근무지역을 작성해주세요(ex. 서울, 경기, 부산 등)" />


												<p style="font-size: 20px; margin-top: 10px">Github 주소
													or Blog 주소</p>
												<input id="portfolioSource" type="text" class="form-control"
													placeholder="Github 주소 or Blog 주소 작성해주세요." />

												<p style="font-size: 20px; margin-top: 10px">포트폴리오</p>
												<input id="portfolioFile" type="text" class="form-control"
													placeholder="포트폴리오 파일 들어가는 자리 - 파일업로드 필요. " />
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>


					</div>

				</div>
				<div class="form-group" style="justify-content: center;">
					<p style="font-size: 20px; margin-top: 20px; margin-left: 120px">채용공고
						내용</p>
					<input id="resumesTitle" type="text" class="form-control"
						placeholder="이력서 제목을 입력해주세요."
						style="width: 950px; margin-left: 100px">
					<textarea class="form-control" id="resumesIntroduce" rows="8"
						style="margin-bottom: 10px; width: 950px; margin-left: 100px"></textarea>
				</div>
				<button id="btnSave" type="button" class="btn btn-primary"
					style="background-color: rgba(0, 195, 98, 255); border: none; margin: 20px 20px 30px 950px; margin-bottom: 20px;">작성완료</button>

			</div>
		</div>
	</div>
</section>


<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>