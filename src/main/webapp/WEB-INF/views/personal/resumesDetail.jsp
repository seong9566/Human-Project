<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="resumesId" type="hidden"
	value="${detailResumesDtoPS.resumesId}">

<div class="container">
	<br />
	<div class="tool">
		<div class="left">
			<h3>이력서 제목 : ${detailResumesDtoPS.resumesTitle}</h3>
			<br />
			<h3>개인정보</h3>
			<div class="left_input" style="font-size: 20px">
				<br />
				<div id="usersName">이름 : ${detailResumesDtoPS.personalName}</div>
				<br />
				<div id="phoneNumber">연락처 :
					${detailResumesDtoPS.personalPhoneNumber}</div>
				<br />
				<div id="email">이메일 : ${detailResumesDtoPS.personalEmail}</div>
				<br />
				<div id="education">학력사항 :
					${detailResumesDtoPS.personalEducation}</div>
			</div>
		</div>

		<h3 style="margin: 10px 10px;">관련 경력 사항</h3>
		<div>
			<c:choose>
				<c:when test="${true eq detailResumesDtoPS.oneYearLess}">
					<input id="oneYearLess" type="text" class="form-control"
						placeholder="1년 미만" readonly />
				</c:when>
				<c:when test="${true eq detailResumesDtoPS.twoYearOver}">
		       		<input id="twoYearOver" type="text" class="form-control"
						placeholder="2년 이상" readonly />
		         	</c:when>
				<c:when test="${true eq detailResumesDtoPS.threeYearOver}">
		       		<input id="threeYearOver" type="text" class="form-control"
						placeholder="3년 이상" readonly />
		         	</c:when>
				<c:when test="${true eq detailResumesDtoPS.fiveYearOver}">
		       		<input id="fiveYearOver" type="text" class="form-control"
						placeholder="5년 이상" readonly />
		         	</c:when>
			</c:choose>
		</div>

		<h3 style="margin: 10px 10px;">관심 분야</h3>
		<div>
			<c:choose>
				<c:when test="${true eq detailResumesDtoPS.categoryFrontend}">
					<input id="Frontend" type="text" class="form-control"
						placeholder="프론트엔드" readonly />
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${true eq detailResumesDtoPS.categoryBackend}">
					<input id="Backend" type="text" class="form-control"
						placeholder="백엔드" readonly />
				</c:when>
			</c:choose>
			<c:choose>
				<c:when test="${true eq detailResumesDtoPS.categoryDevops}">
					<input id="devops" type="text" class="form-control"
						placeholder="데브옵스" readonly />
				</c:when>
			</c:choose>
		</div>

		<h3 style="margin: 10px 10px;">희망 근무 지역</h3>
		<input id="resumesPlace" type="text" class="form-control"
			placeholder="${detailResumesDtoPS.resumesPlace}" readonly />

		<h3 style="margin: 10px 10px;">Github 주소 or Blog 주소</h3>

		링크 : <a href="${detailResumesDtoPS.portfolioSource}"
			style="font-size: 20px"> ${detailResumesDtoPS.portfolioSource} </a>

		<h3 style="margin: 10px 10px;">포트폴리오</h3>
		<input id="portfolioFile" type="text" class="form-control"
			placeholder="${detailResumesDtoPS.portfolioFile}" readonly />


		<div class="form">
			<h3 style="margin: 10px 10px;">자기 소개서</h3>
			<br />
			<textarea class="form-control" id="resumesIntroduce" rows="8"
				readonly>${detailResumesDtoPS.resumesIntroduce}</textarea>
		</div>

		<a href="/personal/resumes/update/${detailResumesDtoPS.resumesId}">
			<div class="lineheight"
				style="text-align: center; margin-bottom: 10px; margin-top: 10px">☝
				이력서 수정하러가기 ☝</div>
		</a>
	</div>
</div>
<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>