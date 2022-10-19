<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div>
	<input id="jobPostingBoardId" type="hidden" value="${jobPostingPS.jobPostingBoardId}">
	 <input
		id="companyId" type="hidden" value="${jobPostingPS.companyId}">
	<h2>구인 공고 상세 보기</h2>
	<form>
		<div class="mb-3">
			◆채용 공고 제목 <input id="jobPostingBoardTitle" type="text" class="form-control"
				placeholder="${jobPostingPS.jobPostingBoardTitle}" readonly>
		</div>

		<h3>회사 정보</h3>
		<div class="mb-3">
			◆회사 사진 
		<div class="form-group">
            <img src="/img/${jobPostingPS.companyPicture}" style="width: 400px; height: 156px;">
            <div id="imageContainer"></div>
         </div>
         
			<div class="mb-3">
				◆회사 이름 <input id="companyName" type="text" class="form-control"
					placeholder="${jobPostingPS.companyName}" readonly>
			</div>
			<div class="mb-3">
				◆회사 전화번호 <input id="companyPhoneNumber" type="text" class="form-control"
					placeholder="${jobPostingPS.companyPhoneNumber}" readonly>
			</div>
			<div class="mb-3">
				◆회사 이메일 <input id="companyEmail" type="text" class="form-control"
					placeholder="${jobPostingPS.companyEmail}" readonly>
			</div>
			<div class="mb-3">
				◆회사 주소 <input id="roadJibunAddr" type="text" class="form-control"
					placeholder="${address.roadJibunAddr}" readonly> <input id="detailAddress" type="text"
					class="form-control" placeholder="${address.detailAddress}" readonly>
			</div>
		</div>
	</form>
</div>
<h2>모집조건 및 안내사항</h2>
<div class="left_input">
	<div class="mb-3" style="margin-top: 30px">◆최소 경력 사항</div>
	<p>
		<c:choose>
			<c:when test="${true eq jobPostingPS.oneYearLess}">
            		지원 가능 자격  : 1년 이하 
        		 </c:when>

			<c:when test="${true eq jobPostingPS.twoYearOver}">
       				 지원 가능 자격  : 2년 이상 
         </c:when>

			<c:when test="${true eq jobPostingPS.threeYearOver}">
       		지원 가능 자격  : 3년 이상 
         </c:when>

			<c:when test="${true eq jobPostingPS.fiveYearOver}">
       			지원 가능 자격  : 5년 이상
         </c:when>
		</c:choose>
	</p>
	<div class="mb-3">
	<div class="mb-3" style="margin-top: 30px">◆모집 분야</div>
	<p>
		<c:choose>
			<c:when test="${true eq jobPostingPS.categoryFrontend}">
            		 모집 분야 : 프론트 엔드 
        		 </c:when>

			<c:when test="${true eq jobPostingPS.categoryBackend}">
       				 모집 분야 : 백엔드
         </c:when>

			<c:when test="${true eq jobPostingPS.categoryDevops}">
       			모집 분야 : 데브옵스
         </c:when>
		</c:choose>
	</p>

	<div class="mb-3">
		<h3 class="card-title">연봉</h3>
	<p>
		<c:choose>
			<c:when test="${2000 eq jobPostingPS.jobPostingSalary}">
            		 연봉 : 2천만원 이상 
        		 </c:when>

			<c:when test="${3000 eq jobPostingPS.jobPostingSalary}">
       				연봉 : 3천만원 이상 
         </c:when>
			<c:when test="${4000 eq jobPostingPS.jobPostingSalary}">
       				연봉 : 4천만원 이상 
         </c:when>
         <c:when test="${5000 eq jobPostingPS.jobPostingSalary}">
       				연봉 : 5천만원 이상 
         </c:when>
		</c:choose>
	</p>
			<div class="mb-3">
				◆근무지 
				<input id="jobPostingBoardPlace" type="text" class="form-control" placeholder="${jobPostingPS.jobPostingBoardPlace}" readonly> 
			</div>

			<div class="mb-3">◆채용공고 내용</div>
			<input id="jobPostingBoardContent" type="text" class="form-control"
				placeholder="${jobPostingPS.jobPostingBoardContent}"readonly> <br />

			<div class="mb-3">◆채용공고 마감일</div>
			<input id="formatDeadLine" type="text" class="form-control" placeholder="${jobPostingPS.formatDeadLine}" readonly>
			<br />
		</div>

		<div class="btn-update">
			<button id="btnUpdateForm" type="button" class="btn btn-primary">채용 공고 수정</button>
		</div>

	</div>
</div>
<script>
let jobPostingBoardId = $("#jobPostingBoardId").val();
$("#btnUpdateForm").click(()=>{
	location.href = "/company/jobPostingBoardUpdate/"+jobPostingBoardId;
});
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>