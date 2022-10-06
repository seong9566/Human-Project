<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서관리 사이트</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
#btnUsernameSameCheck {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<form> 
			<h2>내 정보 - 기업</h2>
			<div class="mb-3 mt-3">
				◆아이디 <input id="userId" type="text" class="form-control" placeholder="아이디를 입력해주세요." readonly>
				<button id="btnUsernameSameCheck" class="btn btn-warning" type="button">아이디 중복체크</button>
			</div>
			<div class="mb-3">
				◆이름 <input id="username" type="text" class="form-control" placeholder="이름을 입력해주세요" readonly>
			</div>
			<div class="mb-3">
				◆전화번호<input id="email" type="email" class="form-control" placeholder="이메일을 입력해주세요" readonly>
			</div>
			<div class="mb-3">
				◆이메일<input id="phonenumber" type="text" class="form-control" placeholder="전화번호를 입력해주세요" readonly>
			</div>
			<div class="mb-3">◆주소</div>
			<input id="member_post" type="text" placeholder="우편번호" readonly onclick="findAddr()" > 
			<button id="btnJoin" type="button" class="btn btn-primary">우편번호찾기</button><br>
			<input id="member_addr" type="text" placeholder="주소" style="width:645px;" readonly>
			<input type="text" placeholder="상세주소" style="width:645px;">
			<div class="mb-3"></div>
			<div class="mb-3">◆관심분야</div>
			<div>
				<label><input type="checkbox" id="frontend">프런트엔드</label><br /> 
				<label><input type="checkbox" value="backend">백엔드</label><br /> 
				<label><input type="checkbox" value="devops">데브옴스</label><br /> 
				<label><input type="checkbox" value="etc">상관없음</label>
			</div>
		</form>
		<div class="mb-5"></div>
		<div class="d-grid gap-1 col-2 mx-auto">
			<button id="btnJoin" type="button" class="btn btn-primary">정보수정</button>
		</div>

	</div>

	<script>
		function findAddr() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							console.log(data);

							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var jibunAddr = data.jibunAddress; // 지번 주소 변수
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('member_post').value = data.zonecode;
							if (roadAddr !== '') {
								document.getElementById("member_addr").value = roadAddr;
							} else if (jibunAddr !== '') {
								document.getElementById("member_addr").value = jibunAddr;
							}
						}
					}).open();
		}
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>