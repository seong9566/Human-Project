<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<form>
		<h2>나의 정보</h2>
		<div class="mb-3 mt-3">
			◆아이디 <input id="userId" type="text" class="form-control" readonly>
		</div>

		<div class="mb-3"></div>

		<div class="mb-3">
			◆이름 <input id="username" type="text" class="form-control" 
			placeholder="${personalform.personalName}"
			readonly>
		</div>

		<div class="mb-3">
			◆전화번호<input id="phonenumber" type="text" class="form-control" 
			placeholder="${personalform.personalPhoneNumber}"
			readonly>
		</div>

		<div class="mb-3">
			◆이메일<input id="email" type="email" class="form-control" 
			placeholder="${personalform.personalEmail}"
			readonly>
		</div>

		<div class="mb-3" style="margin-top: 30px">◆관심분야</div>
		<div>
			<label><input type="checkbox" id="frontend" readonly>프런트엔드</label><br /> <label><input type="checkbox" id="backend" readonly>백엔드</label><br /> <label><input
				type="checkbox" id="devops" readonly>데브옴스</label><br /> <label><input type="checkbox" id="etc" readonly>상관없음</label>
		</div>
	</form>

	<div class="mb-5"></div>

	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary"
			onclick="location.href='update'">정보수정</button>
	</div>

</div>

<script src="/js/inform.js"></script>
<%@ include file="../layout/footer.jsp"%>
