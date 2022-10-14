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
	let data = {
		loginPassword: $("#password").val(),
		companyName: $("#companyName").val(),
		companyEmail: $("#companyEmail").val(),
		companyPicture : $("#fileUpload").val(),
		companyPhoneNumber: $("#companyPhoneNumber").val(),
		companyAddress: $("#zoneCode").val() + "," + $("#roadJibunAddr").val() + "," + $("#detailAddress").val()
	};
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
			location.href="/company/inform";
		} else {
			alert("업데이트에 실패하였습니다");
		}
	});
}
