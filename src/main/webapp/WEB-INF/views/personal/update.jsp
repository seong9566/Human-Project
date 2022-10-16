<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2></h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control"
				value="${personalUpdateForm.loginId}" readonly> 
		</div>
		<div class="mb-3">
			◆비밀번호 <input id="password1" type="password" class="form-control"
				value="${personalUpdateForm.loginPassword}">
		</div>
		<div class="mb-3">
			◆비밀번호 확인 <input id="password2" type="password" class="form-control"
				value="${personalUpdateForm.loginPassword}">
		</div>
		<button type="button" class="btn btn-primary" onclick="test()">비밀번호
			확인</button>
		<div class="mb-3"></div>
		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control"
				value="${personalUpdateForm.personalName}">
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control"
				value="${personalUpdateForm.personalPhoneNumber}">
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control"
				value="${personalUpdateForm.personalEmail}">
		</div>

		<div class="mb-3" style="margin-top: 30px">◆학력</div>
		<div class="form-check d-flex">
			<c:choose>
				<c:when test="${personalUpdateForm.personalEducation eq '고졸'}">
					<label><input type="radio" checked value="고졸">고졸</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" value="고졸">고졸</label>
					<br />
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${personalUpdateForm.personalEducation eq '2년제 졸업'}">
					<label><input type="radio" checked value="2년제 졸업"
						style="margin-left: 25px">2년제 졸업</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" value="2년제 졸업"
						style="margin-left: 25px">2년제 졸업</label>
					<br />
				</c:otherwise>
			</c:choose>
			​
			<c:choose>
				<c:when test="${personalUpdateForm.personalEducation eq '4년제 졸업'}">
					<label><input type="radio" checked  value="4년제 졸업"
						style="margin-left: 25px">4년제 졸업</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" value="4년제 졸업"
						style="margin-left: 25px">4년제 졸업</label>
					<br />
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${personalUpdateForm.personalEducation eq '재학 중'}">
					<label><input type="radio" checked value="재학 중"
						style="margin-left: 25px">대학 재학중</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="radio" value="재학 중"
						style="margin-left: 25px">대학 재학중</label>
					<br />
				</c:otherwise>
			</c:choose>
		</div>

		<div class="mb-3">◆주소</div>
		<input id="post" type="text" placeholder="우편번호" onclick="findAddr()"
			value="${personalAddress.zoneCode}">
		<button id="detailAddress" type="button" class="btn btn-primary" onclick="findAddr()">우편번호찾기</button>
		<br> <input id="addr" type="text"
			value="${personalAddress.roadJibunAddr}" style="width: 620px;"
			> <input id="detail_address" type="text"
			value="${personalAddress.detailAddress}" style="width: 620px;">
		​



	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary"
			onclick="joinform_check()">수정완료</button>
	</div>

</div>

<script src="/js/personal.js"></script>
<script src="/js/join.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../layout/footer.jsp"%>