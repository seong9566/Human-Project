var stompClient = null;


$("#alarm").click(() => {
	refreshalarm();
});

function sendmessageToPersonal(resumesId) {
	stompClient.send("/app/Company/Likeresume/" + resumesId, {}, $("#userId").val());
}

function sendmessageToCompany(companyId) {
	stompClient.send("/app/Personal/LikeCompany/" + companyId, {}, $("#userId").val());
}

function sendmessageToPersonalForTopic(companyId, companyName) {
	stompClient.send("/app/Personal/subscribe/" + companyId, {}, companyName);
}

function connectpersonal() {
	var socket = new SockJS('/personal_end_point');
	stompClient = Stomp.over(socket);
	let userId = $("#userId").val();
	findnotreadalarm(userId);
	stompClient.connect({}, () => {
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


	stompClient.connect({}, () => {
		stompClient.subscribe('/queue/Personal/' + userId, (test) => {
			let confirm = JSON.parse(test.body);
			if (confirm.code == 1) {
				iconchange();
			}
		});
		let subscribeinfo = JSON.parse(sessionStorage.getItem("subscribe"));
		for (let i = 0; i < (subscribeinfo.length); i++) {
			stompClient.subscribe('/topic/Company/' + subscribeinfo[i], (test) => {
				let confirm = JSON.parse(test.body);
				if (confirm.code == 1) {
					iconchange();
					alert(confirm?.data);
				}
			});
		}
	});
}


function subscribeCompany(subscribe) {
	stompClient.subscribe('/topic/Company/' + subscribe, (test) => {
		let confirm = JSON.parse(test.body);
		if (confirm.code == 1) {
			iconchange();
		}
	});
}



function disconnect() {
	if (stompClient !== null) {
		stompClient.disconnect();
		sessionStorage.clear();
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
		$("#alarm").css("color", "green");
	}
}