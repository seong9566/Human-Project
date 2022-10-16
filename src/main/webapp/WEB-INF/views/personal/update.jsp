<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2></h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control"
				placeholder="${personalUpdateForm.loginId}">
			<button id="btnUsernameSameCheck" class="btn btn-warning"
				type="button">아이디 중복체크</button>
		</div>
		<div class="mb-3">
			◆비밀번호 <input id="password1" type="password" class="form-control"
				placeholder="${personalUpdateForm.loginPassword}">
		</div>
		<div class="mb-3">
			◆비밀번호 확인 <input id="password2" type="password" class="form-control"
				placeholder="${personalUpdateForm.loginPassword}">
		</div>
		<button type="button" class="btn btn-primary" onclick="test()">비밀번호
			확인</button>
		<div class="mb-3"></div>
		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control"
				placeholder="${personalUpdateForm.personalName}">
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control"
				placeholder="${personalUpdateForm.personalPhoneNumber}">
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control"
				placeholder="${personalUpdateForm.personalEmail}">
		</div>

		<div class="mb-3" style="margin-top: 30px">◆학력</div>
		<c:choose>
			<c:when test="${personalUpdateForm.personalEducation eq '고등졸업'}">
				<label><input type="checkbox" checked value="고등졸업">고등졸업</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox" value="고등졸업">고등졸업</label>
				<br />
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${personalUpdateForm.personalEducation eq '대학재학'}">
				<label><input type="checkbox" checked value="대학재학">대학재학</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox" value="대학재학">대학재학</label>
				<br />
			</c:otherwise>
		</c:choose>
		​
		<c:choose>
			<c:when test="${personalUpdateForm.personalEducation eq '2년제졸업'}">
				<label><input type="checkbox" checked value="대학졸업">2년제졸업</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox" value="대학졸업">2년제졸업</label>
				<br />
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${personalUpdateForm.personalEducation eq '4년제졸업'}">
				<label><input type="checkbox" checked value="대학원">4년제졸업</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox" value="대학원">4년제졸업</label>
				<br />
			</c:otherwise>
		</c:choose>

		<div class="mb-5"></div>
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

<script src="/js/personaljoin.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../layout/footer.jsp"%>