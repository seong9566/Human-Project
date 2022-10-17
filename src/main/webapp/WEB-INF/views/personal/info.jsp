<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="maininfoform">
	<div class="infodiv">
		이름 <input id="username" type="text" class="form-control"
				placeholder="${personalform.personalName}" readonly>
	</div>
	<div class="infodiv">
		◆전화번호<input id="phonenumber" type="text" class="form-control"
				placeholder="${personalform.personalPhoneNumber}" readonly>
	</div>
	<div class="infodiv">
		◆이메일<input id="email" type="email" class="form-control"
				placeholder="${personalform.personalEmail}" readonly>
	</div>
	<div class="infodiv">
		<h3>최종학력</h3>
	</div>
		<div class="form-check d-flex">
			<c:choose>
				<c:when test="${personalform.personalEducation eq '고졸'}">
					<label><input type="radio" checked disabled value="고졸">고졸</label>
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="고졸">고졸</label>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${personalform.personalEducation eq '2년제 졸업'}">
					<label><input type="radio" checked disabled value="2년제 졸업"
						style="margin-left: 25px">2년제 졸업</label>
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="2년제 졸업"
						style="margin-left: 25px">2년제 졸업</label>
				</c:otherwise>
			</c:choose>
			​
			<c:choose>
				<c:when test="${personalform.personalEducation eq '4년제 졸업'}">
					<label><input type="radio" checked disabled value="4년제 졸업"
						style="margin-left: 25px">4년제 졸업</label>
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="4년제 졸업"
						style="margin-left: 25px">4년제 졸업</label>
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${personalform.personalEducation eq '재학 중'}">
					<label><input type="radio" checked disabled value="재학 중"
						style="margin-left: 25px">대학 재학중</label>
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="4년제졸업"
						style="margin-left: 25px">대학 재학중</label>
				</c:otherwise>
			</c:choose>
		</div><br>
		<div class="mb-3">주소</div>
        <input id="post" type="text" placeholder="우편번호" readonly style="width: 620px; padding: 5px 0 5px 0"
			value="${personalAddress.zoneCode}">
        <br> <input id="addr" type="text"
			value="${personalAddress.roadJibunAddr}" style="width: 620px;padding: 5px 0 5px 0"
			readonly> <input id="detail_address" type="text"
			value="${personalAddress.detailAddress}" style="width: 620px; padding: 5px 0 5px 0">
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary"
			onclick="location.href='update'">정보수정</button>
	</div>
	</div>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/js/inform.js"></script>
<%@ include file="../layout/footer.jsp"%>
