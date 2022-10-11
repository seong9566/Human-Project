<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2></h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control"
				placeholder="아이디를 입력해주세요.">
			<button id="btnUsernameSameCheck" class="btn btn-warning"
				type="button">아이디 중복체크</button>
		</div>
		<div class="mb-3">
			◆비밀번호 <input id="password1" type="password" class="form-control"
				placeholder="비밀번호를 입력해주세요">
		</div>
		<div class="mb-3">
			◆비밀번호 확인 <input id="password2" type="password" class="form-control"
				placeholder="비밀번호를 입력해주세요">
		</div>
		<button type="button" class="btn btn-primary" onclick="test()">비밀번호
			확인</button>
		<div class="mb-3"></div>
		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control"
				placeholder="이름을 입력해주세요">
		</div>
		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control"
				placeholder="전화번호를 입력해주세요">
		</div>
		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control"
				placeholder="이메일을 입력해주세요">
		</div>
		<div class="mb-3" style="margin-top: 30px">◆관심분야</div>
		<div>
			<label><input type="checkbox" id="frontend">프런트엔드</label><br />
			<label><input type="checkbox" id="backend">백엔드</label><br />
			<label><input type="checkbox" id="devops">데브옴스</label><br />
			<label><input type="checkbox" id="etc">상관없음</label>
		</div>
	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnSave" type="button" class="btn btn-primary"
			onclick="joinform_check()">수정완료</button>
	</div>

</div>

<script src="/js/personaljoin.js">
	
</script>
<%@ include file="../layout/footer.jsp"%>