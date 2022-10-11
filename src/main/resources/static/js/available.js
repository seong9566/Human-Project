let UsernameSameCheck = {
	loginId : null,
	isCheck : 0
}


$("#btnUsernameSameCheck").click(() => {


	if ($("#userId").val() == "") {
		alert("아이디를 입력하여 주세요");
		return;
	} else {
		let userId = $("#userId").val();
		$.ajax("/checkId/" + userId, {
			type: "GET",
			dataType: "JSON",
		}).done((res) => {
			if (res.code == 1) {
				alert(res.message);
				UsernameSameCheck.loginId = $("#userId").val();
				UsernameSameCheck.isCheck = true;
			} else {
				alert(res.message);
				UsernameSameCheck.isCheck = false;
			}
		});
	}
});

$("#passwordConfirm").keyup((event) => {
	event.preventDefault();
	if ($("#password").val() != $("#passwordConfirm").val()) {
		$("#span_valcheck").css("visibility", "visible");
		$("#btnSave").attr(`disabled`, true);
	} else {
		$("#span_valcheck").css("visibility", "hidden");
		$("#btnSave").removeAttr(`disabled`);
	}
});


$("#btnSave").click(() => {
	if(UsernameSameCheck == 0){
		alert("아이디 중복 체크를 해주세요");
		return;
	}else if(UsernameSameCheck.loginId != $("#userId").val()){
		alert("회원가입을 진행할 유저의 아이디가 다릅니다. 진행 할 유저의 아이디 :" + UsernameSameCheck.loginId);
	}else{
		companyjoin();	
	}
});


// 회사 가입 버튼 클릭 시
function companyjoin() {
	let data = {
		loginId: $("#userId").val(),
		loginPassword: $("#userId").val(),
		companyName: $("#username").val(),
		companyEmail: $("#email").val(),
		companyPicture: $("previewImg").val(),
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
		if(res.code == 1){
			alert(res.message);
			location.href ="/main";
		}
	});
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


