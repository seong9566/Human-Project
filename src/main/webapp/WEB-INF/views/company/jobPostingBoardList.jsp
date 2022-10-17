<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<h2>구인 공고 리스트</h2>
	<c:forEach var="jobPostingBoard" items="${jobPostingBoardList}">
	<input id="jobPostingBoardId" type="hidden"
	value="${jobPostingBoard.jobPostingBoardId}">
	
		<div class="container p-5 my-4 border">
			<br />
			<p>공고 제목 : ${jobPostingBoard.jobPostingBoardTitle}</p>
			<p>채용 마감일 : ${jobPostingBoard.formatDeadLine}</p>
			<p>
				<c:choose>
					<c:when test="${true eq jobPostingBoard.categoryFrontend}">
            모집 분야 : 프론트 엔드 
         </c:when>
					<c:when test="${true eq jobPostingBoard.categoryBackend}">
       		 모집 분야 : 백엔드 
         </c:when>
					<c:when test="${true eq jobPostingBoard.categoryDevops}">
       		 모집 분야 : 데브옵스  
         </c:when>
				</c:choose>
			</p>
			
			<p>
				<c:choose>
					<c:when test="${true eq jobPostingBoard.oneYearLess}">
            지원 가능 자격  : 1년 이하 
         </c:when>

					<c:when test="${true eq jobPostingBoard.twoYearOver}">
       		 지원 가능 자격  : 2년 이상 
         </c:when>

					<c:when test="${true eq jobPostingBoard.threeYearOver}">
       		지원 가능 자격  : 3년 이상 
         </c:when>

					<c:when test="${true eq jobPostingBoard.fiveYearOver}">
       			지원 가능 자격  : 5년 이상
         </c:when>
				</c:choose>
			</p>
			<div class="d-grid gap-2 d-md-flex justify-content-md-end">
				<button id = "btnUpdateForm" type="button" class="btn btn-primary">수정하기</button>
			</div>

		</div>
	</c:forEach>


	<div class="d-grid gap-2 col-2 mx-auto">
		<button id="btnSaveForm" type="button" class="btn btn-primary">공고등록하러가기</button>
	</div>
</div>
<script>
let jobPostingBoardId = $("#jobPostingBoardId").val();
$("#btnSaveForm").click(()=>{
	location.href = "/company/insertForm";
});
$("#btnUpdateForm").click(()=>{
	location.href = "/company/jobpostingBoardDetail/"+jobPostingBoardId;
});
</script>
<%@ include file="../layout/footer.jsp"%>