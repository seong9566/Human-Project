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


	$('#etc').click(function() {
		var checked = $('#etc').is(':checked');

		if (checked)
			$('input:checkbox').prop('checked', true);
	});
	   //유효성겁사
	   function joinform_check() {
	        //변수에 담아주기
	        var userId = document.getElementById("userId");
	        var password1 = document.getElementById("password1");
	        var username = document.getElementById("username");
	        var phonenumber = document.getElementById("phonenumber");
	        var email = $("#email").val();     
	     
	        //아이디 입력하지 않았을때
	        if ((userId.value) == ""){
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

	        document.join_form.submit();
	   
	   }