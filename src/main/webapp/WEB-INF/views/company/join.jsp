<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<div class="mainjoinform">
	<div class="joinformtitle">
		<h1>기업회원가입 페이지</h1>
	</div>
	<div class="joindiv">
		<br /> <input id="userId" type="text" class="form-control"
			placeholder="아이디를 입력해주세요."><br/>
		<button id="btnUsernameSameCheck" class="btn btn-warning"
			type="button">아이디 중복체크</button>
		<br />
	</div>
	<div class="joindiv">
		<br /> <input id="password" type="password" class="form-control"
			placeholder="비밀번호를 입력해주세요">
	</div>
	<div id="span_valcheck" style="visibility: hidden; color: tomato;">비밀번호가
		같지 않습니다!</div>
	<div class="joindiv">
		<input id="passwordConfirm" type="password" class="form-control"
			placeholder="비밀번호를 입력해주세요">
	</div>
	<div class="joindiv">
		<input id="username" type="text" class="form-control"
			placeholder="이름을 입력해주세요">
	</div>
	<div class="joindiv">
		<input id="phonenumber" type="text" class="form-control"
			placeholder="전화번호를 입력해주세요">
	</div>
	<div class="joindiv">
		<input id="email" type="email" class="form-control"
			placeholder="이메일을 입력해주세요">
	</div>
	<div class="background">
		<div class="window">
			<div class="popup">
				<div>
					<img id="previewImg" />
				</div>
				<button id="close">팝업닫기</button>
			</div>
		</div>
	</div>
	<input id="show" type="button" value="이미지 미리보기" /> <input type="file"
		id="fileUpload" class="Uploadbtn" accept='image/*'
		style="margin-left: 0;" />
	<button id="detailAddress" type="button" class="btn btn-primary"
		onclick="findAddr()">우편번호찾기</button>
	<br /> <input id="post" style="width: 200px;" type="text"
		placeholder="우편번호" readonly onclick="findAddr()"> <input
		id="addr" type="text" placeholder="주소" style="width: 300px;" readonly><br>
	<input id="detail_address" type="text" placeholder="상세주소"
		style="width: 400px;">
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary"
			onclick="joinform_check()" disabled="disabled">작성완료</button>
	</div>
</div>
<script src="/js/companyjoin.js"></script>
<script src="/js/join.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>