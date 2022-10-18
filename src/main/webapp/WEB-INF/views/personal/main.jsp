<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container mt-3" style="border: 3px solid #000000">
	<div class="row row-cols-1 row-cols-md-3 g-4">
		<div id="box1" class="col">
			<div class="card h-100">
				<img src="/image/1.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
				</div>
			</div>
		</div>
		<div id="box2" class="col">
			<div class="card h-100">
				<img src="/image/1.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
				</div>
			</div>
		</div>
		<div id="box3" class="col">
			<div class="card h-100">
				<img src="/image/1.jpg" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="mb-3"></div>
<div class="dropdown"></div>

<div class="d-flex justify-content-end">
	<div style="width: 300px">
		<form class="d-flex" method="get" action="/main">
			<input class="form-control me-2" type="text" placeholder="Search"
				name="keyword">
			<button class="btn btn-primary" type="submit">Search</button>
		</form>
	</div>
</div>

<div class="d-flex justify-content-center">
	<c:choose>		
		<c:when test="${principal.personalId != null}">
		<table class="table table-bordered" style="text-align: center">
				<thead>
					<tr>
						<th>번호</th>
						<th>채용공고 제목</th>
						<th>마감일</th>
					</tr>
				</thead>
				<tbody id="table">
					<c:forEach var="jobPostingBoardList" items="${jobPostingBoardList}">
						<tr>
							<td>${jobPostingBoardList.jobPostingBoardId}</td>
							<td>
								<div id="apply" class="container p-4 my-4 border">
									<a
										href="/company/jobPostingBoard/${jobPostingBoardList.jobPostingBoardId}">
										${jobPostingBoardList.jobPostingBoardTitle}</a>
								</div>
							</td>
							<td>${jobPostingBoardList.jobPostingBoardDeadline}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>						
		</c:when>
		<c:otherwise>
			<table class="table table-bordered" style="text-align: center">
				<thead>
					<tr>
						<th>번호</th>
						<th>이력서 제목</th>
						<th>희망근무지역</th>
					</tr>
				</thead>
				<tbody id="table">
					<c:forEach var="resumesList" items="${resumesList}">
						<tr>
							<td>${resumesList.resumesId}</td>
							<td>
								<div id="apply" class="container p-4 my-4 border">
									<a href="/personal/resumes/${resumesList.resumesId}">
										${resumesList.resumesTitle}</a>
								</div>
							</td>
							<td>${resumesList.resumesPlace}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:otherwise>
	</c:choose>
</div>

<div class="d-flex justify-content-center">
	<ul class="pagination">
		<li class='page-item ${paging.first ? "disabled" : " "}'><a
			class="page-link"
			href="?page=${paging.currentPage-1}&keyword=${paging.keyword}">Prev</a>
		</li>

		<c:forEach var="num" begin="${paging.startPageNum}"
			end="${paging.lastPageNum}" step="1">
			<li class='page-item ${paging.currentPage == num-1 ? "active" : ""}'>
				<a class="page-link" href="?page=${num-1}&keyword=${paging.keyword}">${num}</a>
			</li>
		</c:forEach>

		<li class='page-item ${paging.last ? "disabled" : " "}'><a
			class="page-link"
			href="?page=${paging.currentPage+1}&keyword=${paging.keyword}">Next</a>
		</li>
	</ul>
</div>

<%@ include file="../layout/footer.jsp"%>