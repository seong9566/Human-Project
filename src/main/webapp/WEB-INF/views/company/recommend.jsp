<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<h2>관심이력서</h2>
	<c:forEach var="personalLike" items="${personalLikeList}">



		<div class="container p-5 my-4 border">
			<a href="/personal/resumes/${personalLike.resumesId}">${personalLike.resumesTitle}
			</a>
		</div>

		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button onclick="deleteById(${personalLike.resumesId});"
				type="button" class="btn btn-primary">관심 목록 제거</button>
		</div>
	</c:forEach>
</div>
<script src="/js/recommend.js"></script>
<%@ include file="../layout/footer.jsp"%>