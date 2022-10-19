<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="../layout/header.jsp" %>

		<div>
			<input id="companyId" type="hidden" value="${principal.companyId}">
			<h2>구인 공고 작성 페이지</h2>
			<br /> <input id="jobPostingBoardTitle" type="text" class="form-control" placeholder="채용공고 제목을 작성해 주세요 ">
			<div class="tool">
				<div class="left">
					<br />
					<h3>회사정보</h3>
					<div class="right">
						<input id="" value="${companyInfo.companyPicture}" placeholder="회사 사진 자리" />
					</div>


					<div class="left_input">
						<div>
							<h4>회사 이름</h4>
							<p id="companyName">${companyInfo.companyName}</p>
						</div>
						<br />
						<div>
							<h4>회사 번호</h4>
							<p>${companyInfo.companyPhoneNumber}</p>
						</div>
						<div>
							<h4>회사 이메일</h4>
							<p>${companyInfo.companyEmail}</p>
						</div>

						<div>
							<h4>회사 주소 </h4>
							<p>${address.roadJibunAddr}</p>
							<p>${address.detailAddress }</p>
						</div>
					</div>
				</div>
				<h2>모집조건 및 안내사항 작성</h2>

				<div class="left_input">
					<div class="mb-3">
						◆최소 경력 사항
						<div>
							<label><input type="checkbox" value="oneYearLess">oneYearLess</label><br /> <label><input
									type="checkbox" value="twoYearOver">twoYearOver</label><br /> <label><input
									type="checkbox" value="threeYearOver">threeYearOver</label><br /> <label><input
									type="checkbox" value="fiveYearOver">fiveYearOver</label><br />
						</div>
					</div>

					<div class="mb-3">
						◆관심분야
						<div>
							<label><input type="checkbox" value="categoryFrontend">frontend</label><br /> <label><input
									type="checkbox" value="categoryBackend">backend</label><br /> <label><input
									type="checkbox" value="categoryDevops">devops</label><br />
						</div>
					</div>

					<div class="mb-3">
						<h3 class="card-title">연봉</h3>
						<div>
							<div class="form-check d-flex">
								<div class="form-check">
									<label class="form-check-label"> <input type="radio" class="form-check-input"
											id=" jobPostingSalary" name=" jobPostingSalary" value="2000"> 2000만원 이상 <i
											class="input-helper"></i></label>
								</div>
								<div style="margin: 0 20px 0 0;"></div>
								<div class="form-check">
									<label class="form-check-label"> <input type="radio" class="form-check-input"
											id=" jobPostingSalary" name=" jobPostingSalary" value="3000"> 3000만원 이상 <i
											class="input-helper"></i></label>
								</div>
								<div style="margin: 0 20px 0 0;"></div>
								<div class="form-check">
									<label class="form-check-label"> <input type="radio" class="form-check-input"
											id=" jobPostingSalary" name=" jobPostingSalary" value="4000"> 4000만원 이상 <i
											class="input-helper"></i></label>
								</div>
								<div style="margin: 0 20px 0 0;"></div>
								<div class="form-check">
									<label class="form-check-label"> <input type="radio" class="form-check-input"
											id=" jobPostingSalary" name=" jobPostingSalary" value="5000"> 5000만원 이상 <i
											class="input-helper"></i></label>
								</div>
							</div>


							<br />
							<div class="mb-3">◆주소</div>
							<input id="post" type="text" placeholder="우편번호" readonly onclick="findAddr()">
							<button id="detailAddress" type="button" class="btn btn-primary"
								onclick="findAddr()">우편번호찾기</button>
							<br> <input id="addr" type="text" placeholder="주소" style="width: 620px;" readonly>


							<div class="mb-3">◆채용공고 마감일</div>
							<input id="jobPostingBoardDeadline" type="date" class="form-control"
								placeholder="채용공고 마감일을 작성해 주세요"> <br />

							<div class="mb-3">◆채용공고 내용</div>
							<input id="jobPostingBoardContent" type="text" class="form-control"
								placeholder="채용공고 내용을 작성해주세요"> <br />
						</div>

						<div class="btn-update">
							<button id="btnSave" type="button" class="btn btn-primary">작성완료</button>
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
						oncomplete: function (data) {
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
			$("#btnSave").click(() => {
				insert();
			});


			function insert() {

				let data = {
					jobPostingBoardTitle: $("#jobPostingBoardTitle").val(),
					companyId: $("#companyId").val(),
					oneYearLess: $("input:checkbox[value='oneYearLess']").is(":checked"),
					twoYearOver: $("input:checkbox[value='twoYearOver']").is(":checked"),
					threeYearOver: $("input:checkbox[value='threeYearOver']").is(":checked"),
					fiveYearOver: $("input:checkbox[value='fiveYearOver']").is(":checked"),
					categoryFrontend: $("input:checkbox[value='categoryFrontend']").is(":checked"),
					categoryBackend: $("input:checkbox[value='categoryBackend']").is(":checked"),
					categoryDevops: $("input:checkbox[value='categoryDevops']").is(":checked"),
					jobPostingSalary: $('input[type=radio][name= jobPostingSalary]:checked').val(),
					jobPostingBoardPlace: $("#post").val() + "," + $("#addr").val(),
					jobPostingBoardDeadline: $("#jobPostingBoardDeadline").val(),
					jobPostingBoardContent: $("#jobPostingBoardContent").val()
				};

				$.ajax("/company/jobPostingBoard/insert", {
					type: "POST",
					dataType: "json",
					data: JSON.stringify(data),
					headers: {
						"Content-Type": "application/json; charset=utf-8"
					}
				}).done((res) => {
					if (res.code == 1) {
						alert("채용공고 등록 성공");
						sendmessageToPersonalForTopic(data.companyId, $("#companyName").text());
						location.href = "/main";
					} else {
						alert("채용공고 등록 실패");
					}
				});
			}
		</script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		</body>

		</html>