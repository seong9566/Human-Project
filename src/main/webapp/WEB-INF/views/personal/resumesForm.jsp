<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="personalId" type="text" value="${principal.userinfo.personalId}" hidden>

	<div id="main">
		<br /> <input id="resumesTitle" type="text" class="form-control"
			placeholder="이력서 제목을 입력해주세요.">
		<div class="tool">
			<div class="left">
				<br />
				<h3>개인정보</h3>
				<div class="left_input">
					<br />
					<div id="usersName">${principal.userinfo.personalName}</div>
					<br />
					<div id="phoneNumber">${personalInfoPS.personalPhoneNumber}</div>
					<br />
					<div id="email">${personalInfoPS.personalEmail}</div>

				</div>
			</div>
			
			<div class="right">
				<img id="previewImg" />
			</div>
			
		</div>
		<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
		<div class="form">
			<h2>자기소개서 작성</h2>
			<input id="resumesIntroduce" type="text" class="form-control"
			placeholder="자기소개를 입력해주세요."/>
		</div>

		<div class="btn-update">
			<button id="btnSave" type="button" class="btn btn-primary">이력서등록하기</button>
		</div>

	</div>
	
<script>
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
	</script>
	
<%@ include file="../layout/footer.jsp"%>