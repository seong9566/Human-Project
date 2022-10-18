<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<h2>채용 공고 제목 : ${jobPostingPS.jobPostingBoardTitle}</h2>
	<form>
		<input id="jobPostingBoardId" type="hidden"
			value="${jobPostingPS.jobPostingBoardId}">
		<div class="mb-3 mt-3"></div>
		<div class="flex">

			<div class="form-group">
				<img src="/image/농심.png" style="width: 200px; height: 200px;">
				<div id="imageContainer"></div>
			</div>

			<div>

				회사 이름 : ${jobPostingPS.companyName}<br /> 이메일 :
				${jobPostingPS.companyEmail}<br />
				<c:choose>
					<c:when test="${true eq jobPostingPS.oneYearLess}">
						지원 가능 자격 : 1년 이하<br />
					</c:when>

					<c:when test="${true eq jobPostingPS.twoYearOver}">
						지원 가능 자격 : 2년 이상<br />
					</c:when>

					<c:when test="${true eq jobPostingPS.threeYearOver}">
						지원 가능 자격 : 3년 이상<br />
					</c:when>

					<c:when test="${true eq jobPostingPS.fiveYearOver}">
						지원 가능 자격 : 5년 이상<br />
					</c:when>
				</c:choose>
				연락처 : ${jobPostingPS.companyPhoneNumber}<br />회사 주소 : 
				${address.roadJibunAddr} ${address.detailAddress}<br /> 모집 분야 : 
				<c:choose>
					<c:when test="${true eq jobPostingPS.categoryFrontend}">
							프론트 엔드<br />
					</c:when>

					<c:when test="${true eq jobPostingPS.categoryBackend}">
							백 엔드<br />
					</c:when>

					<c:when test="${true eq jobPostingPS.categoryDevops}">
							데브옵스<br />
					</c:when>
				</c:choose>

				<c:choose>
					<c:when test="${2000 eq jobPostingPS.jobPostingSalary}">
							최소 연봉 : 2천만원 이상<br />
					</c:when>

					<c:when test="${3000 eq jobPostingPS.jobPostingSalary}">
							최소 연봉 : 3천만원 이상<br />
					</c:when>
					<c:when test="${4000 eq jobPostingPS.jobPostingSalary}">
							최소 연봉 : 4천만원 이상<br />
					</c:when>
					<c:when test="${5000 eq jobPostingPS.jobPostingSalary}">
							최소 연봉 : 5천만원 이상<br />
					</c:when>
				</c:choose>
				<br/> 채용 공고 내용 :
				<textarea class="form-control" id="resumesIntroduce" rows="8"
					readonly>${jobPostingPS.jobPostingBoardContent}</textarea>

			</div>
		</div>
		<div class="btn-update" style="text-align: center">
			<button id="btnUpdateForm" type="button" class="btn btn-primary"
				style="background-color: rgba(0, 195, 98, 255); border: none;">채용
				공고 수정</button>
		</div>
	</form>
</div>
<script>
let jobPostingBoardId = $("#jobPostingBoardId").val();
$("#btnUpdateForm").click(()=>{
	location.href = "/company/jobPostingBoardUpdate/"+jobPostingBoardId;
});
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>