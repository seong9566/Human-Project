<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<h2></h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control"
				placeholder="아이디를 입력해주세요." value = "${companyInfo.loginId}">
			<button id="btnUsernameSameCheck" class="btn btn-warning"
				type="button">아이디 중복체크</button>
		</div>
		<div class="mb-3">
			◆비밀번호 <input id="password1" type="password" class="form-control"
				placeholder="비밀번호를 입력해주세요"  value = "${companyInfo.loginPassword}">
		</div>
		<div class="mb-3">
			◆비밀번호 확인 <span id="span_valcheck"
				style="visibility: hidden; color: tomato;">-----비밀번호가 같지
				않습니다!</span><input id="password2" type="password" class="form-control"
				placeholder="비밀번호를 입력해주세요">
		</div>
		<div class="mb-3"></div>
		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control"
				placeholder="이름을 입력해주세요" value = "${companyInfo.companyName}">
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control"
				placeholder="전화번호를 입력해주세요"  value = "${companyInfo.companyPhoneNumber}">
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control"
				placeholder="이메일을 입력해주세요" value = "${companyInfo.companyEmail}">
		</div>
		<div class="mb-3">◆사진</div>
		<div class="mb-3"></div>
		<img id="previewImg" style="height: 250px;"/><br/> 
		<input type="file" id="fileUpload" accept='image/*' style="margin-left:0;"  />



		<div class="mb-3">◆주소</div>
		<input id="post" type="text" placeholder="우편번호" readonly
			onclick="findAddr()">
		<button id="detailAddress" type="button" class="btn btn-primary"
			onclick="findAddr()">우편번호수정</button>
		<br> <input id="addr" type="text" placeholder="주소"
			style="width: 620px;" readonly><input id="detailAddress"  type="text"
			placeholder="상세주소" style="width: 620px;">

	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary"
			onclick="joinform_check();">수정완료</button>
	</div>
</div>

<script src="/js/update.js"></script>
<script src="/js/available.js"></script>
<script src="/js/company.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>