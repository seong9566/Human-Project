
var stompClient = null;


$("#alarm").click(()=>{
	refreshalarm();
});

function sendmessageToPersonal(data) {
	stompClient.send("/app/Personal/"+$("#userId").val(), {}, data);
}

function sendmessageToCompany(data) {
	stompClient.send("/app/Company/", {}, data);
}

function connectpersonal() {
	var socket = new SockJS('/personal_end_point');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, (frame) => {
		//console.log('Connected: ' + frame);
		stompClient.subscribe('/topic/Company', function(test) {
			let confirm = JSON.parse(test.body);
			if(confirm.code == 1)
			{
				iconchange();
			}
		});
	});
}

function connectcompany() {
	var socket = new SockJS('/company_end_point');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
		//console.log('Connected: ' + frame);
		stompClient.subscribe('/topic/Personal', function(test){
			let confirm = JSON.parse(test.body);
			console.log(confirm);
			if(confirm.code == 1)
			{
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

function refreshalarm(){
		let userid = $("#userId").val();

		$.ajax("/user/alarm/"+userid,{
		type:"GET",
		data:"JSON"
	}).done((res)=>{
		if(res.code == 1 && res.data != null){
			$(".modal-body").empty();
			res.data.forEach((object)=>{
				$(".modal-body").append(`<div style="display:inline-block; width:480px; height:70px;"><p3>`+object.alarmMessage+`</p3><span style="float:right"><button class="btn-close" type="button" onclick="deletealarm(`+object.alarmId+`)"></button></span></div>`);	
			})
		}else{
			$(".modal-body").empty();
			$(".modal-body").append(`<h3>내게 온 알림이 없습니다.</h3>`);
		}
	});	
}

function deletealarm(alarmId){
	
	$.ajax("/user/alarm/"+alarmId,{
		type:"DELETE",
		data:"JSON"
	}).done((res)=>{
		if(res.code == 1){
			refreshalarm();
		}
	});
	
}


function iconchange(){
	$("#alarm").removeClass("fa-regular");
	$("#alarm").addClass("fa-solid");
	$("#alarm").css("color", "red");
}