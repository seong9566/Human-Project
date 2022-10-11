function join() {
	let data = {
		loginId: $("#userId").val(),
		loginPassword: $("#password").val(),
		personalName: $("#username").val(),
		personalEmail: $("#email").val(),
		personalPhoneNumber: $("#phonenumber").val(),
		categoryFrontend: $("input:checkbox[value='frontend']").is(":checked"),
		categoryBackend: $("input:checkbox[value='backend']").is(":checked"),
		categoryDevops: $("input:checkbox[value='devops']").is(":checked"),
	};

	$.ajax("/join/personal", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert(res.message);
			location.href = "/main";
		}
	});
}