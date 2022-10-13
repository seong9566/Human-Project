// 이력서 작성
$("#btnSave").click(()=>{
	insert();
});

function insert(){
	let data = {
			personalId: $("#personalId").val(),
			resumesTitle: $("#resumesTitle").val(),
			resumesPicture: $("#resumesPicture").val(),
			resumesIntroduce: $("#resumesIntroduce").val()
	}
	
	$.ajax("/personal/resumes",{
		type: "POST",
		dataType: "json", 
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res)=>{
		if(res.code == 1){
			location.href="/main";
		}else{
			alert("이력서 등록에 실패하였습니다.");
		}
	});
}

// 이력서 보기
let resumesId = $("#resumesId").val();

$("#btnUpdate").click(()=>{
	location.href="/personal/resumes/"+ resumesId + "/update";
});

// 이력서 수정
$("#btnUpdate").click(()=>{
		update();
	});
	
	function update(){
		let data = {
				resumesTitle: $("#resumesTitle").val(),
				resumesPicture: $("#resumesPicture").val(),
				resumesIntroduce: $("#resumesIntroduce").val()
		};
		
		let resumesId = $("#resumesId").val();
		
		$.ajax("/personal/resumes/"+ resumesId + "/update" ,{
			type: "PUT",
			dataType: "json", 
			data: JSON.stringify(data),
			headers: {
				"Content-Type": "application/json; charset=utf-8"
			}
		}).done((res)=>{
			if(res.code == 1){
				alert("이력서 수정 성공 했답니다 유후");
				location.href="/main";
			}else{
				alert("이력서 수정에 실패..");
			}
		});
	}