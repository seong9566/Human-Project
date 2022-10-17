var stompClient = null;


$("#alarm").click(() => {
	refreshalarm();
});

function sendmessageToPersonal(resumesId) {
	stompClient.send("/app/Company/Likeresume/" + resumesId, {}, $("#userId").val());
}

function sendmessageToCompany(data) {
	stompClient.send("/app/Company/", {}, data);
}

function connectpersonal() {
	var socket = new SockJS('/personal_end_point');
	stompClient = Stomp.over(socket);
	let userId = $("#userId").val();
	findnotreadalarm(userId);
	stompClient.connect({}, (frame) => {
		stompClient.subscribe('/topic/Company/', (test) => {
			let confirm = JSON.parse(test.body);
			if (confirm.code == 1) {
				iconchange();
			}
		});
		stompClient.subscribe('/queue/Company/' + userId, (test) => {
			let confirm = JSON.parse(test.body);
			if (confirm.code == 1) {
				iconchange();
			}
		});
	});
}

function connectcompany() {
	var socket = new SockJS('/company_end_point');
	stompClient = Stomp.over(socket);
	let userId = $("#userId").val();
	findnotreadalarm(userId);
	stompClient.connect({}, (frame) => {
		stompClient.subscribe('/topic/Personal/', (test) => {
			let confirm = JSON.parse(test.body);
			if (confirm.code == 1) {
				iconchange();
			}
		});
		stompClient.subscribe('/queue/Personal/' + userId, (test) => {
			let confirm = JSON.parse(test.body);
			if (confirm.code == 1) {
				iconchange();
			}
		});
	});
}



function disconnect() {
	if (stompClient !== null) {
		stompClient.disconnect();
	}
}

function refreshalarm() {

	let userId = $("#userId").val();
	let alarmId = [];

	$.ajax("/user/alarm/" + userId, {
		type: "GET",
		data: "JSON"
	}).done((res) => {
		if (res.code == 1 && res.data != null) {
			$(".modal-body").empty();
			res.data.forEach((object) => {
				$(".modal-body").append(`<div style="display:inline-block; width:480px; height:70px;"><p3>`
					+ object.alarmMessage + `</p3><span style="float:right"><button class="btn-close" type="button" 
				 onclick="deletealarm(` + object.alarmId + `)"></button></span></div>`);

				if (!object.alarmCheck)
					alarmId.push(object.alarmId);
			})
			if (alarmId.length > 0)
				readedalarm(alarmId);
		} else {
			$(".modal-body").empty();
			$(".modal-body").append(`<h3>내게 온 알림이 없습니다.</h3>`);
		}
	});
}


function findnotreadalarm(userId) {
	$.ajax("/user/alarm/notreaded/" + userId, {
		type: "GET",
		dataType: "json"
	}).done((res) => {
		if (res.code == 1) {
			res.data != false ? iconchange() : false
		}
	});
}

function deletealarm(alarmId) {

	$.ajax("/user/alarm/" + alarmId, {
		type: "DELETE",
		data: "JSON"
	}).done((res) => {
		if (res.code == 1) {
			refreshalarm();
		}
	});

}

function readedalarm(alarmId) {
	$.ajax("/user/alarm/readed", {
		type: "PUT",
		data: { alarmsId: alarmId },
		Headers: {
			"Content-Type": "application/x-www-form-urlencoded; charset=UTF-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			refreshalarm();
		}
	});
}


function iconchange() {
	let alarmState = $("#alarm").hasClass("fa-regular");
	if (alarmState) {
		$("#alarm").removeClass("fa-regular");
		$("#alarm").addClass("fa-solid");
		$("#alarm").css("color", "red");
	}
}

function iconchangToRead() {
	let alarmState = $("#alarm").hasClass("fa-solid");
	if (alarmState) {
		$("#alarm").removeClass("fa-solid");
		$("#alarm").addClass("fa-regular");
		$("#alarm").css("color", "white");
	}
}