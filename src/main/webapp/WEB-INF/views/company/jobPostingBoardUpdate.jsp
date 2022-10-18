<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<input id="jobPostingBoardId" type="hidden"
	value="${jobPostingPS.jobPostingBoardId}">
<input id="jobPostingBoardCategoryId" type="hidden"
	value="${jobPostingPS.jobPostingBoardCategoryId}">
<input id="jobPostingBoardCareerId" type="hidden"
	value="${jobPostingPS.jobPostingBoardCareerId}">
<input id="companyId" type="hidden" value="${jobPostingPS.companyId}">
<div class="container">
	<h2>구인 공고 수정 페이지</h2>
	<div class="tool">
		<div class="left">
			<br />
			<form>
				<h3>회사 정보</h3>
				<div class="mb-3">
					<!-- ◆사진 자리 <input id="companyPicture" type="text" class="form-control" style="width:300px "
						placeholder="${jobPostingPS.companyPicture}" readonly> -->

					<div class="mb-3">
						◆회사 이름 <input id="companyName" style="width: 300px;" type="text" class="form-control"
							placeholder="${jobPostingPS.companyName}" readonly>
					</div>
					<div class="mb-3">
						◆회사 전화번호 <input id="companyPhoneNumber" style="width: 300px;" type="text"
							class="form-control"
							placeholder="${jobPostingPS.companyPhoneNumber}" readonly>
					</div>
					<div class="mb-3">
						◆회사 이메일 <input id="companyEmail" type="text" style="width: 300px;" class="form-control"
							placeholder="${jobPostingPS.companyEmail}" readonly>
					</div>
					<div class="mb-3">
						◆회사 주소 <input id="roadJibunAddr" type="text" style="width: 700px;" class="form-control"
							placeholder="${address.roadJibunAddr}" readonly> <input style="width: 700px;"
							id="detailAddress" type="text" class="form-control"
							placeholder="${address.detailAddress}" readonly>
					</div>
				</div>
			</form>
			<h2>모집조건 및 안내사항 작성</h2>

			<div class="left_input">
			<div class="mb-3">
				<h3 class="card-title">최소 경력 사항</h3>
				<div class="form-check d-flex">
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" id=" jobPostingSalary"
							name=" jobPostingSalary" value="oneYearLess">oneYearLess
							<i class="input-helper"></i></label>
					</div>
					<div style="margin: 0 20px 0 0;"></div>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" id=" jobPostingSalary"
							name=" jobPostingSalary" value="twoYearOver">twoYearOver
							<i class="input-helper"></i></label>
					</div>
					<div style="margin: 0 20px 0 0;"></div>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" id=" jobPostingSalary"
							name=" jobPostingSalary" value="threeYearOver">threeYearOver<i
							class="input-helper"></i></label>
					</div>
					<div style="margin: 0 20px 0 0;"></div>
					<div class="form-check">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" id=" jobPostingSalary"
							name=" jobPostingSalary" value="fiveYearOver">fiveYearOver<i
							class="input-helper"></i></label>
					</div>
				</div>
			</div>

			<div class="mb-3">
				<h3 class="card-title">관심분야</h3>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckbox1" value="categoryFrontend"> <label
						class="form-check-label" for="inlineCheckbox1">frontend</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckbox2" value="categoryBackend"> <label
						class="form-check-label" for="inlineCheckbox2">backend</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="checkbox"
						id="inlineCheckbox3" value="categoryDevops"> <label
						class="form-check-label" for="inlineCheckbox3">devops
						</label>
				</div>
			</div>

			<div class="mb-3">
				<h3 class="card-title">연봉</h3>
				<div>
					<div class="form-check d-flex">
						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id=" jobPostingSalary"
								name=" jobPostingSalary" value="2000"> 2000만원 이상 <i
								class="input-helper"></i></label>
						</div>
						<div style="margin: 0 20px 0 0;"></div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id=" jobPostingSalary"
								name=" jobPostingSalary" value="3000"> 3000만원 이상 <i
								class="input-helper"></i></label>
						</div>
						<div style="margin: 0 20px 0 0;"></div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id=" jobPostingSalary"
								name=" jobPostingSalary" value="4000"> 4000만원 이상 <i
								class="input-helper"></i></label>
						</div>
						<div style="margin: 0 20px 0 0;"></div>
						<div class="form-check">
							<label class="form-check-label"> <input type="radio"
								class="form-check-input" id=" jobPostingSalary"
								name=" jobPostingSalary" value="5000"> 5000만원 이상 <i
								class="input-helper"></i></label>
						</div>
					</div>


					<br />
					<div class="mb-3">주소</div>
					<input id="post" type="text" placeholder="우편번호" readonly
						onclick="findAddr()">
					<button id="detailAddress" type="button" class="btn btn-primary"
						onclick="findAddr()">우편번호찾기</button>
					<br> <input id="addr" type="text" placeholder="주소"
						style="width: 620px;" readonly>


					<div class="mb-3">채용공고 마감일</div>
					<input id="jobPostingBoardDeadline" type="date"
						class="form-control" placeholder="채용공고 마감일을 작성해 주세요"> <br />
					<div class="form-group">
						<label for="exampleFormControlTextarea1">채용공고 내용</label> <input
							id="jobPostingBoardTitle" type="text" class="form-control"
							placeholder="구인공고 제목을 입력해주세요.">
						<textarea class="form-control" id="jobPostingBoardContent"
							rows="8"></textarea>
					</div>
				</div>
					<div class="btn-update">
						<button id="btnUpdate" type="button" class="btn btn-primary">작성완료</button>
					</div>

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

