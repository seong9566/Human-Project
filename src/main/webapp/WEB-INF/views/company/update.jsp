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
		<input id="post" type="text" placeholder="우편번호"  value="${address.zipCode }" readonly onclick="findAddr()">
		<button id="detailAddress" type="button" class="btn btn-primary"onclick="findAddr()">우편번호수정</button>
		<br> <input id="addr" type="text" placeholder="주소"style="width: 620px;" value="${address.roadName}"  readonly>
		
		<input id="detail_address"  type="text"placeholder="상세주소"  value="${address.detailAddress }" style="width: 620px;">

	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary">수정완료</button>
	</div>
</div>
<script>

//주소 불러오기 
function findAddr() {
	new daum.Postcode(
		{
			oncomplete: function(data) {
				console.log(data);
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("addr").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("addr").value = jibunAddr;
				}
			}
		}).open();
}

$("#btnUpdate").click(()=>{
	let data = {
			loginId: $("#userId").val(),
			loginPassword: $("#password").val(),
			companyName: $("#username").val(),
			companyEmail: $("#email").val(),
			companyPicture: $("previewImg").val(),
			companyPhoneNumber: $("#phonenumber").val(),
			companyAddress: $("#post").val() + "," + $("#addr").val() + "," + $("#detail_address").val(),
		};
	
	$.ajax("/company/inform/update",{
		type: "PUT",
		dataType: "JSON",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json"
		}
	}).done((res) =>{
		if(res.code ==1){
			alert("수정 성공");
		}
		else{
			alert("수정 실패");
		}
	});
});
</script>
<script src="/js/available.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>