<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<input id = "usersId" type="hidden" value="${companyInfo.usersId}"> 
	<input id = "companyId" type ="hidden" value="${companyInfo.companyId}">
<div class="container">
	<form>
		<h2>내 정보 수정 하기 </h2>
		<div class="mb-3 mt-3">
			◆아이디
			<input id="loginId" type="text" value="${companyInfo.loginId}" readonly>
		</div>
		
		<div class="mb-3">
			◆비밀번호 수정 
			<input id="password" type="password" class="form-control"
				placeholder="수정할 비밀번호를 입력해주세요"  value = "${companyInfo.loginPassword}">
		</div>
		
		<div class="mb-3"></div>
		
		<div class="mb-3">
			◆회사명 <input id="companyName" type="text" class="form-control"
				placeholder="회사명을 입력해주세요" value = "${companyInfo.companyName}">
		</div>
		
		<div class="mb-3">
			◆전화번호<input id="companyPhoneNumber" type="text" class="form-control"
				placeholder="전화번호를 입력해주세요"  value = "${companyInfo.companyPhoneNumber}">
		</div>
		<div class="mb-3">
			◆이메일<input id="companyEmail" type="email" class="form-control"
				placeholder="이메일을 입력해주세요" value = "${companyInfo.companyEmail}">
		</div>
		
		<div class="mb-3">◆회사 사진</div>
		<div class="mb-3"></div>
		<img id="previewImg" style="height: 250px;"/><br/> 
		<input type="file" id="fileUpload" accept='image/*' style="margin-left:0;"  />

		<div class="mb-3">◆주소</div>
		<input id="zoneCode" type="text" value="${address.zoneCode }" readonly onclick="findAddr()">
		<button id="updateAddress" type="button" class="btn btn-primary" onclick="findAddr()">우편번호수정</button>
		<br> <input id="roadJibunAddr" type="text" value="${address.roadJibunAddr}" style="width: 620px;" readonly>
		<input id="detailAddress"  type="text" value="${address.detailAddress }" style="width: 620px;">

	</form>
	<div class="mb-5"></div>
	<div class="d-grid gap-1 col-2 mx-auto">
		<button id="btnUpdate" type="button" class="btn btn-primary">수정완료</button>
	</div>
</div>
<script>
//사진업로드
const fileInput = document.getElementById("fileUpload");
const handleFiles = (e) => {
	const selectedFile = [...fileInput.files];
	const fileReader = new FileReader();
	fileReader.readAsDataURL(selectedFile[0]);
	fileReader.onload = function() {
		document.getElementById("previewImg").src = fileReader.result;
	};
};

//주소불러오기
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
				document.getElementById('zoneCode').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("roadJibunAddr").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("roadJibunAddr").value = jibunAddr;
				}
			}
		}).open();
}

$("#btnUpdate").click(() => {
	update();	
});

//업데이트 버튼 클릭시 
function update() {
	let companyId = $("#companyId").val();
	let userId = $("#usersId").val();
		
	let data = {
		loginPassword: $("#password").val(),
		companyName: $("#companyName").val(),
		companyEmail: $("#companyEmail").val(),
		companyPicture : $("#fileUpload").val(),
		companyPhoneNumber: $("#companyPhoneNumber").val(),
		companyAddress: $("#zoneCode").val() + "," + $("#roadJibunAddr").val() + "," + $("#detailAddress").val()
	};
	
	console.log(data);
	
	$.ajax("/company/inform/update", {
		type: "PUT",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert("회원 수정 완료");
		} else {
			alert("업데이트에 실패하였습니다");
		}
	});
}

</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<%@ include file="../layout/footer.jsp"%>