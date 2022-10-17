<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="companyId" type="hidden" value="${principal.companyId}">
<h2>구인 공고 작성 페이지</h2>
<br />
<input id="jobPostingBoardTitle" type="text" class="form-control"
	placeholder="채용공고 제목을 작성해 주세요 ">
<div id="main">
	<br />
	<div class="tool">

		<div class="left">
			<br />
			<h3>기업정보</h3>
			<div class="left_input">
				<br />
				<div id="usersName">${principal.userinfo.companyname}</div>
				<br />
				<div id="phoneNumber">${personalInfoPS.companyphonenumber}</div>
				<br />
				<div id="email">${personalInfoPS.company_email}</div>
				<div id="주소">${personalInfoPS.companyaddress}</div>
				<div class="right">
					<div class="background">
						<div class="window">
							<div class="popup">
								<div>${company_picture}</div>
								<button id="close">팝업닫기</button>
							</div>
						</div>
					</div>
					<input id="show" type="button" value="사진확인하기" />
				</div>
			</div>
		</div>
		<br /> <br /> <br />
		<div class="mb-3">
			◆최소 경력 사항
			<div>
				<label><input type="checkbox" value="oneYearLess">oneYearLess</label><br />
				<label><input type="checkbox" value="twoYearOver">twoYearOver</label><br />
				<label><input type="checkbox" value="threeYearOver">threeYearOver</label><br />
				<label><input type="checkbox" value="fiveYearOver">fiveYearOver</label><br />
			</div>
		</div>

		<div class="mb-3">
			◆관심분야
			<div>
				<label><input type="checkbox" value="categoryFrontend">frontend</label><br />
				<label><input type="checkbox" value="categoryBackend">backend</label><br />
				<label><input type="checkbox" value="categoryDevops">devops</label><br />
			</div>
		</div>
		<div class="salaryzone">
			<h2>연봉</h2>
			<label class="form-check-label"> <input type="radio"
				class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="2000"> 2000만원 이상 <i
				class="input-helper"></i></label> <label class="form-check-label"> <input
				type="radio" class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="3000"> 3000만원 이상 <i
				class="input-helper"></i>
			</label> <label class="form-check-label"> <input type="radio"
				class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="4000"> 4000만원 이상 <i
				class="input-helper"></i></label> <label class="form-check-label"> <input
				type="radio" class="form-check-input" id="jobPostingBoardSalary"
				name="jobPostingBoardSalary" value="5000"> 5000만원 이상 <i
				class="input-helper"></i>
			</label>
			<div id="underplace">
				<div>
					<h2>회사 주소</h2>
					<input id="job_posting_board_place" type="text" class="inputtag"
						placeholder="회사주소를 입력해주세요." />
				</div>
				<br />
				<div class="form">
					<h2>구인공고 제목 및 유의사항 작성</h2>
					<input id="job_posting_board_title" type="text" class="inputtag"
						placeholder="구인공고 제목을 입력해주세요." /><br />
					<div id="job_posting_board_content"></div>
					<div>
						<h2>마감일자 등록</h2>
						<input type="datetime-local" name="starttime"
							id="job_posting_board_deadline">
					</div>
				</div>
				<div class="btn-update">
					<button id="btnresumeSave" type="button" class="btn btn-primary">구인공고
						등록하기</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
//주소불러오기
function findAddr() {
	new daum.Postcode(
		{
			oncomplete: function(data) {
				console.log(data);
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var roadAddr = data.roadAddress; // 도로명 주소 변수
				var jibunAddr = data.jibunAddress; // 지번 주소 변수
				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('post').value = data.zonecode;
				if (roadAddr !== '') {
					document.getElementById("addr").value = roadAddr;
				} else if (jibunAddr !== '') {
					document.getElementById("addr").value = jibunAddr;
				}
			}
		}).open();
}

// 채용공고 작성
$("#btnSave").click(()=>{
	insert();
});


function insert(){	
    
	let data = {
		jobPostingBoardTitle : $("#jobPostingBoardTitle").val(),
		companyId : $("#companyId").val(),
		oneYearLess: $("input:checkbox[value='oneYearLess']").is(":checked"),
		twoYearOver: $("input:checkbox[value='twoYearOver']").is(":checked"),
		threeYearOver: $("input:checkbox[value='threeYearOver']").is(":checked"),
		fiveYearOver: $("input:checkbox[value='fiveYearOver']").is(":checked"),
		categoryFrontend: $("input:checkbox[value='categoryFrontend']").is(":checked"),
		categoryBackend: $("input:checkbox[value='categoryBackend']").is(":checked"),
		categoryDevops: $("input:checkbox[value='categoryDevops']").is(":checked"),
		jobPostingBoardSalary:$('input[type=radio][name=jobPostingBoardSalary]:checked').val(),
		jobPostingBoardPlace: $("#post").val() + "," + $("#addr").val(),
		jobPostingBoardDeadline: $("#jobPostingBoardDeadline").val(),
		jobPostingBoardContent: $("#jobPostingBoardContent").val()
	};
	
	$.ajax("/company/jobPostingBoard/insert",{
		type: "POST",
		dataType: "json", 
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res)=>{
		if(res.code == 1){
			alert("채용공고 등록 성공");
			location.href="/main";
		}else{
			alert("채용공고 등록 실패");
		}
	});
}
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>