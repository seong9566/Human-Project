<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/footer.jsp"%>
<div class="container">
	<form>
		<h2>나의 정보</h2>


		<div class="mb-3"></div>

		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control"
				placeholder="${personalform.personalName}" readonly>
		</div>

		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control"
				placeholder="${personalform.personalPhoneNumber}" readonly>
		</div>

		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control"
				placeholder="${personalform.personalEmail}" readonly>
		</div>
		<div class="mb-3" style="margin-top: 30px">◆학력</div>
		<div class="form-check d-flex">
			<c:choose>
				<c:when test="${personalform.personalEducation eq '고졸'}">
					<label><input type="radio" checked disabled value="고졸">고졸</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="고졸">고졸</label>
					<br />
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${personalform.personalEducation eq '2년제 졸업'}">
					<label><input type="radio" checked disabled value="2년제 졸업"
						style="margin-left: 25px">2년제 졸업</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="2년제 졸업"
						style="margin-left: 25px">2년제 졸업</label>
					<br />
				</c:otherwise>
			</c:choose>
			​
			<c:choose>
				<c:when test="${personalform.personalEducation eq '4년제 졸업'}">
					<label><input type="radio" checked disabled value="4년제 졸업"
						style="margin-left: 25px">4년제 졸업</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="4년제 졸업"
						style="margin-left: 25px">4년제 졸업</label>
					<br />
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${personalform.personalEducation eq '재학 중'}">
					<label><input type="radio" checked disabled value="재학 중"
						style="margin-left: 25px">대학 재학중</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" disabled value="4년제졸업"
						style="margin-left: 25px">대학 재학중</label>
					<br />
				</c:otherwise>
			</c:choose>

		</div>
		<div class="mb-3">◆주소</div>
		<input id="post" type="text" placeholder="우편번호" readonly
			value="${personalAddress.zoneCode}">
		<br> <input id="addr" type="text"
			value="${personalAddress.roadJibunAddr}" style="width: 620px;"
			readonly> <input id="detail_address" type="text"
			value="${personalAddress.detailAddress}" style="width: 620px;">
		​

	</form>

	<div class="mb-5"></div>

	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary"
			onclick="location.href='update'">정보수정</button>
	</div>
</div>


<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/js/inform.js"></script>
<%@ include file="../layout/footer.jsp"%>
