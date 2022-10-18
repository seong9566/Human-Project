<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div class="container mt-3">
	<h2>이력서 제목 : ${detailResumesDtoPS.resumesTitle}</h2>
	<form>
		<input id="resumesId" type="hidden"
			value="${detailResumesDtoPS.resumesId}">
		<div class="mb-3 mt-3"></div>
		<div class="flex">

			<div class="form-group">
				<img src="/image/농심.png" style="width: 200px; height: 200px;">
				<div id="imageContainer"></div>
			</div>

			<div>

				이름 : ${detailResumesDtoPS.personalName}<br /> 이메일 :
				${detailResumesDtoPS.personalEmail}<br /> 경력 :
				<c:choose>
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
				<br /> 학력 : ${detailResumesDtoPS.personalEducation}<br />연락처 :
				${detailResumesDtoPS.personalPhoneNumber}<br />희망 근무 지역 :
				${detailResumesDtoPS.resumesPlace}<br /> 관심분야 :
				<c:choose>
					<c:when test="${true eq detailResumesDtoPS.categoryFrontend}">
					프론트엔드<br />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${true eq detailResumesDtoPS.categoryBackend}">
					백엔드<br />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${true eq detailResumesDtoPS.categoryDevops}">
					데브옵스<br />
					</c:when>
				</c:choose>

				링크 : <a href="${detailResumesDtoPS.portfolioSource}"
					style="font-size: 20px"> ${detailResumesDtoPS.portfolioSource}
				</a> </br> 자기소개문 : <textarea class="form-control" id="resumesIntroduce"
							rows="8" readonly>${detailResumesDtoPS.resumesIntroduce}</textarea>

			</div>
		</div>
		<a href="/personal/resumes/update/${detailResumesDtoPS.resumesId}">
			<div class="lineheight"
				style="text-align: center; margin-bottom: 10px; margin-top: 10px">☝
				이력서 수정하러가기 ☝</div>
		</a>
	</form>
</div>

<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>