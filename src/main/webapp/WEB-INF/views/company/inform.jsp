<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">

	<input id = "usersId" type="hidden" value="${companyInfo.usersId}"> 
	<form>
		<h2>내 정보 - 기업</h2>
		<div class="mb-3 mt-3">
			◆아이디
			<input id="loginId" type="text" value="${companyInfo.loginId}" readonly>
		</div>
		
		<div class="mb-3 mt-3">
			◆회사명
			<input id="companyName" type="text" value="${companyInfo.companyName}" readonly>
		</div>
		
		<div class="mb-3 mt-3">
			◆전화번호
			<input id="companyPhoneNumber" type="text" value="${companyInfo.companyPhoneNumber}" readonly>
		</div>
		
		<div class="mb-3 mt-3">
			◆이메일
			<input id="companyEmail" type="text" value="${companyInfo. companyEmail}" readonly>
		</div>
		
		<div class="mb-3 mt-3">
			◆회사 사진 
			<input id="companyPicture" type="text" value="${companyInfo. companyPicture}" readonly>
		</div>
		
		<div class="mb-3">◆주소</div>
		<input id="zoneCode" type="text" value="${address.zoneCode }" readonly> <br>
		 <input id="roadJibunAddr" type="text" value="${address.roadJibunAddr}" style="width: 645px;" readonly>
		<input type="detailAddress" value="${address.detailAddress }" style="width: 645px;" readonly>
		<div class="mb-3"></div>
</div>
</form>
<div class="mb-5"></div>
<div class="d-grid gap-1 col-2 mx-auto">
	<button id=btnUpdate type="button" class="btn btn-primary">
		<a href=/company/inform/update>정보수정</a>
	</button>
</div>

</div>
<script>
//수정 폼 이동 
$("#btnUpdateForm").click(()=>{
   location.href="/company/inform/update";
});
</script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>