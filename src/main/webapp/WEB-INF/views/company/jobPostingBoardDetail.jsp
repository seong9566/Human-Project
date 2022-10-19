<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<section id="about" class="about">

		<div class="row">
			<div class="col-lg-4" data-aos="fade-right">
				<img style="width: 100%; height: 100%; max-height: 300px; max-width: 300px;"
					src="data:image/jpeg;base64,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"
					class="img-fluid" alt="">
			</div>
			<div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
				<h2>채용 공고</h2>
				<p class="fst-italic">채용 공고 제목 :
					${jobPostingPS.jobPostingBoardTitle}</p>
				<div class="row">
					<div class="col-lg-6">
						<ul>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									이름 :</strong> <span>${jobPostingPS.companyName}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									전화번호 :</strong> <span>${jobPostingPS.companyPhoneNumber}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									이메일 :</strong> <span> ${jobPostingPS.companyEmail} </span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									주소:</strong> <span>${address.roadJibunAddr}
									${address.detailAddress}</span></li>
						</ul>
					</div>
					<div class="col-lg-6">
						<ul>
							<li><i class="bi bi-chevron-right"></i> <strong>최소
									경력 사항</strong> <span> <c:choose>
										<c:when test="${true eq jobPostingPS.oneYearLess}">
                                                지원 가능 자격 : 1년 이하
                                            </c:when>

										<c:when test="${true eq jobPostingPS.twoYearOver}">
                                                지원 가능 자격 : 2년 이상
                                            </c:when>

										<c:when test="${true eq jobPostingPS.threeYearOver}">
                                                지원 가능 자격 : 3년 이상
                                            </c:when>

										<c:when test="${true eq jobPostingPS.fiveYearOver}">
                                                지원 가능 자격 : 5년 이상
                                            </c:when>
									</c:choose>
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>희망
									근무 지역 :</strong> <span>${detailResumesDtoPS.resumesPlace}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>모집
									분야</strong> <span> <c:choose>
										<c:when test="${true eq jobPostingPS.categoryFrontend}">
                                                프론트 엔드
                                            </c:when>

										<c:when test="${true eq jobPostingPS.categoryBackend}">
                                                백엔드
                                            </c:when>

										<c:when test="${true eq jobPostingPS.categoryDevops}">
                                                데브옵스
                                            </c:when>
									</c:choose>
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>연봉</strong>
								<span> <c:choose>
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
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>근무지</strong>
								<span>${jobPostingPS.jobPostingBoardPlace}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>채용공고
									마감일</strong> <span>${jobPostingPS.formatDeadLine}</span></li>
						</ul>
					</div>
				</div>
				<p>
					채용공고 소개글 :
					<textarea class="form-control" id="resumesIntroduce" rows="8"
						readonly>${jobPostingPS.jobPostingBoardContent}</textarea>
				</p>
			</div>
		</div>

	</section>
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