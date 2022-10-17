<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div id="main">
	<br />
	<div class="tool">

		<div class="left">
			<br />
			<h3>기업정보</h3>
			<div class="left_input">
				<br />
				<div id="usersName">${principal.userinfo.companyname}</div>
				<br />
				<div id="phoneNumber">${personalInfoPS.companyphonenumber}</div>
				<br />
				<div id="email">${personalInfoPS.company_email}</div>
				<div id="주소">${personalInfoPS.companyaddress}</div>
				<div class="right">
					<div class="background">
						<div class="window">
							<div class="popup">
								<div>${company_picture}</div>
								<button id="close">팝업닫기</button>
							</div>
						</div>
					</div>
					<input id="show" type="button" value="사진확인하기" />
				</div>
			</div>
		</div>
		<br /> <br /> <br />
		<div>
			<h2>연봉</h2>
			<label class="form-check-label"> <input type="radio"
				class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="2000"> 2000만원 이상 <i
				class="input-helper"></i></label> <label class="form-check-label"> <input
				type="radio" class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="3000"> 3000만원 이상 <i
				class="input-helper"></i></label> <label class="form-check-label"> <input
				type="radio" class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="4000"> 4000만원 이상 <i
				class="input-helper"></i></label> <label class="form-check-label"> <input
				type="radio" class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="5000"> 5000만원 이상 <i
				class="input-helper"></i></label>
		</div>
		<div id="underplace">
			<div>
				<h2>회사 주소</h2>
				<input id="job_posting_board_place" type="text" class="inputtag"
					placeholder="회사주소를 입력해주세요." readonly />
			</div>
			<br />
			<div class="form">
				<h2>구인공고 제목 및 유의사항 작성</h2>
				<input id="job_posting_board_title" type="text" class="inputtag"
					placeholder="구인공고 제목을 입력해주세요." readonly /><br />
				<div id="job_posting_board_content"></div>
				<div>
					<h2>마감일자 등록</h2>
					<input type="datetime-local" name="starttime"
						id="job_posting_board_deadline" readonly>
				</div>
			</div>
			<br /> <br />
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
				<button id="btnapply" type="button" class="btn btn-primary">연락하기</button>
			</div>
		</div>
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