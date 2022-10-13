
var stompClient = null;


$("#alarm").click(()=>{
	let userid = $("#userId").val();
	
	$.ajax("/user/alarm/"+userid,{
		type:"GET",
		data:"JSON"
	}).done((res)=>{
		if(res.code == 1 && res.data != null){
			$(".modal-body").empty();
			res.data.forEach((object)=>{
				$(".modal-body").append(`<p3>`+object.alarmMessage+`</p3>`);	
			})
			
		}
	});
});

function sendmessageToPersonal(data) {
	stompClient.send("/app/Personal", {}, data);
}

function sendmessageToCompany(data) {
	stompClient.send("/app/Company", {}, data);
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
				iconchange(confirm.data);
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
				iconchange(confirm.data);
			}

		});
	});
}

function disconnect() {
	if (stompClient !== null) {
		stompClient.disconnect();
	}
}


function iconchange(message){
	$("#alarm").removeClass("fa-regular");
	$("#alarm").addClass("fa-solid");
	$("#alarm").css("color", "red");
	$(".modal-body").empty();
	$(".modal-body").append('<p3>'+message+'</p3>');
}