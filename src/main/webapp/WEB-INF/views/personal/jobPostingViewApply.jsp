<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<input id="jobPostingBoardId" type="hidden"
	value="${jobPostingPS.jobPostingBoardId}">
<input id="companyId" type="hidden" value="${jobPostingPS.companyId}">
<input id="companyLikeId" type="hidden"
	value="${jobPostingPS.companyLikeId}">
<div class="container">
	<section id="about" class="about">

		<div class="row">
			<div class="col-lg-4" data-aos="fade-right">
				<img style="width: 400px; height: 500px" src="" class="img-fluid"
					alt="">
				<div class="btn-update" style="margin-top: 5px;">
					<c:choose>
						<c:when test="${ empty companyLike}">
							<button id="btnlike" type="button" class="btn btn-primary">좋아요</button>
						</c:when>
						<c:otherwise>
							<button id="btnlike" type="button" class="btn btn-primary">좋아요취소</button>
						</c:otherwise>
					</c:choose>
					<button id="btnapply" type="button" class="btn btn-primary">지원하기</button>
					<a href="/personal/companyInform/${jobPostingPS.companyId}">
						<div class="col-lg-6">
							<button id="btninfo" type="button" class="btn btn-primary"
								style="margin: 5px auto;">회사 정보보기</button>
						</div>
					</a>

				</div>
			</div>
			<div class="col-lg-8 pt-4 pt-lg-0 content" data-aos="fade-left">
				<h2>채용 공고</h2>
				<p class="fst-italic">채용 공고 제목 :
					${jobPostingPS.jobPostingBoardTitle}</p>
				<div class="row">
					<div class="col-lg-6">
						<ul>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									이름 :</strong> <span>${jobPostingPS.companyName}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									전화번호 :</strong> <span>${jobPostingPS.companyPhoneNumber}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									이메일 :</strong> <span> ${jobPostingPS.companyEmail} </span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>회사
									주소:</strong> <span>${address.roadJibunAddr}
									${address.detailAddress}</span></li>
						</ul>
					</div>
					<div class="col-lg-6">
						<ul>
							<li><i class="bi bi-chevron-right"></i> <strong>최소
									경력 사항</strong> <span> <c:choose>
										<c:when test="${true eq jobPostingPS.oneYearLess}">
                                                지원 가능 자격 : 1년 이하
                                            </c:when>

										<c:when test="${true eq jobPostingPS.twoYearOver}">
                                                지원 가능 자격 : 2년 이상
                                            </c:when>

										<c:when test="${true eq jobPostingPS.threeYearOver}">
                                                지원 가능 자격 : 3년 이상
                                            </c:when>

										<c:when test="${true eq jobPostingPS.fiveYearOver}">
                                                지원 가능 자격 : 5년 이상
                                            </c:when>
									</c:choose>
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>희망
									근무 지역 :</strong> <span>${detailResumesDtoPS.resumesPlace}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>모집
									분야</strong> <span> <c:choose>
										<c:when test="${true eq jobPostingPS.categoryFrontend}">
                                                프론트 엔드
                                            </c:when>

										<c:when test="${true eq jobPostingPS.categoryBackend}">
                                                백엔드
                                            </c:when>

										<c:when test="${true eq jobPostingPS.categoryDevops}">
                                                데브옵스
                                            </c:when>
									</c:choose>
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>연봉</strong>
								<span> <c:choose>
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
							</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>근무지</strong>
								<span>${jobPostingPS.jobPostingBoardPlace}</span></li>
							<li><i class="bi bi-chevron-right"></i> <strong>채용공고
									마감일</strong> <span>${jobPostingPS.formatDeadLine}</span></li>
						</ul>
					</div>
				</div>
				<p>
					채용공고 소개글 :
					<textarea class="form-control" id="resumesIntroduce" rows="8"
						readonly>${jobPostingPS.jobPostingBoardContent}</textarea>
				</p>
			</div>
		</div>

	</section>
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
    let companyid  = $("#companyId").val();
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
    let companyid = $("#companyId").val();
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