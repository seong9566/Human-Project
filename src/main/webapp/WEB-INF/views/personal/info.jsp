<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2>나의 정보</h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control" readonly>
		</div>

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
		<c:choose>
			<c:when test="${personalform.personalEducation eq '고등졸업'}">
				<label><input type="checkbox" checked disabled value="고등졸업">고등졸업</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox"  disabled value="고등졸업">고등졸업</label>
				<br />
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${personalform.personalEducation eq '대학재학'}">
				<label><input type="checkbox" checked disabled value="대학재학">대학재학</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox" disabled value="대학재학">대학재학</label>
				<br />
			</c:otherwise>
		</c:choose>
		​
		<c:choose>
			<c:when test="${personalform.personalEducation eq '대학졸업'}">
				<label><input type="checkbox" checked disabled value="대학졸업">대학졸업</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox" disabled value="대학졸업">대학졸업</label>
				<br />
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${personalform.personalEducation eq '대학원'}">
				<label><input type="checkbox" checked disabled value="대학원">대학원</label>
				<br />
			</c:when>
			<c:otherwise>
				<label><input type="checkbox" disabled value="대학원">대학원</label>
				<br />
			</c:otherwise>
		</c:choose>
		​


	</form>

	<div class="mb-5"></div>

	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary"
			onclick="location.href='update'">정보수정</button>
	</div>

</div>

<script src="/js/inform.js"></script>
<%@ include file="../layout/footer.jsp"%>
