
$("#btnUsernameSameCheck").click(() => {
});
$("#pw2").keyup((event) => {
	event.preventDefault();
	if ($("#password").val() != $("#pw2").val()) {
		$("#span_valcheck").css("visibility", "visible");
		$("#btnJoin").attr(`disabled`, true);
	} else {
		$("#span_valcheck").css("visibility", "hidden");
		$("#btnJoin").removeAttr(`disabled`);
	}
});


$("#btnJoin").click(() => {
	companyjoin();
});


// 회사 가입 버튼 클릭 시
function companyjoin(){
		let data = {
		loginId: $("#userId").val(),
		loginPassword: $("#userId").val(),
		companyName: $("#username").val(),
		companyEmail: $("#email").val(),
		companyPhoneNumber: $("#phonenumber").val(),
		companyAddress: $("#member_post").val() + "," + $("#member_addr").val() + "," + $("#detail_address").val(),
	};

	$.ajax("/join/company", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json" // spring에게 알려주는 것 - json으로 보내겠다. mime type
		}
	}).done((res) => {
		console.log(res);
	});
}


function findAddr() {
	new daum.Postcode(
		{
			oncomplete: function(data) {

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


//유효성 검사
function joinform_check() {


	//변수에 담아주기
	var userId = document.getElementById("userId");
	var password1 = document.getElementById("password1");
	var username = document.getElementById("username");
	var phonenumber = document.getElementById("phonenumber");
	var email = $("#email").val();
	var addr = document.getElementById("addr");

	//아이디 입력하지 않았을때
	if ((userId.value) == "") {
		alert("아이디를 입력하지 않았습니다.");
		userId.focus();
		return false;
	}


	//비밀번호
	var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	if (!pwdCheck.test(password1.value)) {
		alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		password1.focus();
		return false;
	};

	if (!pwdCheck.test(password2.value)) {
		alert("비밀번호 확인을 입력하지 않았습니다.");
		password2.focus();
		return false;
	};


	//이름 입력하지 않았을때
	if ((username.value) == "") {
		alert("이름을 입력하지 않았습니다.");
		username.focus();
		return false;
	}


	var reg = /^[0-9]+/g; //숫자만 입력하는 정규식

	//전화번호 입력하지 않았을때
	if ((phonenumber.value) == "") {
		alert("전화번호를 입력하지 않았습니다.");
		phonenumber.focus();
		return false;
	}

	//전화번호 유효성
	if (!reg.test(phonenumber.value)) {
		alert("전화번호는 숫자만 입력할 수 있습니다.");
		phonenumber.focus();
		return false;
	}


	//이메일 유효성 검사
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	if (email.match(regExp) != null) {
	}
	else {
		alert("이메일 형식으로 입력해야 합니다.");
		return false;
	}


	if ((addr.value) == "") {
		alert("주소를 입력하지 않았습니다.");
		addr.focus();
		return false;
	}

	document.join_form.submit();

}

//비밀번호 같은지 확인
function test() {
	var p1 = document.getElementById('password1').value;
	var p2 = document.getElementById('password2').value;
	if (p1 != p2) {
		alert("비밀번호가 일치 하지 않습니다");
		return false;
	} else {
		alert("비밀번호가 일치합니다");
		return true;
	}


}


//비밀번호 실시간으로 체크해서 틀리면 수정버튼 잠기고 글자 띄우는 함수
$("#pw2").keyup((event) => {
	event.preventDefault();
	if ($("#password").val() != $("#pw2").val()) {
		$("#span_valcheck").css("visibility", "visible");
		$("#btnJoin").attr(`disabled`, true);
	} else {
		$("#span_valcheck").css("visibility", "hidden");
		$("#btnJoin").removeAttr(`disabled`);
	}
});

