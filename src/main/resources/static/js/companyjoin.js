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

fileInput.addEventListener("change", handleFiles);


//체크박스 
$('#etc').click(function() {
	var checked = $('#etc').is(':checked');
	if (checked)
		$('input:checkbox').prop('checked', true);
});


// 회사 가입 버튼 클릭 시
function join() {

	let data = {
		loginId: $("#userId").val(),
		loginPassword: $("#password").val(),
		companyName: $("#username").val(),
		companyEmail: $("#email").val(),
		companyPicture : $("#fileUpload").val(),
		companyPhoneNumber: $("#phonenumber").val(),
		companyAddress: $("#post").val() + "," + $("#addr").val() + "," + $("#detail_address").val(),
	};

	console.log(data);
	$.ajax("/join/company", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json"
		}
	}).done((res) => {
		if(res.code == 1){
			alert(res.message);
			location.href ="/main";
		}else if(res.code == -1){
			alert(res.message);
		}
	});
}
function show() {
    document.querySelector(".background").className = "background show";
}

function close() {
    document.querySelector(".background").className = "background";
}

document.querySelector("#show").addEventListener('click', show);
document.querySelector("#close").addEventListener('click', close);