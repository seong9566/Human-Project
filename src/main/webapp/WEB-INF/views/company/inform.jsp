<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="maininfoform">
	<div class="infoformtitle">
		<h1>기업정보 확인 페이지</h1>
	</div>
	<div class="infodiv">
		<input id="username" type="text" class="form-control"
			placeholder="이름을 입력해주세요" readonly>
	</div>
	<div class="infodiv">
		<input id="phonenumber" type="text" class="form-control"
			placeholder="전화번호를 입력해주세요" readonly>
	</div>
	<div class="infodiv">
		<input id="email" type="email" class="form-control"
			placeholder="이메일을 입력해주세요" readonly>
	</div>
	<br /> <input
		id="post" style="width: 200px; height:100px;" type="text" placeholder="우편번호"
		readonly onclick="findAddr()"> <input id="addr" type="text"
		placeholder="주소" style="width: 300px; height:100px;" readonly><br> <input
		id="detail_address" type="text" placeholder="상세주소"
		style="width: 400px; height:100px;">
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
	</div>
</div>

<div class="mb-5"></div>
<div class="d-grid gap-1 col-2 mx-auto">
	<button id=btnUpdateForm type="button" class="btn btn-primary">수정하러
		가기</button>
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