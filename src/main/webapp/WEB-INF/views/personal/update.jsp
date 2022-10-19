<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="h-100">
	<div class="container py-5 h-100">
		<div
			class="row d-flex justify-content-center align-items-center h-100">
			<div class="col-12">
				<div class="card card-registration card-registration-2"
					style="border-radius: 15px;">
					<div class="card-body p-0">
						<div class="row g-0">
							<div class="col-lg-6">
								<div class="p-5">
									<h3 class="fw-normal mb-5" style="color: #4835d4;">개인 회원 정보 수정</h3>
									<div class="row">
										<div class="mb-3 mt-3">
											아이디 <input id="userId" type="text" class="form-control"
												value="${personalUpdateForm.loginId}"
												style="margin-bottom: 20px;">
										</div>

									</div>
									<div class="mb-3">
										비밀번호<input id="password" type="password" class="form-control"
											value="${personalUpdateForm.loginPassword}" style="margin-bottom: 20px;">
									</div>

									<div class="form-check form-check-inline">
										<label> <input type="radio" name="contact"
											value="highschool" checked /> <span>고졸</span>
										</label>
									</div>
									<div class="form-check form-check-inline">
										<label> <input type="radio" name="contact"
											value="2년제 졸업" /> <span>2년제 대학 졸업</span>
										</label>
									</div>
									<div class="form-check form-check-inline">
										<label> <input type="radio" name="contact"
											value="4년제 졸업" /> <span>4년제 대학 졸업</span>
										</label>
									</div>
									<div class="form-check form-check-inline">
										<label> <input type="radio" name="contact"
											value="재학 중" /> <span>대학 재학중</span>
										</label>
									</div>
									<br />
									<div class="mb-3">
										이름 <input id="username" type="text" class="form-control"
											value="${personalUpdateForm.personalName}" style="margin-bottom: 20px;">
									</div>
								</div>
							</div>
							<div class="col-lg-6 bg-indigo text-white">
								<div class="p-5">
									<div class="row">
										<div class="mb-3">
											이메일<input id="email" type="email" class="form-control" value="${personalUpdateForm.personalEmail}"
												placeholder="이메일을 입력해주세요" style="margin-bottom: 20px;">
											<div class="mb-3">주소</div>
											<input id="post" type="text" class="form-control" value="${personalAddress.zoneCode}"
												placeholder="우편번호" readonly onclick="findAddr()"><br />
											<button id="detailAddress" type="button"
												class="btn btn-primary" onclick="findAddr()">우편번호찾기</button>
											<br /> <br> <input id="addr" type="text" value="${personalAddress.roadJibunAddr}"
												class="form-control" placeholder="주소" readonly><br />
											<input class="form-control" id="detail_address" type="text" value="${personalAddress.detailAddress}"
												placeholder="상세주소"><br />
											<div class="mb-3">
												전화번호<input id="phonenumber" type="text" class="form-control"
													placeholder="전화번호를 입력해주세요" style="margin-bottom: 20px;">
											</div>
										</div>

									</div>

									<button id="btnUpdate" type="button" class="btn btn-primary"
										style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px; margin-bottom: 20px;">수정완료</button>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script src="/js/update.js"></script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../layout/footer.jsp"%>