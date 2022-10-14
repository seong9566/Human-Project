<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="resumesId" type="text"
	value="${detailResumesDtoPS.resumesId}">
<input id="resumesCategoryId" type="text"
	value="${detailResumesDtoPS.resumesCategoryId}">
<input id="careerId" type="text"
	value="${detailResumesDtoPS.careerId}">
<input id="portfolioId" type="text"
	value="${detailResumesDtoPS.portfolioId}">

<div id="main">
	<br /> 
	<input id="resumesTitle" type="text" class="form-control"
		placeholder="수정할 이력서 제목을 입력해주세요." value="${detailResumesDtoPS.resumesTitle}">
	<div class="tool">
		<div class="left">
			<br /> <br />
				<h3>개인정보 </h3>
				<div class="left_input">
					<br />
					<div id="usersName">${detailResumesDtoPS.personalName}</div>
					<br />
					<div id="phoneNumber">${detailResumesDtoPS.personalPhoneNumber}</div>
					<br />
					<div id="email">${detailResumesDtoPS.personalEmail}</div>
					<br />
					<div id="address">${detailResumesDtoPS.personalAddress}</div>
					<br />
					<div id="education">${detailResumesDtoPS.personalEducation}</div>
				</div>
			</div>

			<div class="mb-3">◆증명사진</div>
			<div class="right">
				<img id="previewImg" />
			</div>
			<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
			
			<input id="resumesPicture" type="text" class="form-control"
			placeholder="사진 들어가는 자리입니다. " />
	
	<div class="mb-3">◆경력사항</div>
			<div>
				<label><input type="checkbox" value="oneYearLess" >oneYearLess</label><br />
				<label><input type="checkbox" value="twoYearOver" >twoYearOver</label><br />
				<label><input type="checkbox" value="threeYearOver" >threeYearOver</label><br />
				<label><input type="checkbox" value="fiveYearOver" >fiveYearOver</label>
			</div>
			
		<div class="mb-3">◆관심분야</div>
			<div>
				<label><input type="checkbox" value="categoryFrontend" >frontend</label><br />
				<label><input type="checkbox" value="categoryBackend" >backend</label><br />
				<label><input type="checkbox" value="categoryDevops" >devops</label><br />
				<label><input id="etc" type="checkbox" value="etc" >etc</label>
			</div>
			
		<div class="mb-3">◆희망근무지역</div>
		<input id="resumesPlace" value="${detailResumesDtoPS.resumesPlace}" type="text" class="form-control" />	
						
		<div class="mb-3">◆Github 주소 or Blog 주소</div>
			<input id="portfolioSource" value="${detailResumesDtoPS.portfolioSource}" type="text" class="form-control" />	
			
		<div class="mb-3">◆포트폴리오</div>	
		<input id="portfolioFile" value="${detailResumesDtoPS.portfolioFile}"type="text" class="form-control" />			
		</div>
	
	<br /> <br />
	<div class="form">
		<h2>자기소개서 작성</h2>
		<input id="resumesIntroduce" type="text" class="form-control"
			placeholder="수정할 자기소개를 입력해주세요." value="${detailResumesDtoPS.resumesIntroduce}"/>
	</div>

	<div class="btn-update">
		<button id="btnUpdate" type="button" class="btn btn-primary">이력서수정완료</button>
	</div>

</div>

<script>
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
			location.href="/main"; 
		}else{
			alert("이력서 수정 실패");
		}
	});																							
}

</script>

<%@ include file="../layout/footer.jsp"%>