// 이력서 작성
function clickCheck(target) {
    document.querySelectorAll(`input[type=radio]`)
        .forEach(el => el.checked = false);
    target.checked = true;
}

$('#etc').click(function() {
	var checked = $('#etc').is(':checked');
	if (checked)
		$('input:checkbox').prop('checked', true);
});

$("#btnSave").click(()=>{
	insert();
});

function insert(){	
	let data = {
		personalId: $("#userinfoId").val(),
		resumesTitle: $("#resumesTitle").val(),
		resumesPicture: $("#resumesPicture").val(),
		resumesPlace: $("#resumesPlace").val(),
		oneYearLess: $("input:radio[value='oneYearLess']").is(":checked"),
		twoYearOver: $("input:radio[value='twoYearOver']").is(":checked"),
		threeYearOver: $("input:radio[value='threeYearOver']").is(":checked"),
		fiveYearOver: $("input:radio[value='fiveYearOver']").is(":checked"),
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
			location.href="/personal/myresumesList";
		}else{
			alert(res.message);
		}
	});
}

//이력서 수정
$("#btnUpdate").click(()=>{
		update();
});
	
function update(){
	let resumesId = $("#resumesId").val();
	let data = {
		categoryId: $("#resumesCategoryId").val(),
		careerId: $("#careerId").val(),
		portfolioId: $("#portfolioId").val(),
		resumesTitle: $("#resumesTitle").val(),
		resumesPicture: $("#resumesPicture").val(),
		resumesIntroduce: $("#resumesIntroduce").val(),
		resumesPlace: $("#resumesPlace").val(),
		oneYearLess: $("input:radio[value='oneYearLess']").is(":checked"),
		twoYearOver: $("input:radio[value='twoYearOver']").is(":checked"),
		threeYearOver: $("input:radio[value='threeYearOver']").is(":checked"),
		fiveYearOver: $("input:radio[value='fiveYearOver']").is(":checked"),
		portfolioSource: $("#portfolioSource").val(),
		portfolioFile: $("#portfolioFile").val(),
		categoryFrontend: $("input:checkbox[value='categoryFrontend']").is(":checked"),
		categoryBackend: $("input:checkbox[value='categoryBackend']").is(":checked"),
		categoryDevops: $("input:checkbox[value='categoryDevops']").is(":checked")
	};	
	
	console.log(data);
	$.ajax("/personal/resumes/update/"+resumesId,{
		type: "PUT",
		dataType: "json", 
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res)=>{
		if(res.code == 1){
			alert("이력서 수정 성공");
			location.href="/personal/resumes/"+resumesId; 
		}else{
			alert(res.message);
		}
	});																							
}
		
// 이력서 삭제
function deleteById(id){				
	$.ajax("/personal/resumes/delete/"+id,{
		type: "delete",
		dataType: "json"
	}).done((res)=>{
		console.log(res);
		if(res.code == 1){
			alert("삭제되었습니다.");
			location.reload();
		}else{
			alert("삭제에 실패하였습니다.");
		}
	});		
}