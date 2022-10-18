<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">

	<input id="usersId" type="hidden" value="${companyInfo.usersId}">
	<form>
		<br />
		<h2>내 정보 - 기업</h2>
		<div class="mb-3">
			이름 <input id="username" type="text" class="form-control"
				style="width: 300px;" placeholder="${companyInfo.loginId}" readonly>
		</div>

		<div class="mb-3">
			회사이름<input id="companyName" type="text" class="form-control"
				style="width: 300px;" placeholder="${companyInfo.companyName}"
				readonly>
		</div>

		<div class="mb-3">
			연락처<input id="phonenumber" type="email" class="form-control"
				style="width: 300px;"
				placeholder="${companyInfo.companyPhoneNumber}" readonly>
		</div>
		<div class="mb-3">
			이메일<input id="companyEmail" type="email" class="form-control"
				style="width: 300px;" placeholder="${companyInfo.companyEmail}"
				readonly>
		</div>
		<div class="mb-3">주소</div>
		<input id="zoneCode" type="text" placeholder="우편번호" readonly
			value="${address.zoneCode }"> <br> <input id="roadJibunAddr"
			type="text" value="${address.roadJibunAddr}" style="width: 620px;"
			readonly> <input id="detailAddress" type="text"
			value="${address.detailAddress}" style="width: 620px;"
			readonly> ​
	</form>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id=btnUpdateForm type="button" class="btn btn-primary" style="margin: 10px 10px">수정하러
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