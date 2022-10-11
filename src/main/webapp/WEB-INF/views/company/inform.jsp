<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<h2></h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control" placeholder="아이디를 입력해주세요." readonly>
			<button id="btnUsernameSameCheck" class="btn btn-warning" type="button">아이디 중복체크</button>
		</div>

		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control" placeholder="이름을 입력해주세요" readonly>
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control" placeholder="전화번호를 입력해주세요" readonly>
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control" placeholder="이메일을 입력해주세요" readonly>
		</div>

		<div class="mb-3"></div>
		<img id="previewImg" style="height: 250px;" /><br /> <input type="file" id="fileUpload" accept='image/*' style="margin-left: 0;" />

		<div class="mb-3">◆주소</div>
		<input id="member_post" type="text" placeholder="우편번호" readonly> <br> <input id="member_addr" type="text" placeholder="주소" style="width: 620px;" readonly><input type="text"
			placeholder="상세주소" style="width: 620px;">

		<div class="mb-3" style="margin-top: 30px">◆관심분야</div>
		<div>
			<label><input type="checkbox" id="frontend">프런트엔드</label><br /> <label><input type="checkbox" id="backend">백엔드</label><br /> <label><input type="checkbox" id="devops">데브옵스</label><br />
			<label><input type="checkbox" id="etc">상관없음</label>
		</div>
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary">정보수정</button>
	</div>

</div>

<script src="js/company.js"></script>
<script src="js/inform.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>