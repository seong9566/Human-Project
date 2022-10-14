<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2>나의 정보</h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control" readonly>
		</div>

		<div class="mb-3"></div>

		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control" placeholder="${personalform.personalName}" readonly>
		</div>

		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control" placeholder="${personalform.personalPhoneNumber}" readonly>
		</div>

		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control" placeholder="${personalform.personalEmail}" readonly>
		</div>

		<div class="mb-3" style="margin-top: 30px">◆관심분야</div>
		<div>
			<c:choose>
				<c:when test="${true eq companyInfo.categoryFrontend}">
					<label><input type="checkbox" checked disabled value="프론트엔드">프론트엔드</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="checkbox" disabled value="프론트엔드">프론트엔드</label>
					<br />
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${true eq companyInfo.categoryBackend}">
					<label><input type="checkbox" checked disabled value="백엔드">백엔드</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="checkbox" disabled value="백엔드">백엔드</label>
					<br />
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${true eq companyInfo.categoryDevops}">
					<label><input type="checkbox" checked disabled value="데브옵스">데브옵스</label>
					<br />
				</c:when>
				<c:otherwise>
					<label><input type="checkbox" disabled value="데브옵스">데브옵스</label>
					<br />
				</c:otherwise>
			</c:choose>
			
			<label><input type="checkbox"  value="고졸">고졸</label>
			<label><input type="checkbox"  value="대학재학">대학재학</label>
			<label><input type="checkbox"  value="대학졸업">대학졸업</label>
			<label><input type="checkbox"  value="2년차이상">2년차이상</label>

		</div>
	</form>

	<div class="mb-5"></div>

	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary" onclick="location.href='update'">정보수정</button>
	</div>

</div>

<script src="/js/inform.js"></script>
<%@ include file="../layout/footer.jsp"%>
