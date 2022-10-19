<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<section id="about" class="about">

		<div class="row">
			<div class="col-lg-4" data-aos="fade-right">
				<img style="width: 400px; height: 500px"
				     src:#
					class="img-fluid" alt="">
				<div class="btn-update" style="margin-top: 5px;">
					<c:choose>
						<c:when test="${ empty personalLike }">
							<button id="btnlike" type="button" class="btn btn-primary">좋아요</button>
						</c:when>
						<c:otherwise>
							<button id="btnlike" type="button" class="btn btn-primary">좋아요취소</button>
						</c:otherwise>
					</c:choose>
					<button id="btnapply" type="button" class="btn btn-primary">연락하기</button>
				</div>
			</div>
			<div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
				<h2>이력서</h2>
				<p class="fst-italic">이력서 제목 :
					${detailResumesDtoPS.resumesTitle}</p>
				<div class="row">
					<div class="col-lg-6">
						<ul>
							<li><i class="bi bi-chevron-right"></i> <strong>이름
									:</strong> <span>${detailResumesDtoPS.personalName}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>이메일
									:</strong> <span>${detailResumesDtoPS.personalEmail}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>경력
									:</strong> <span> <c:choose>
										<c:when test="${true eq detailResumesDtoPS.oneYearLess}">
                                                1년 미만
                                            </c:when>
										<c:when test="${true eq detailResumesDtoPS.twoYearOver}">
                                                2년 이상
                                            </c:when>
										<c:when test="${true eq detailResumesDtoPS.threeYearOver}">
                                                3년 이상
                                            </c:when>
										<c:when test="${true eq detailResumesDtoPS.fiveYearOver}">
                                                5년 이상"
                                            </c:when>
									</c:choose>
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>학력:</strong>
								<span>${detailResumesDtoPS.personalEducation}</span></li>
						</ul>
					</div>
					<div class="col-lg-6">
						<ul>
							<li><i class="bi bi-chevron-right"></i> <strong>연락처
									:</strong> <span> ${detailResumesDtoPS.personalPhoneNumber}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>희망
									근무 지역 :</strong> <span>${detailResumesDtoPS.resumesPlace}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>관심분야:</strong>
								<span> <c:choose>
										<c:when test="${true eq detailResumesDtoPS.categoryFrontend}">
                                                경력 : 프론트엔드<br />
										</c:when>
									</c:choose> <c:choose>
										<c:when test="${true eq detailResumesDtoPS.categoryBackend}">
                                                백엔드<br />
										</c:when>
									</c:choose> <c:choose>
										<c:when test="${true eq detailResumesDtoPS.categoryDevops}">
                                                데브옵스<br />
										</c:when>
									</c:choose>
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>링크</strong>
								<span><a href="${detailResumesDtoPS.portfolioSource}"
									style="font-size: 20px">
										${detailResumesDtoPS.portfolioSource} </a> </span></li>
						</ul>
					</div>
				</div>
				<p>
					자기소개문 :
					<textarea class="form-control" id="resumesIntroduce" rows="8"
						readonly>${detailResumesDtoPS.resumesIntroduce}</textarea>
				</p>
			</div>
		</div>
	</section>
</div>

<%@ include file="../layout/footer.jsp"%>
