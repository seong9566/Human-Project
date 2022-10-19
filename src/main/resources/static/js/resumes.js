//사진 미리 보기
function setThumbnail(event) {
    let reader = new FileReader();
    reader.onload = function (event) {
        if (document.getElementById("newImg")) {
            document.getElementById("newImg").remove();
        }
        let img = document.createElement("img");
        let oldImg = $("#oldImg");
        oldImg.remove();
        img.setAttribute("src", event.target.result);
        img.setAttribute("id", "newImg");
        document.querySelector("#image_container").appendChild(img);
    };
    reader.readAsDataURL(event.target.files[0]);
}

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
<<<<<<< HEAD
=======
	let formData = new FormData();
>>>>>>> 1b1b15bb711df65e87c103cbcf0ff4efc8b62c70
	let year_check = document.querySelectorAll('input[name="year"]:checked').length;
		if(year_check == 0) {
		    alert('경력사항을 하나 이상 선택해주세요.')
		    return false;
	    }
    
	let interest_check = document.querySelectorAll('input[name="interest"]:checked').length;
		if(interest_check == 0) {
		    alert('관심분야를 하나 이상 선택해주세요.')
		    return false;
	    }
<<<<<<< HEAD
	   	    
=======

	
>>>>>>> 1b1b15bb711df65e87c103cbcf0ff4efc8b62c70
	let data = {
		personalId: $("#userinfoId").val(),
		resumesTitle: $("#resumesTitle").val(),
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
	formData.append('file', $("#file")[0].files[0]);
	formData.append('insertResumesDto', new Blob([JSON.stringify(data)], { type: "application/json" }));
	$.ajax("/personal/resumes",{
		type: "POST",
		data: formData,
	 	processData: false,    
   		contentType: false, 
		enctype : 'multipart/form-data'
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
<<<<<<< HEAD
=======
	let formData = new FormData();
>>>>>>> 1b1b15bb711df65e87c103cbcf0ff4efc8b62c70
	let year_check = document.querySelectorAll('input[name="year"]:checked').length;
	if(year_check == 0) {
	    alert('경력사항을 하나 이상 선택해주세요.')
	    return false;
    }
    
	let interest_check = document.querySelectorAll('input[name="interest"]:checked').length;
	if(interest_check == 0) {
	    alert('관심분야를 하나 이상 선택해주세요.')
	    return false;
    }
	    
	let resumesId = $("#resumesId").val();
	let data = {
		categoryId: $("#resumesCategoryId").val(),
		careerId: $("#careerId").val(),
		portfolioId: $("#portfolioId").val(),
		resumesTitle: $("#resumesTitle").val(),
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
	formData.append('file', $("#file")[0].files[0]);
	formData.append('updateResumesDto', new Blob([JSON.stringify(data)], { type: "application/json" }));

	$.ajax("/personal/resumes/update/"+resumesId,{
		type: "PUT",
		data: formData,
		 processData: false,    
		   		contentType: false, 
				enctype : 'multipart/form-data'
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