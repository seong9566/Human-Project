<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<input id="companyId" type="text" value="${principal.companyId}" hidden>
<div id="main">
	<h2>구인 공고 작성 페이지</h2>
	<br /> <input id="jobPostingBoardTitle" type="text" class="form-control"
		placeholder="채용공고 제목을 작성해 주세요 ">
	<div class="tool">
		<div class="left">
			<br />
			<h3>회사정보</h3>
			<div class="right">

				<img id="previewImg" />
			</div>
			<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br /> <input
				id="companyPicture" type="text" class="form-control" placeholder="회사 사진 " />

			<div class="left_input">
				<div id="userId">sopu5555</div>
				<br />
				<div id="copanyName">농심</div>
				<br />
				<div id="phonenumber">01024102957</div>
				<br />
				<div id="email">sop55544@gmail.com</div>
				<div id="adress">부산 북구 화명3동 코오롱 하늘채 110동 504호</div>
			</div>
		</div>
			<h2>모집조건 및 안내사항 작성</h2>
		<div class="left_input">
			<div class="mb-3">◆최소 경력 사항</div>

			<div>
				<label><input type="checkbox" value="oneYearLess">oneYearLess</label><br /> <label><input
					type="checkbox" value="twoYearOver">twoYearOver</label><br /> <label><input
					type="checkbox" value="threeYearOver">threeYearOver</label><br /> <label><input
					type="checkbox" value="fiveYearOver">fiveYearOver</label>
			</div>

			<div class="mb-3">◆관심분야</div>
			<div>
				<label><input type="checkbox" value="categoryFrontend">frontend</label><br /> <label><input
					type="checkbox" value="categoryBackend">backend</label><br /> <label><input
					type="checkbox" value="categoryDevops">devops</label><br /> <label><input id="etc"
					type="checkbox" value="etc">etc</label>
			</div>

			<br /> <input id="jobPostingSalary" type="text" class="form-control" placeholder="연봉을 작성해 주세요">
			<br /> <br /> <input id="jobPostingBoardPlace" type="text" class="form-control"
				placeholder="근무지를 작성해 주세요"> <br /> <br /> <input id="jobPostingBoardDeadline"
				type="text" class="form-control" placeholder="채용공고 마감일을 작성해 주세요"> <br /> <br /> <input
				id="jobPostingBoardContent" type="text" class="form-control" placeholder="채용공고 내용을 작성해주세요">
			<br />
		</div>

		<div class="btn-update">
			<button id="btnSave" type="button" class="btn btn-primary">작성완료</button>
		</div>

	</div>
</div>
<script>
// 채용공고 작성
$("#btnSave").click(()=>{
	insert();
});


function insert(){	
	let data = {

		companyId : $("companyId").val(),
		personalId: $("#userinfoId").val(),
		jobPostingBoardTitle : $("jobPostingBoardTitle").val(),
		
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
}
</script>
</body>
</html>