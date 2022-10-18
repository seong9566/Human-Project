<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container" style="text-align: center;">
	<input id="jobPostingBoardId" type="hidden"
		value="${jobPostingPS.jobPostingBoardId}"> <input
		id="companyId" type="hidden" value="${jobPostingPS.companyId}">
	
	<form>
		<div class="mb-3">
			<h1>채용 공고 제목 :</h1>
			<div style="font-size: 20px; border: 1px solid black; padding: 10px">${jobPostingPS.jobPostingBoardTitle}</div>
		</div>

		<br />
		<div class="mb-3" style="text-align: center;">
			<!-- <h5>사진 자리</h5> <input id="companyPicture" type="text" class="form-control" style="width: 300px;"
				placeholder="${jobPostingPS.companyPicture}" readonly> -->

			<div class="mb-3">
				<h5 style="font-weight: bold;">회사 이름</h5>
				<div style="font-size: 20px; border: 1px solid black; padding: 10px">${jobPostingPS.companyName}</div>
			</div>
			<div class="mb-3">
				<h5 style="font-weight: bold;">회사 전화번호</h5>
				<div style="font-size: 20px; border: 1px solid black; padding: 10px">${jobPostingPS.companyPhoneNumber}</div>
				<div class="mb-3">
					<h5 style="font-weight: bold;">회사 이메일</h5>
					<div
						style="font-size: 20px; border: 1px solid black; padding: 10px">${jobPostingPS.companyEmail}</div>
				</div>
				<div class="mb-3">
					<h5 style="font-weight: bold;">회사 주소</h5>
					<div
						style="font-size: 20px; border: 1px solid black; padding: 10px">${address.roadJibunAddr}
						${address.detailAddress}</div>
				</div>
			</div>
		</div>
		<h2>모집조건 및 안내사항</h2>
		<div class="left_input">
							<h5 style="font-weight: bold; margin-top: 30px">최소 경력 사항</h5>
			<p>
				<c:choose>
					<c:when test="${true eq jobPostingPS.oneYearLess}">
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">지원
							가능 자격 : 1년 이하</div>
        		 </c:when>

					<c:when test="${true eq jobPostingPS.twoYearOver}">
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">지원
							가능 자격 : 2년 이상</div>
					</c:when>

					<c:when test="${true eq jobPostingPS.threeYearOver}">
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">지원
							가능 자격 : 3년 이상</div>

					</c:when>

					<c:when test="${true eq jobPostingPS.fiveYearOver}">
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">지원
							가능 자격 : 5년 이상</div>
					</c:when>
				</c:choose>
			</p>
			<div class="mb-3">
			<h5 style="font-weight: bold; margin-top: 30px">모집 분야</h5>
				<p>
					<c:choose>
						<c:when test="${true eq jobPostingPS.categoryFrontend}">
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
							 프론트 엔드 </div>
            		
        		 </c:when>

						<c:when test="${true eq jobPostingPS.categoryBackend}">
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
							 백 엔드 </div>
         </c:when>

						<c:when test="${true eq jobPostingPS.categoryDevops}">
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
							 데브옵스 </div>
         </c:when>
					</c:choose>
				</p>

				<div class="mb-3">
					<h5 style="font-weight: bold; margin-top: 30px">연봉</h5>
					<p>
						<c:choose>
							<c:when test="${2000 eq jobPostingPS.jobPostingSalary}">
							<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
            		 연봉 : 2천만원 이상 </div>
        		 </c:when>

							<c:when test="${3000 eq jobPostingPS.jobPostingSalary}">
       				<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
            		 연봉 : 3천만원 이상 </div> 
         </c:when>
							<c:when test="${4000 eq jobPostingPS.jobPostingSalary}">
       				<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
            		 연봉 : 4천만원 이상 </div>
         </c:when>
							<c:when test="${5000 eq jobPostingPS.jobPostingSalary}">
       				<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
            		 연봉 : 5천만원 이상 </div>
         </c:when>
						</c:choose>
					</p>
					<div class="mb-3">
						<h5 style="font-weight: bold; margin-top: 30px">근무 지역</h5>
						<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
            		 ${jobPostingPS.jobPostingBoardPlace} </div> 
					</div>

					<h5 style="font-weight: bold; margin-top: 30px">채용 공고 내용</h5>
					<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
            		 ${jobPostingPS.jobPostingBoardContent} </div>
					<br />

					<h5 style="font-weight: bold; margin-top: 30px">채용 공고 마감일</h5>
					<div
							style="font-size: 20px; border: 1px solid black; padding: 10px">
            		 ${jobPostingPS.formatDeadLine} </div>
					 <br />
				</div>

				<div class="btn-update" style="text-align: center">
					<button id="btnUpdateForm" type="button" class="btn btn-primary"
						style="background-color: rgba(0, 195, 98, 255); border: none;">채용
						공고 수정</button>
				</div>

			</div>
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