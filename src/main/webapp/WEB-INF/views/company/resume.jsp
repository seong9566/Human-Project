<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div id="main">
	<br /> <input id="resume_title" type="text" class="form-control" placeholder="이력서 제목을 입력해주세요.">
		<div class="tool">
			<div class="left">
				<br />
				<h3>개인정보 입력</h3>
				<div class="left_input">
					<div id="userId">sopu5555</div>
					<br />
					<div id="userName">박동훈</div>
					<br />
					<div id="phonenumber">01024102957</div>
					<br />
					<div id="email">sop55544@gmail.com</div>
					<input type="hidden" id="resumesId" value="1">
				</div>
			</div>
			<div class="right">
				<img id="previewImg" />
			</div>
		</div>
		<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
		<div class="form">
			<h2>자기소개서 작성</h2>
			<div id="summernote"></div>
		</div>
		<div class="btn-update">
			<button id="btnlike" type="button" class="btn btn-primary">좋아요</button>

			<button id="btnapply" type="button" class="btn btn-primary">연락하기</button>
		</div>
		
		
</div>
		<script>
	$(function() {
	  $('#btnlike').click( function() {
	    if( $(this).html() == '좋아요') {
	      
	      $(this).html('좋아요취소');
	      insertLike();
	      insertTitle();
	    }
	    else {
	      
	      $(this).html('좋아요');
	      deleteLike();
	    }
	  });
	});
	
	function insertTitle(){
		let data = {
				name: $("resume_title").val(),
		}
		console.log(data)
		$.ajax("/recommend",{
			type: "POST",
			dataType: "json",
			data: JSON.stringify(data), // http body에 들고갈 요청 데이터
			headers: { // http header에 들고갈 요청 데이터
				"Content-Type": "application/json; charset=utf-8"
			}
		}).done((res)=>{
			if(res.code == 1){ // 성공
				
			}else{ // 실패
				alert("이력서등록에 실패했습니다.");
			}
		});
	}
	
	
	
function deleteLike() {
	let resumesId = $("#resumesId").val();
	$.ajax("/personalLike/" + resumesId + "/likes",{
		type: "DELETE",
		dataType: "json",
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			
		} else {
			alert("좋아요 추가 실패");
			return;
		}
	});
}
function insertLike() {
	let resumesId = $("#resumesId").val();
	$.ajax("/personalLike/" + resumesId + "/likes",{
		type: "POST",
		dataType: "json",
		headers: { // http header에 들고갈 요청 데이터
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			
		} else {
			alert("좋아요 추가 실패");
			return;
		}
	});
}
</script>


<script src="/js/company.js"></script>
<script src="/js/resume.js"></script>
<%@ include file="../layout/footer.jsp"%>
				
			