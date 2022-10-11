$("#btnLogin").click(() => {
	let login_dto = {
		loginId: $("#login_id").val(),
		loginPassword: $("#login_password").val()
	}

	login(login_dto);
});


$("#btnCompanyJoin").click(()=>{
	location.href = "company/joinForm";
});

$("#btnPersonalJoin").click(()=>{
	location.href = "personal/joinForm";
});



function login(login_dto) {
	$.ajax("/login", {
		type: "POST",
		dataType: "JSON",
		data: JSON.stringify(login_dto),
		headers: {
			"Content-Type": "application/JSON; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			location.href = "/main";
		}
	});
}