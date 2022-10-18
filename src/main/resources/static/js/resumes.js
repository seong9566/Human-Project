// 이력서 작성
$("#btnSave").click(() => {
	insert();
});

function insert() {
	let data = {
		personalId: $("#userinfoId").val(),
		resumesTitle: $("#resumesTitle").val(),
		resumesPicture: $("#resumesPicture").val(),
		resumesPlace: $("#resumesPlace").val(),
		oneYearLess: $("input:checkbox[value='oneYearLess']").is(":checked"),
		twoYearOver: $("input:checkbox[value='twoYearOver']").is(":checked"),
		threeYearOver: $("input:checkbox[value='threeYearOver']").is(":checked"),
		fiveYearOver: $("input:checkbox[value='fiveYearOver']").is(":checked"),
		portfolioSource: $("#portfolioSource").val(),
		portfolioFile: $("#portfolioFile").val(),
		categoryFrontend: $("input:checkbox[value='categoryFrontend']").is(":checked"),
		categoryBackend: $("input:checkbox[value='categoryBackend']").is(":checked"),
		categoryDevops: $("input:checkbox[value='categoryDevops']").is(":checked"),
		resumesIntroduce: $("#resumesIntroduce").val()
	};

	$.ajax("/personal/resumes", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert("이력서 등록 성공");
			location.href = "/main";
		} else {
			alert("이력서 등록 실패");
		}
	});
}

// 이력서 보기
let resumesId = $("#resumesCategoryId").val();

$("#btnUpdate").click(() => {
	location.href = "/personal/resumes/" + resumesId + "/update";
});

//이력서 수정
$("#btnUpdate").click(() => {
	update();
});

function update() {
	let resumesId = $("#resumesId").val();
	let data = {
		categoryId: $("#resumesCategoryId").val(),
		careerId: $("#careerId").val(),
		portfolioId: $("#portfolioId").val(),
		resumesTitle: $("#resumesTitle").val(),
		resumesPicture: $("#resumesPicture").val(),
		resumesIntroduce: $("#resumesIntroduce").val(),
		resumesPlace: $("#resumesPlace").val(),
		oneYearLess: $("input:checkbox[value='oneYearLess']").is(":checked"),
		twoYearOver: $("input:checkbox[value='twoYearOver']").is(":checked"),
		threeYearOver: $("input:checkbox[value='threeYearOver']").is(":checked"),
		fiveYearOver: $("input:checkbox[value='fiveYearOver']").is(":checked"),
		portfolioSource: $("#portfolioSource").val(),
		portfolioFile: $("#portfolioFile").val(),
		categoryFrontend: $("input:checkbox[value='categoryFrontend']").is(":checked"),
		categoryBackend: $("input:checkbox[value='categoryBackend']").is(":checked"),
		categoryDevops: $("input:checkbox[value='categoryDevops']").is(":checked")
	};

	console.log(data);
	$.ajax("/personal/resumes/update/" + resumesId, {
		type: "PUT",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert("이력서 수정 성공");
			location.href = "/main";
		} else {
			alert("이력서 수정 실패");
		}
	});
}

// 이력서 삭제
function deleteById(id) {
	$.ajax("/personal/resumes/delete/" + id, {
		type: "delete",
		dataType: "json"
	}).done((res) => {
		console.log(res);
		if (res.code == 1) {
			alert("삭제되었습니다.");
			location.reload();
		} else {
			alert("삭제에 실패하였습니다.");
		}
	});
}
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

$('#etc').change(function() {
	var checked = $('#etc').is(':checked');

	if (checked)
		$('input:checkbox').prop('checked', true);
	else {
		$('input:checkbox').prop('checked', false);
	}
});
$(function() {
	$('#btnlike').click(function() {
		if ($(this).html() == '좋아요') {

			$(this).html('좋아요취소');
			insertLike();
			sendmessageToPersonal($("#resumesId").val());
			insertTitle();
		}
		else {

			$(this).html('좋아요');
			deleteLike();
		}
	});
});

function insertTitle() {
	let data = {
		name: $("resume_title").val(),
	}
	console.log(data)
	$.ajax("/recommend", {
		type: "POST",
		dataType: "json",
		data: JSON.stringify(data), // http body에 들고갈 요청 데이터
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) { // 성공

		} else { // 실패
			alert("이력서등록에 실패했습니다.");
		}
	});
}



function deleteLike() {
	let resumesId = $("#resumesId").val();
	$.ajax("/personalLike/" + resumesId + "/likes", {
		type: "DELETE",
		dataType: "json",
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {

		} else {
			alert("좋아요 추가 실패");
			return;
		}
	});
}
function insertLike() {
	let resumesId = $("#resumesId").val();
	$.ajax("/personalLike/" + resumesId + "/likes", {
		type: "POST",
		dataType: "json",
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {

		} else {
			alert("좋아요 추가 실패");
			return;
		}
	});
}