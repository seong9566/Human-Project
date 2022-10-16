function join() {
	let data = {
		loginId: $("#userId").val(),
		loginPassword: $("#password").val(),
		personalName: $("#username").val(),
		personalEmail: $("#email").val(),
		personalPhoneNumber: $("#phonenumber").val(),
		personalEducation:$('input[type=radio][name=contact]:checked').val(),
		personalAddress:$("#post").val() + "," + $("#addr").val() + "," + $("#detail_address").val()
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





