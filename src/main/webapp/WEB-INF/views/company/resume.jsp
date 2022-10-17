<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
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
				<div id="학력">${personalInfoPS.personal_education}</div>
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
				<h2>보유 경력</h2>
				<label> <input type="radio" name="contact"
					value="one_year_less" checked /> 1년 미만
				</label> <label> <input type="radio" name="contact"
					value="two_year_over" /> 2년 이상
				</label> <label> <input type="radio" name="contact"
					value="three_year_over" /> 3년 이상
				</label> <label> <input type="radio" name="contact"
					value="five_year_over" /> 5년 이상
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
					placeholder="${detailResumesDtoPS.resumesPlace}" readonly />

				<h2 class="mb-3">Github 주소 or Blog 주소</h2>
				<input id="portfolioSource" type="text" class="form-control"
					placeholder="${detailResumesDtoPS.portfolioSource}" readonly />
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
				<c:choose>
					<c:when test="${ empty principal }">
						<button type="button" class="btn btn-primary">로그인</button>
					</c:when>
					<c:otherwise>
						<c:choose>
							<c:when test="${ empty personalLike}">
								<button id="btnlike" type="button" class="btn btn-primary">좋아요</button>
							</c:when>
							<c:otherwise>
								<button id="btnlike" type="button" class="btn btn-primary">좋아요취소</button>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
				<button id="btnapply" type="button" class="btn btn-primary">연락하기</button>
			</div>
		</div>
	</div>
</div>
<script>
			$(function () {
				$('#btnlike').click(function () {
					if ($(this).html() == '좋아요') {

						$(this).html('좋아요취소');
						insertLike();
						sendmessageToPersonal($("#resumesId").val());
						insertTitle();
					}
					else {

						$(this).html('좋아요');
						deleteLike();
					}
				});
			});

			function insertTitle() {
				let data = {
					name: $("resume_title").val(),
				}
				console.log(data)
				$.ajax("/recommend", {
					type: "POST",
					dataType: "json",
					data: JSON.stringify(data), // http body에 들고갈 요청 데이터
					headers: { // http header에 들고갈 요청 데이터
						"Content-Type": "application/json; charset=utf-8"
					}
				}).done((res) => {
					if (res.code == 1) { // 성공

					} else { // 실패
						alert("이력서등록에 실패했습니다.");
					}
				});
			}



			function deleteLike() {
				let resumesId = $("#resumesId").val();
				$.ajax("/personalLike/" + resumesId + "/likes", {
					type: "DELETE",
					dataType: "json",
					headers: { // http header에 들고갈 요청 데이터
						"Content-Type": "application/json; charset=utf-8"
					}
				}).done((res) => {
					if (res.code == 1) {

					} else {
						alert("좋아요 추가 실패");
						return;
					}
				});
			}
			function insertLike() {
				let resumesId = $("#resumesId").val();
				$.ajax("/personalLike/" + resumesId + "/likes", {
					type: "POST",
					dataType: "json",
					headers: { // http header에 들고갈 요청 데이터
						"Content-Type": "application/json; charset=utf-8"
					}
				}).done((res) => {
					if (res.code == 1) {

					} else {
						alert("좋아요 추가 실패");
						return;
					}
				});
			}
		</script>


<script src="/js/company.js"></script>
<script src="/js/resume.js"></script>
<%@ include file="../layout/footer.jsp"%>