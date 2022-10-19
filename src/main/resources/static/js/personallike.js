$(function() {
	$('#btnlike').click(function() {
		if ($(this).html() == '좋아요') {
			$(this).html('좋아요취소');
			insertLike();
			sendmessageToPersonal($("#resumesId").val());
		}
		else {
			$(this).html('좋아요');
			deleteLike();
		}
	});
});

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