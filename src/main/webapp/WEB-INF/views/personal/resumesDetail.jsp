<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />
	<div class="tool">
		<div class="left">
			<br />
			<h2>${detailResumesDtoPS.resumesTitle}</h2>
			<div class="left_input">
				<br /> <img src="/image/농심.png" class="img-thumbnail" alt="..."
					style="float: right;"> <br />
				<div id="usersName">${detailResumesDtoPS.personalName}</div>
				<br />
				<div id="phoneNumber">${detailResumesDtoPS.personalPhoneNumber}</div>
				<br />
				<div id="email">${detailResumesDtoPS.personalEmail}</div>
				<br />
				<div id="address">${detailResumesDtoPS.personalAddress}</div>
				<br />
				<div id="education">${detailResumesDtoPS.personalEducation}</div>
			</div>
		</div>
		<h5>경력사항</h5>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio1" value="oneYearLess">
			<label class="form-check-label" for="inlineRadio1">oneYearLess</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio2" value="twoYearOver">
			<label class="form-check-label" for="inlineRadio2">twoYearOver</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio3" value="threeYearOver">
			<label class="form-check-label" for="inlineRadio3">threeYearOver
			</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio"
				name="inlineRadioOptions" id="inlineRadio3" value="fiveYearOver">
			<label class="form-check-label" for="inlineRadio3">fiveYearOver
			</label>
		</div>
		<div>
			<h5>관심분야</h5>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="checkbox" id="inlineCheckbox1"
					value="categoryFrontend"> <label class="form-check-label"
					for="inlineCheckbox1">frontend</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="checkbox" id="inlineCheckbox2"
					value="categoryBackend"> <label class="form-check-label"
					for="inlineCheckbox2">backend</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="checkbox" id="inlineCheckbox3"
					value="categoryDevops"> <label class="form-check-label"
					for="inlineCheckbox3">devops</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="checkbox" id="inlineCheckbox3"
					value="etc"> <label class="form-check-label"
					for="inlineCheckbox3">etc</label>
			</div>

			<h5>희망근무지역</h5>
			<input id="resumesPlace" type="text" class="form-control"
				placeholder="${detailResumesDtoPS.resumesPlace}" readonly />

			<h5>Github 주소 or Blog 주소</h5>
			<input id="portfolioSource" type="text" class="form-control"
				placeholder="${detailResumesDtoPS.portfolioSource}" readonly />

			<h5>포트폴리오</h5>
			<input id="portfolioFile" type="text" class="form-control"
				placeholder="${detailResumesDtoPS.portfolioFile}" readonly />
		</div>

		<div class="form">
			<h5>자기 소개서</h5>
				<br/>
			<textarea class="form-control" id="resumesIntroduce" rows="8" readonly>${detailResumesDtoPS.resumesIntroduce}</textarea>
		</div>

		<a href="/personal/resumes/update/${detailResumesDtoPS.resumesId}" style="color: black; font-style: normal">
			<div class="lineheight">☝ 수정하러가기 ☝</div>
		</a> <input id="resumesId" value="${detailResumesDtoPS.resumesId}"
			style="display: none"></input>
		<div class="likes">
			<c:choose>
				<c:when test="${ empty principal }">
					<button type="button" class="btn btn-primary">로그인</button>
				</c:when>
				<c:otherwise>
					<c:choose>
						<c:when test="${ empty personalLike}">
							<button id="btnlike" type="button" class="btn btn-primary">좋아요</button>
						</c:when>
						<c:otherwise>
							<button id="btnlike" type="button" class="btn btn-primary">좋아요취소</button>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<script>
	$(function () {
		$('#btnlike').click(function () {
			if ($(this).html() == '좋아요') {

				$(this).html('좋아요취소');
				insertLike();
				sendmessageToPersonal($("#resumesId").val());
			}
			else {

				$(this).html('좋아요');
				deleteLike();
			}
		});
	});
	function deleteLike() {
		let resumesId = $("#resumesId").val();
		console.log(resumesId);
		$.ajax("/personalLike/" + resumesId + "/likes", {
			type: "DELETE",
			dataType: "json",
		}).done((res) => {
			if (res.code == 1) {

			} else {
				alert("좋아요 추가 실패");
				return;
			}
		});
	}
	function insertLike() {
		let resumesId = $("#resumesId").val();
		console.log(resumesId);
		$.ajax("/personalLike/" + resumesId + "/likes", {
			type: "POST",
			dataType: "json"
		}).done((res) => {
			if (res.code == 1) {

			} else {
				alert("좋아요 추가 실패");
				return;
			}
		});
	}
		</script>

<script src="/js/resumes.js"></script>

<%@ include file="../layout/footer.jsp"%>