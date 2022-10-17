// 이력서 작성
$("#btnSave").click(() => {
	insert();
});

function insert() {
	let data = {
		personalId: $("#personalId").val(),
		resumesTitle: $("#resumesTitle").val(),
		resumesPicture: $("#resumesPicture").val(),
		resumesIntroduce: $("#resumesIntroduce").val()
	}

	$.ajax("/personal/resumes", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			location.href = "/main";
		} else {
			alert("이력서 등록에 실패하였습니다.");
		}
	});
}

// 이력서 보기
let resumesId = $("#resumesId").val();

$("#btnUpdate").click(() => {
	location.href = "/personal/resumes/" + resumesId + "/update";
});

// 이력서 수정
$("#btnUpdate").click(() => {
	update();
});

function update() {
	let data = {
		resumesTitle: $("#resumesTitle").val(),
		resumesPicture: $("#resumesPicture").val(),
		resumesIntroduce: $("#resumesIntroduce").val()
	};

	let resumesId = $("#resumesId").val();

	$.ajax("/personal/resumes/" + resumesId + "/update", {
		type: "PUT",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert("이력서 수정 성공 했답니다 유후");
			location.href = "/main";
		} else {
			alert("이력서 수정에 실패..");
		}
	});
}
// summernote
$('#resumes_introduce').summernote({
	placeholder: '자기소개글을 써주세요',
	tabsize: 2,
	height: 300,
	toolbar: [
		['style', ['style']],
		['font', ['bold', 'underline', 'clear']],
		['color', ['color']],
		['para', ['ul', 'ol', 'paragraph']],
		['table', ['table']],
		['insert', ['link', 'picture', 'video']],
		['view', ['fullscreen', 'codeview', 'help']]
	]
});
// (임시)파일업로드
$(() => {
	$('#fileSubmitBtn').on("click", function() {
		var form = $('#attachFile')[0].files[0];
		var formData = new FormData();

		formData.append('files', form);
		$.ajax({
			type: "POST",
			enctype: 'multipart/form-data',
			url: "/test/main2.do",
			data: formData,
			processData: false,
			contentType: false,
			cache: false,
			timeout: 600000,
			success: function(data) {
				alert("성공");
			},
			error: function(e) {
				alert("실패");
			}
		});
	});
})
// (임시)이미지업로드
	 const fileInput = document.getElementById("fileUpload");
     const handleFiles = (e) => {
         const selectedFile = [...fileInput.files];
         const fileReader = new FileReader();
         fileReader.readAsDataURL(selectedFile[0]);
         fileReader.onload = function () {
             document.getElementById("previewImg").src = fileReader.result;
         };
     };
     fileInput.addEventListener("change", handleFiles);
function show() {
    document.querySelector(".background").className = "background show";
}

function close() {
    document.querySelector(".background").className = "background";
}
document.querySelector("#show").addEventListener('click', show);
document.querySelector("#close").addEventListener('click', close);