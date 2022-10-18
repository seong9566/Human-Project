<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">

	<input id="usersId" type="hidden" value="${companyInfo.usersId}">
	<form>
		<br />
		<h2>내 정보 - 기업</h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="loginId" type="text" class="form-control"
				value="${companyInfo.loginId}" readonly>
		</div>

		<div class="mb-3 mt-3">
			◆회사명 <input id="companyName" type="text" class="form-control"
				value="${companyInfo.companyName}" readonly>
		</div>

		<div class="mb-3 mt-3">
			◆전화번호 <input id="companyPhoneNumber" type="text" class="form-control"
				value="${companyInfo.companyPhoneNumber}" readonly>
		</div>

		<div class="mb-3 mt-3">
			◆이메일 <input id="companyEmail" type="text" class="form-control"
				value="${companyInfo. companyEmail}" readonly>
		</div>

		<div class="mb-3">◆주소</div>
		<input id="zoneCode" type="text" value="${address.zoneCode }" readonly>
		<br> <input id="roadJibunAddr" type="text"
			value="${address.roadJibunAddr}" style="width: 645px;" readonly>
		<input type="detailAddress" value="${address.detailAddress }"
			style="width: 645px;" readonly>
		<div class="mb-3"></div>
	</form>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id=btnUpdateForm type="button" class="btn btn-primary">수정하러
			가기</button>
	</div>

</div>
<script>
//수정 폼 이동 
$("#btnUpdateForm").click(()=>{
   location.href="/company/inform/update";
});
</script>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>