<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<input id="jobPostingBoardId" type="hidden" value="${jobPostingPS.jobPostingBoardId}">
<input id="companyId" type="hidden" value="${jobPostingPS.companyId}">
<div id="main">
	<form>
		<div class="mb-3">
			◆채용 공고 제목 <input id="jobPostingBoardTitle" type="text" class="form-control"
				placeholder="${jobPostingPS.jobPostingBoardTitle}" readonly>
		</div>

		<h3>회사 정보</h3>
		<div class="mb-3">
			◆사진 자리 <input id="companyPicture" type="text" class="form-control"
				placeholder="${jobPostingPS.companyPicture}" readonly>

			<div class="mb-3">
				◆회사 이름 <input id="companyName" type="text" class="form-control"
					placeholder="${jobPostingPS.companyName}" readonly>
			</div>
			<div class="mb-3">
				◆회사 전화번호 <input id="companyPhoneNumber" type="text" class="form-control"
					placeholder="${jobPostingPS.companyPhoneNumber}" readonly>
			</div>
			<div class="mb-3">
				◆회사 이메일 <input id="companyEmail" type="text" class="form-control"
					placeholder="${jobPostingPS.companyEmail}" readonly>
			</div>
			<div class="mb-3">
				◆회사 주소 <input id="roadJibunAddr" type="text" class="form-control"
					placeholder="${address.roadJibunAddr}" readonly> <input id="detailAddress" type="text"
					class="form-control" placeholder="${address.detailAddress}" readonly>
			</div>
		</div>
	</form>
</div>
<br />
<br />

<h2>모집조건 및 안내사항</h2>
<div class="left_input">
	<div class="mb-3" style="margin-top: 30px">◆최소 경력 사항</div>
	<p>
		<c:choose>
			<c:when test="${true eq jobPostingPS.oneYearLess}">
            		지원 가능 자격  : 1년 이하 
        		 </c:when>

			<c:when test="${true eq jobPostingPS.twoYearOver}">
       				 지원 가능 자격  : 2년 이상 
         </c:when>

			<c:when test="${true eq jobPostingPS.threeYearOver}">
       		지원 가능 자격  : 3년 이상 
         </c:when>

			<c:when test="${true eq jobPostingPS.fiveYearOver}">
       			지원 가능 자격  : 5년 이상
         </c:when>
		</c:choose>
	</p>
	<div class="mb-3">
		<div class="mb-3" style="margin-top: 30px">◆모집 분야</div>
		<p>
			<c:choose>
				<c:when test="${true eq jobPostingPS.categoryFrontend}">
            		 모집 분야 : 프론트 엔드 
        		 </c:when>

				<c:when test="${true eq jobPostingPS.categoryBackend}">
       				 모집 분야 : 백엔드
         </c:when>

				<c:when test="${true eq jobPostingPS.categoryDevops}">
       			모집 분야 : 데브옵스
         </c:when>
			</c:choose>
		</p>

		<div class="mb-3">
			<h3 class="card-title">연봉</h3>
			<p>
				<c:choose>
					<c:when test="${2000 eq jobPostingPS.jobPostingSalary}">
            		 연봉 : 2천만원 이상 
        		 </c:when>

					<c:when test="${3000 eq jobPostingPS.jobPostingSalary}">
       				연봉 : 3천만원 이상 
         </c:when>
					<c:when test="${4000 eq jobPostingPS.jobPostingSalary}">
       				연봉 : 4천만원 이상 
         </c:when>
					<c:when test="${5000 eq jobPostingPS.jobPostingSalary}">
       				연봉 : 5천만원 이상 
         </c:when>
				</c:choose>
			</p>
			<div class="mb-3">
				◆근무지 <input id="jobPostingBoardPlace" type="text" class="form-control"
					placeholder="${jobPostingPS.jobPostingBoardPlace}" readonly>
			</div>

			<div class="mb-3">◆채용공고 내용</div>
			<input id="jobPostingBoardContent" type="text" class="form-control"
				placeholder="${jobPostingPS.jobPostingBoardContent}" readonly> <br />

			<div class="mb-3">◆채용공고 마감일</div>
			<input id="formatDeadLine" type="text" class="form-control"
				placeholder="${jobPostingPS.formatDeadLine}" readonly> <br />
		</div>
	</div>
	<div class="btn-update">
		<c:choose>
			<c:when test="${ empty principal }">
				<button type="button" class="btn btn-primary">로그인</button>
			</c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${ empty companyLike}">
						<button id="btnlike" type="button" class="btn btn-primary">좋아요</button>
					</c:when>
					<c:otherwise>
						<button id="btnlike" type="button" class="btn btn-primary">좋아요취소</button>
					</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>
		<div>
		<a href ="/personal/companyInform/${jobPostingPS.companyId}">회사 정보보기</a>
		</div>
		<button id="btnapply" type="button" class="btn btn-primary">지원하기</button>
	</div>

</div>
<script>
$(function() {
    $('#btnlike').click( function() {
      if( $(this).html() == '좋아요') {
        
        $(this).html('좋아요취소');
        insertLike();
      }
      else {
        
        $(this).html('좋아요');
        deleteLike();
      }
    });
  });
  
function deleteLike() {
    let companyid  = $("#company_id").val();
    $.ajax("/companyLike/" +companyid + "/likes",{
        type: "DELETE",
        dataType: "json",
        headers: { // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8"
        }
    }).done((res) => {
        if (res.code == 1) {
            
        } else {
            alert("좋아요 추가 실패");
            return;
        }
    });
}
function insertLike() {
    let companyid = $("#company_id").val();
    sendmessageToCompany(companyid);
    $.ajax("/companyLike/" +companyid+ "/likes",{
        type: "POST",
        dataType: "json",
        headers: { // http header에 들고갈 요청 데이터
            "Content-Type": "application/json; charset=utf-8"
        }
    }).done((res) => {
        if (res.code == 1) {
            
        } else {
            alert("좋아요 추가 실패");
            return;
        }
    });
}
</script>

<script src="/js/writeForm.js">
   </script>

<%@ include file="../layout/footer.jsp"%>