$("#btnUpdate").click(() => {
	update();	
});

//업데이트 버튼 클릭시 
function update() {
	let jobPostingBoardId =$("#jobPostingBoardId").val();
	jobPostingBoardCategoryId: $("#jobPostingBoardCategoryId").val();
	jobPostingBoardCareerId: $("#jobPostingBoardCareerId").val();
	let data = {
			jobPostingBoardCategoryId: $("#jobPostingBoardCategoryId").val(),
			jobPostingBoardCareerId: $("#jobPostingBoardCareerId").val(),

			jobPostingBoardTitle: $("#jobPostingBoardTitle").val(),
			oneYearLess: $("input:checkbox[value='oneYearLess']").is(":checked"),
			twoYearOver: $("input:checkbox[value='twoYearOver']").is(":checked"),
			threeYearOver: $("input:checkbox[value='threeYearOver']").is(":checked"),
			fiveYearOver: $("input:checkbox[value='fiveYearOver']").is(":checked"),
			categoryFrontend: $("input:checkbox[value='categoryFrontend']").is(":checked"),
			categoryBackend: $("input:checkbox[value='categoryBackend']").is(":checked"),
			categoryDevops: $("input:checkbox[value='categoryDevops']").is(":checked"),
			jobPostingSalary:$('input[type=radio][name= jobPostingSalary]:checked').val(),
			jobPostingBoardPlace: $("#post").val() + "," + $("#addr").val(),
			
			jobPostingBoardDeadline: $("#jobPostingBoardDeadline").val(),
			jobPostingBoardContent: $("#jobPostingBoardContent").val()
		};	
	console.log(jobPostingBoardCategoryId);
	console.log(jobPostingBoardCareerId);
	
	$.ajax("/company/jobPostingBoardUpdate/"+jobPostingBoardId, {
		type: "PUT",
		dataType: "json",
		data: JSON.stringify(data),
		headers: {
			"Content-Type": "application/json; charset=utf-8"
		}
	}).done((res) => {
		if (res.code == 1) {
			alert("채용 공고 수정 완료");
			location.href="/company/jobPostingBoardList";
		} else {
			alert("업데이트에 실패하였습니다");
		}
	});
}

</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>