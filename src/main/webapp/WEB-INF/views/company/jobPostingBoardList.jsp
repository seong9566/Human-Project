<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<h2>구인 공고 리스트</h2>

	<c:forEach var="jobPostingBoard" items="${jobPostingBoardList}">
		<div>${jobPostingBoard.jobPostingBoardTitle}</div>
		<div class="container p-5 my-4 border">${jobPostingBoard.jobPostingBoardDeadline}<br />
		</div>
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button type="button" class="btn btn-primary">수정하기</button>
		</div>
	</c:forEach>


	<div class="d-grid gap-2 col-2 mx-auto">
		<button type="button" class="btn btn-primary">
			<a href="/company/jobpostingboard/insert">공고등록하러가기</a>
		</button>
	</div>
</div>
<script src="/js/personalList.js"></script>
<%@ include file="../layout/footer.jsp"%>