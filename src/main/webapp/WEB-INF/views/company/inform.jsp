<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2>내 정보 - 기업</h2>
		<div class="mb-3 mt-3">
			◆아이디
			<div>${companyInfo.loginId}</div>
		</div>
		<div class="mb-3">
			◆이름
			<div>${companyInfo.companyName}</div>
		</div>
		<div class="mb-3">
			◆전화번호
			<div>${companyInfo.companyPhoneNumber}</div>
		</div>
		<div class="mb-3">
			◆이메일
			<div>${companyInfo.companyEmail}</div>
		</div>
		<div class="mb-3">◆주소</div>
		<div>${companyInfo.companyAddress}</div>
		<input id="member_post" type="text" placeholder="우편번호" readonly onclick="findAddr()">
		<button id="btnJoin" type="button" class="btn btn-primary">우편번호찾기</button>
		<br> <input id="member_addr" type="text" placeholder="주소" style="width: 645px;" readonly>
		<input type="text" placeholder="상세주소" style="width: 645px;">
		<div class="mb-3"></div>
		
		<div class="mb-3">◆관심분야</div>
		<div>
			<c:choose>
				<c:when test="${true eq companyInfo.categoryFrontend}">
					<label><input type="checkbox"  checked disabled value ="프론트엔드">프론트엔드</label>
					<br />
				</c:when>
				<c:otherwise>
				<label><input type="checkbox" disabled   value ="프론트엔드">프론트엔드</label>
					<br />
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${true eq companyInfo.categoryBackend}">
					<label><input type="checkbox"  checked  disabled value ="백엔드">백엔드</label>
					<br />
				</c:when>
				<c:otherwise>
				<label><input type="checkbox" disabled  value ="백엔드">백엔드</label>
					<br />
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${true eq companyInfo.categoryDevops}">
					<label><input type="checkbox" checked disabled value ="데브옵스">데브옵스</label>
					<br />
				</c:when>
				<c:otherwise>
				<label><input type="checkbox" disabled  value ="데브옵스">데브옵스</label>
					<br />
				</c:otherwise>
			</c:choose>

		</div>
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnJoin" type="button" class="btn btn-primary"><a href="/company/${companyInfo.companyId}/inform/update"">정보수정</a></button>
	</div>

</div>

<script src="js/company.js"></script>
<script src="js/inform.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>