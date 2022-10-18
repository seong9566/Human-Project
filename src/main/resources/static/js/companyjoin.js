
function setThumbnail(event) {
	let reader = new FileReader();

	reader.onload = function(event) {
		if (document.getElementById("newImg")) {
			document.getElementById("newImg").remove();
		}
		let img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("id", "newImg");
		document.querySelector("#imageContainer").appendChild(img);
	};
	reader.readAsDataURL(event.target.files[0]);
}

//체크박스 
$('#etc').click(function() {
	var checked = $('#etc').is(':checked');
	if (checked)
		$('input:checkbox').prop('checked', true);
});


// 회사 가입 버튼 클릭 시
function join() {
	let formData = new FormData();
	let data = {
		loginId: $("#userId").val(),
		loginPassword: $("#password").val(),
		companyName: $("#username").val(),
		companyEmail: $("#email").val(),
		companyPhoneNumber: $("#phonenumber").val(),
		companyAddress: $("#post").val() + "," + $("#addr").val() + "," + $("#detail_address").val(),
	};
	formData.append('file', $("#file")[0].files[0]);
	formData.append('joinDto', new Blob([JSON.stringify(data)], { type: "application/json" }));

	console.log(data);
	$.ajax("/join/company", {
		type: "POST",
		data: formData,
		 processData: false,    
		   		contentType: false, 
				enctype : 'multipart/form-data'
	}).done((res) => {
		if (res.code == 1) {
			alert(res.message);
			location.href = "/main";
		} else if (res.code == -1) {
			alert(res.message);
		}
	});
}