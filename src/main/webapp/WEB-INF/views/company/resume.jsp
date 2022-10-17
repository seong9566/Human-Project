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
			placeholder="사진 들어가는 자리입니다." readonly/>
			
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
		<input id="resumesPlace" type="text" class="form-control" placeholder="${detailResumesDtoPS.resumesPlace}" readonly/>	
						
		<div class="mb-3">◆Github 주소 or Blog 주소</div>
			<input id="portfolioSource" type="text" class="form-control" placeholder="${detailResumesDtoPS.portfolioSource}" readonly/>	
			
		<div class="mb-3">◆포트폴리오</div>	
		<input id="portfolioFile" type="text" class="form-control" placeholder="${detailResumesDtoPS.portfolioFile}" readonly/>			
		</div>
			
		<div class="form">
			<h2>자기소개서 작성</h2>
			<div>${detailResumesDtoPS.resumesIntroduce}</div>
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