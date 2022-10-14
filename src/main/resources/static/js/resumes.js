// 이력서 작성
$("#btnSave").click(()=>{
	insert();
});

function insert(){	
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
	
	$.ajax("/personal/resumes",{
		type: "POST",
		dataType: "json", 
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res)=>{
		if(res.code == 1){
			alert("이력서 등록 성공");
			location.href="/main";
		}else{
			alert("이력서 등록 실패");
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
			alert("이력서 수정 성공");
			location.href="/main";
		}else{
			alert("이력서 수정 실패");
		}
	});																							
}		