<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="maininfoform">
	<div class="infodiv">
		이름 <input id="username" type="text" class="form-control"
				placeholder="${companyform.companyName}" readonly>
	</div>
	<div class="infodiv">
		◆전화번호<input id="phonenumber" type="text" class="form-control"
				placeholder="${personalform.companyPhoneNumber}" readonly>
	</div>
	<div class="infodiv">
		◆이메일<input id="email" type="email" class="form-control"
				placeholder="${personalform.companyEmail}" readonly>
	</div>
<br>
		<div class="mb-3">주소</div>
        <input id="post" type="text" placeholder="우편번호" readonly style="width: 620px; padding: 5px 0 5px 0"
			value="${companyAddress.zoneCode}">
        <br> <input id="addr" type="text"
			value="${companyAddress.roadJibunAddr}" style="width: 620px;padding: 5px 0 5px 0"
			readonly> <input id="detail_address" type="text"
			value="${companyAddress.detailAddress}" style="width: 620px; padding: 5px 0 5px 0">
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary"
			onclick="location.href='update'">정보수정</button>
	</div>
	</div>

<script>
//수정 폼 이동 
$("#btnUpdateForm").click(()=>{
   location.href="/company/inform/update";
});
</script>
    <script src="/js/join.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>