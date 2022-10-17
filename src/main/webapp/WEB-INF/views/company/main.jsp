<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<div id="containermain">
	<div id="companyrank">
		<h2>회사 공고 추천 TOP 3</h2>
		<ul>

			<li>
				<div class="company-item">
					<div class="company-cover"></div>
					<div class="album-info">
						<p class="company_title">이름1</p>
						<p class="likerank">1등</p>
					</div>
				</div>
			</li>
			<li>
				<div class="company-item">
					<div class="company-cover"></div>
					<div class="company-info">
						<p class="company_title">이름2</p>
						<p class="likerank">2등</p>
					</div>
				</div>
			</li>
			<li>
				<div class="company-item">
					<div class="company-cover"></div>
					<div class="album-info">
						<p class="company_title">이름3</p>
						<p class="likerank">3등</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class="mb-3"></div>
	<div class="dropdown">
		<div class="d-flex justify-content-between" style="width:1100px">
				<select name="category" id="select_category"
					style="width: 150px; left: 10%">
					<option value="#">프론트엔드</option>
					<option value="#">백엔드</option>
					<option value="#">데브옵스</option>
				</select>
				<form class="d-flex" method="get" action="/companymain">
					<input class="searchForm" type="text" placeholder="Search" style="width:400px"
						name="keyword">
					<button class="searchsubmit" type="submit">Search</button>
				</form>
		</div>
		<div class="d-flex justify-content-center">
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
		</div>

		<div class="d-flex justify-content-center">
			<ul class="pagination">
				<li class='page-item ${paging.first ? "disabled" : " "}'><a
					class="page-link"
					href="?page=${paging.currentPage-1}&keyword=${paging.keyword}">Prev</a>
				</li>

				<c:forEach var="num" begin="${paging.startPageNum}"
					end="${paging.lastPageNum}" step="1">
					<li
						class='page-item ${paging.currentPage == num-1 ? "active" : ""}'>
						<a class="page-link"
						href="?page=${num-1}&keyword=${paging.keyword}">${num}</a>
					</li>
				</c:forEach>

				<li class='page-item ${paging.last ? "disabled" : " "}'><a
					class="page-link"
					href="?page=${paging.currentPage+1}&keyword=${paging.keyword}">Next</a>
				</li>
			</ul>
		</div>
	</div>
</div>

<%@ include file="../layout/footer.jsp"%>