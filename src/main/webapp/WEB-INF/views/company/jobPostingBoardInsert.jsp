<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<section class="h-100">
   <div class="container py-5 h-100">
      <div
         class="row d-flex justify-content-center align-items-center h-100">
         <div class="col-12">
            <div class="card card-registration card-registration-2"
               style="border-radius: 15px;">
               <div class="card-body p-0">
                  <div class="row g-0" style="margin-left: 30px;">
                     <div class="col-lg-6">
                        <div class="p-5">
                           <h3 class="fw-normal mb-5" style="color: #4835d4;">채용공고 작성
                              페이지</h3>
                           <div class="left_input">
                              <p id="companyName" style="font-size: 15px;">이름</p>
                              <input id="usersName" type="text" class="form-control"
                                 style="width: 300px" placeholder="${companyInfo.companyName}"
                                 readonly> <br />
                              <p style="font-size: 15px;">번호</p>
                              <input id="phoneNumber" type="text" class="form-control"
                                 style="width: 300px"
                                 placeholder="${companyInfo.companyPhoneNumber}" readonly>
                              <br />
                              <p style="font-size: 15px;">이메일</p>
                              <input id="email" type="text" class="form-control"
                                 style="width: 300px"
                                 placeholder="${companyInfo.companyEmail}" readonly>
                              <p style="font-size: 15px;">회사 주소</p>
                              <input id="address" type="text" class="form-control"
                                 style="width: 300px" placeholder="${address.roadJibunAddr}"
                                 readonly> <br />
                              <p style="font-size: 15px;">상세주소</p>
                              <input id="detailAddress" type="text" class="form-control"
                                 style="width: 300px;" placeholder="${address.detailAddress}"
                                 readonly>
                              <p style="font-size: 15px; margin-top: 10px">사진입력</p>
                              <div class="form-group">

                                 <div id="imageContainer"></div>
                                 <input type="file" id="file" accept="image/*"
                                    onchange="setThumbnail(event)">
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6 bg-indigo text-white">
                        <div class="p-5">
                           <div class="row">

                              <div class="mb-3">
                                 <p style="font-size: 20px; margin-top: 80px">최소 경력 사항</p>
                                 <div class="form-check d-flex">
                                    <div class="form-check">
                                       <label class="form-check-label"> <input
                                          type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary" value="oneYearLess">1년미만<i
                                          class="input-helper"></i></label>
                                    </div>
                                    <div style="margin: 0 10px 0 0;"></div>
                                    <div class="form-check">
                                       <label class="form-check-label"> <input
                                          type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary" value="twoYearOver">2년이상
                                          <i class="input-helper"></i></label>
                                    </div>
                                    <div style="margin: 0 10px 0 0;"></div>
                                    <div class="form-check">
                                       <label class="form-check-label"> <input
                                          type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary"
                                          value="threeYearOver">3년이상<i class="input-helper"></i></label>
                                    </div>
                                    <div style="margin: 0 10px 0 0;"></div>
                                    <div class="form-check">
                                       <label class="form-check-label"> <input
                                          type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary" value="fiveYearOver">5년이상<i
                                          class="input-helper"></i></label>
                                    </div>
                                 </div>

                                 <div class="mb-3">
                                    <p style="font-size: 20px; margin-top: 50px">관심 분야</p>
                                    <div class="form-check form-check-inline"
                                       style="margin-left: 20px">
                                       <input class="form-check-input" type="checkbox"
                                          id="inlineCheckbox1" value="categoryFrontend"> <label
                                          class="form-check-label" for="inlineCheckbox1">
                                          frontend</label>
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
                                 <p style="font-size: 20px; margin-top: 50px">연봉</p>
                                 <div>
                                    <div class="form-check d-flex">
                                       <div class="form-check">
                                          <label class="form-check-label"> <input
                                             type="radio" class="form-check-input"
                                             id=" jobPostingSalary" name=" jobPostingSalary"
                                             value="2000"> 2000만원 이상 <i class="input-helper"></i></label>
                                       </div>
                                       <div style="margin: 0 20px 0 0;"></div>
                                       <div class="form-check">
                                          <label class="form-check-label"> <input
                                             type="radio" class="form-check-input"
                                             id=" jobPostingSalary" name=" jobPostingSalary"
                                             value="3000"> 3000만원 이상 <i class="input-helper"></i></label>
                                       </div>
                                       <div style="margin: 0 20px 0 0;"></div>
                                       <div class="form-check">
                                          <label class="form-check-label"> <input
                                             type="radio" class="form-check-input"
                                             id=" jobPostingSalary" name=" jobPostingSalary"
                                             value="4000"> 4000만원 이상 <i class="input-helper"></i></label>
                                       </div>
                                       <div style="margin: 0 20px 0 0;"></div>
                                       <div class="form-check">
                                          <label class="form-check-label"> <input
                                             type="radio" class="form-check-input"
                                             id=" jobPostingSalary" name=" jobPostingSalary"
                                             value="5000"> 5000만원 이상 <i class="input-helper"></i></label>
                                       </div>
                                    </div>

                                    <br />
                                    <p style="font-size: 20px; margin-top: 10px">회사 주소</p>
                                    <input id="post" type="text" placeholder="우편번호"
                                       onclick="findAddr()">
                                    <button id="detailAddress" type="button"
                                       class="btn btn-primary" onclick="findAddr()"
                                       style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px; margin-bottom: 20px;">우편번호찾기</button>
                                    <br> <input id="addr" type="text" placeholder="주소"
                                       style="width: 480px;">
                                    <p style="font-size: 20px; margin-top: 30px">채용공고 마감일</p>
                                    <input id="jobPostingBoardDeadline" type="date"
                                       class="form-control" placeholder="채용공고 마감일을 작성해 주세요">
                                    <br />
                                    <div class="form-group"></div>

                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>


                  </div>

               </div>
               <div class="form-group" style="justify-content: center;">
                  <p style="font-size: 20px; margin-top: 20px; margin-left: 120px">채용공고
                     상세정보</p>
                  <input id="jobPostingBoardTitle" type="text" class="form-control"
                     placeholder="제목을 입력해주세요" style="width: 950px; margin-left: 100px">
                  <textarea class="form-control" id="jobPostingBoardContent"
                     rows="8" placeholder="채용공고 내용을 입력해주세요"
                     style="margin-bottom: 10px; width: 950px; margin-left: 100px"></textarea>
               </div>
               <button id="btnSave" type="button" class="btn btn-primary"
                  style="background-color: rgba(0, 195, 98, 255); border: none; margin: 20px 20px 30px 950px; margin-bottom: 20px;">작성완료</button>

            </div>
         </div>
      </div>
</section>
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
		jobPostingSalary:$('input[type=radio][name= jobPostingSalary]:checked').val(),
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
</script>

<script src="/js/boardInsert.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>