<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="resumesId" type="hidden"
	value="${detailResumesDtoPS.resumesId}">

<div id="main">
	<br />
	<div class="tool">
		<div class="left">
			<h3>${detailResumesDtoPS.resumesTitle}</h3>
			<br />
			<h3>개인정보</h3>
			<div class="left_input">
				<br />
				<div id="usersName">${detailResumesDtoPS.personalName}</div>
				<br />
				<div id="phoneNumber">${detailResumesDtoPS.personalPhoneNumber}</div>
				<br />
				<div id="email">${detailResumesDtoPS.personalEmail}</div>
				<br />
				<div id="education">${detailResumesDtoPS.personalEducation}</div>
			</div>
		</div>

		<div class="mb-3">◆증명사진</div>
		<div class="right">
			<img src = "/img/${detailResumesDtoPS.resumesPicture }" style = "width:200px">
		</div>
	

		<div class="mb-3">◆ 관련 경력 사항</div>
		<div>
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
		       		5년 이상
		         	</c:when>
			</c:choose>
		</div>

		<div class="mb-3">◆ 관심 분야</div>
		<div>
			<c:choose>
				<c:when test="${true eq detailResumesDtoPS.categoryFrontend}">
		            - 프론트엔드
		        </c:when>
		    </c:choose>
		    <c:choose>
				<c:when test="${true eq detailResumesDtoPS.categoryBackend}">
		            - 백엔드
		        </c:when>
		    </c:choose>
		    <c:choose>
				<c:when test="${true eq detailResumesDtoPS.categoryDevops}">
		            - 데브옵스
		        </c:when>
		    </c:choose>
		</div>

		<div class="mb-3">◆희망근무지역</div>
		<input id="resumesPlace" type="text" class="form-control"
			placeholder="${detailResumesDtoPS.resumesPlace}" readonly />

		<div class="mb-3">◆Github 주소 or Blog 주소</div>
		
		<a href="${detailResumesDtoPS.portfolioSource}" >
			- link : ${detailResumesDtoPS.portfolioSource}</div>
		</a>

		<div class="mb-3">◆포트폴리오</div>
		<input id="portfolioFile" type="text" class="form-control"
			placeholder="${detailResumesDtoPS.portfolioFile}" readonly />
	</div>

	<div class="form">
		<h2>자기소개서 작성</h2>
		<div>${detailResumesDtoPS.resumesIntroduce}</div>
	</div>

	<a href="/personal/resumes/update/${detailResumesDtoPS.resumesId}">
		<div class="lineheight">수정하러가기</div>
	</a>

	<script src="/js/resumes.js"></script>

	<%@ include file="../layout/footer.jsp"%>