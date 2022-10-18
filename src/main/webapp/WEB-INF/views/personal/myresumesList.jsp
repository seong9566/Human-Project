<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">


	<h2>나의 이력서 리스트</h2>

	<c:forEach var="resumes" items="${resumesList}">
		<div id="apply" class="container p-4 my-4 border">
			<a href="/personal/resumes/${resumes.resumesId}">
				<div class="lineheight">${resumes.resumesTitle}</div>
			</a>
			<button id="btnDelete" onclick="deleteById(${resumes.resumesId});" type="button" class="btn btn-primary" style="margin-left:1000px; background-color: red; border: none;">삭제하기</button>
		</div>
	</c:forEach>

</div>

<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>