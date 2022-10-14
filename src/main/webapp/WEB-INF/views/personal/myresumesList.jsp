<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<h2>나의 이력서 리스트</h2>

	<div class="container p-5 my-4 border">이력서 제목</div>
	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<button type="button" class="btn btn-primary">삭제하기</button>
	</div>

	<c:forEach var="resumes" items="${resumesList}">
		<div id="apply" class="container p-4 my-4 border">
			<a href="/personal/resumes/${resumes.resumesId}">
				<div class="lineheight">${resumes.resumesTitle}</div>
			</a>
			<button type="button" class="btn btn-primary">삭제하기</button>
		</div>
	</c:forEach>

	<c:forEach var="resumes" items="${resumesList}">
		<c:choose>
			<c:when test="${resumes.resumesTitle == null }">
			   작성한 이력서가 없습니다. <br />이력서를 작성해주세요 !
			</c:when>			
			<c:otherwise>
				<div id="myresumes" class="container p-4 my-4 border">
					<a href="/personal/resumes/${resumes.resumesId}">
						<div class="lineheight">${resumes.resumesTitle}</div>
					</a>
					<button type="button" class="btn btn-primary">삭제하기</button>
				</div>
			</c:otherwise>
		</c:choose>
	</c:forEach>

</div>

<%@ include file="../layout/footer.jsp"%>