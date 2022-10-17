//업데이트 버튼 클릭시
$("#btnUpdate").click(() => {
	update();
});

function update(){
	let data ={
			loginPassword: $("#password").val(),
			personalName: $("#username").val(),
			personalEmail: $("#email").val(),
			personalPhoneNumber: $("#phonenumber").val(),
			personalEducation:$('input[type=radio][name=contact]:checked').val(),
			personalAddress:$("#post").val() + "," + $("#addr").val() + "," + $("#detail_address").val()
	};
	
	if(!joinform_check()){ 
		return;
	}
	$.ajax("/personal/update", {
		type: "PUT",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert("회원 수정 완료");
			location.href="/personal/info";
		} else {
			alert("업데이트에 실패하였습니다");
		}
	});
	
	
	
}


function joinform_check() {
	        //변수에 담아주기
	        var userId = document.getElementById("userId");
	        var password = document.getElementById("password");
	        var username = document.getElementById("username");
	        let phonenumber = document.getElementById("phonenumber");
	        let email = $("#email").val();     
	     
	        //아이디 입력하지 않았을때
	        if ((userId.value) == ""){
	               alert("아이디를 입력하지 않았습니다.");
	               userId.focus();
	               return false;
	           }
	        
	     
	        //비밀번호
	        var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	        
	        if (!pwdCheck.test(password.value)) {
	          alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
	          password.focus();
	          return false;
	        };
	        
	        
	        //이름 입력하지 않았을때
	        if ((username.value) == ""){
	             alert("이름을 입력하지 않았습니다.");
	             username.focus();
	             return false;
	         }
	        
	            
	        var reg = /^[0-9]+/g; //숫자만 입력하는 정규식
	        
	        //전화번호 입력하지 않았을때
	        if ((phonenumber.value) == ""){
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
			return true;
	   }



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
				document.getElementById('post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("addr").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("addr").value = jibunAddr;
				}
			}
		}).open();
}
