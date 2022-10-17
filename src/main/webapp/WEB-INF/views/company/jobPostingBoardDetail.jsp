<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div>
	<input id="jobpostingOne" type="hidden" value="${jobpostingOne.jobPostingBoardId}">
	<input id="jobpostingOne" type="hidden" value="${jobpostingOne.companyId}">
	<h2>구인 공고 상세 보기</h2>
	<br /> <input id="jobPostingBoardTitle" type="text" class="form-control"
		placeholder="${companyInfo.jobPostingBoardTitle}">
	<div class="tool">
		<div class="left">
			<br />
			<h3>회사정보</h3>
			<div class="right">
				<input id="" value="${companyInfo.companyPicture}" placeholder="회사 사진 자리" />
			</div>


			<div class="left_input">
				<div>
					<h4>회사 이름</h4>
					<p>${companyInfo.companyName}</p>
				</div>
				<br />
				<div>
					<h4>회사 번호</h4>
					<p>${companyInfo.companyPhoneNumber}</p>
				</div>
				<div>
					<h4>회사 이메일</h4>
					<p>${companyInfo.companyEmail}</p>
				</div>

				<div >
				<h4>회사 주소 </h4>
				<p>${address.roadJibunAddr}</p>
				<p>${address.detailAddress }</p>
				</div>
			</div>
		</div>
		<h2>모집조건 및 안내사항 작성</h2>

		<div class="left_input">
			<div class="mb-3">
				◆최소 경력 사항
				<div>
					<label><input type="checkbox" value="oneYearLess">oneYearLess</label><br /> <label><input
						type="checkbox" value="twoYearOver">twoYearOver</label><br /> <label><input
						type="checkbox" value="threeYearOver">threeYearOver</label><br /> <label><input
						type="checkbox" value="fiveYearOver">fiveYearOver</label><br />
				</div>
			</div>
=============
		<div class="mb-3" style="margin-top: 30px">◆최소 경력 사항</div>
			<p>
				<c:choose>
					<c:when test="${true eq jobpostingOne.oneYearLess}">
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
==============
			<div class="mb-3">
				◆관심분야
				<div>
					<label><input type="checkbox" value="categoryFrontend">frontend</label><br /> <label><input
						type="checkbox" value="categoryBackend">backend</label><br /> <label><input
						type="checkbox" value="categoryDevops">devops</label><br />
				</div>
			</div>

			<div class="mb-3">
				<h3 class="card-title">연봉</h3>
				<div>
					<div class="form-check d-flex">
						<div class="form-check">
							<label class="form-check-label"> <input type="radio" class="form-check-input"
								id="jobPostingBoardSalary" name="jobPostingBoardSalary" value="2000"> 2000만원 이상 <i
								class="input-helper"></i></label>
						</div>
						<div style="margin: 0 20px 0 0;"></div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio" class="form-check-input"
								id="jobPostingBoardSalary" name="jobPostingBoardSalary" value="3000"> 3000만원 이상 <i
								class="input-helper"></i></label>
						</div>
						<div style="margin: 0 20px 0 0;"></div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio" class="form-check-input"
								id="jobPostingBoardSalary" name="jobPostingBoardSalary" value="4000"> 4000만원 이상 <i
								class="input-helper"></i></label>
						</div>
						<div style="margin: 0 20px 0 0;"></div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio" class="form-check-input"
								id="jobPostingBoardSalary" name="jobPostingBoardSalary" value="5000"> 5000만원 이상 <i
								class="input-helper"></i></label>
						</div>
					</div>


					<br />
					<div class="mb-3">◆주소</div>
					<input id="post" type="text" placeholder="우편번호" readonly onclick="findAddr()">
					<button id="detailAddress" type="button" class="btn btn-primary" onclick="findAddr()">우편번호찾기</button>
					<br> <input id="addr" type="text" placeholder="주소" style="width: 620px;" readonly>


					<div class="mb-3">◆채용공고 마감일</div>
					<input id="jobPostingBoardDeadline" type="date" class="form-control"
						placeholder="채용공고 마감일을 작성해 주세요"> <br />

					<div class="mb-3">◆채용공고 내용</div>
					<input id="jobPostingBoardContent" type="text" class="form-control"
						placeholder="채용공고 내용을 작성해주세요"> <br />
				</div>

				<div class="btn-update">
					<button id="btnSave" type="button" class="btn btn-primary">작성완료</button>
				</div>

			</div>
		</div>
	</div>
</div>
<script>

</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>