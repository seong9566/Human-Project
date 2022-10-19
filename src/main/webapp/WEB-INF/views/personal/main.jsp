<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
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


<select id="stadiumId" class="form-control">
            <c:forEach var="stadium" items="${stadiumList}">
               <option value="${stadium.id}">${stadium.name}</option>
            </c:forEach>
         </select>




<div class="dropdown">
<div class="d-flex justify-content-between" style="width:1190px">
	<select id="select_category" name="category" style="width: 150px; left: 10%" onchange="select_category(this.value);">
		<option id="categoryAll" value="0">==전체보기==</option>
		<option id="categoryFrontend" value="1">프론트엔드</option>
		<option id="categoryBackend" value="2">백엔드</option>
		<option id="categoryDevops" value="3">데브옵스</option>
	</select>
	
	<form class="d-flex" method="get" action="/main">
		<input class="searchForm" type="text" placeholder="Search"
			name="keyword">
		<button class="searchsubmit" type="submit">🔍</button>
	</form>
</div>

<div class="d-flex justify-content-center">
	<c:set var="userprincipal" value="${empty sessionScope.principal || empty sessionScope.principal.companyId  ?  true : false}"></c:set>
	<c:choose>
		<c:when test="${userprincipal}">
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
										href="/personal/jobPostingBoard/${jobPostingBoardList.jobPostingBoardId}">
										${jobPostingBoardList.jobPostingBoardTitle}</a>
								</div>
							</td>
							<td>${jobPostingBoardList.formatDeadLine} 
							<p>${jobPostingBoardList.state}</p>
							</td>
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
</div>
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


<script>
function select_category(val){
	groupForCategory(val);
}

function groupForCategory(id){	
	if(id != 1 && id != 2 && id != 3){
		location.href="/main";
	}
	
	$.ajax("/main" + id ,{
		type:"get"
	}).done((res)=>{		
		if(res.code == 1){
			console.log(res.data);			
			$("#table tr").remove();
			res.data.forEach((o, i)=>{
				$("#table").append('<tr><td>'+o.row+'</td>'+
				'<td>'+o.jobPostingBoardTitle+'</td>'+
				'<td>'+o.jobPostingBoardDeadline+'</td></tr>');
			});
		}
	});

}
// 만약 처럼 $를 쓸데 $ 앞에 \ 꼭 넣어야한다 !
</script>


<%@ include file="../layout/footer.jsp"%>