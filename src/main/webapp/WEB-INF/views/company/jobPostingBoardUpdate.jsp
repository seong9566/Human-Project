<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<input id="jobPostingBoardId" type="hidden" value="${jobPostingPS.jobPostingBoardId}">
<input id="jobPostingBoardCategoryId" type="hidden"
	value="${jobPostingPS.jobPostingBoardCategoryId}">
<input id="jobPostingBoardCareerId" type="hidden" value="${jobPostingPS.jobPostingBoardCareerId}">
<input id="companyId" type="hidden" value="${jobPostingPS.companyId}">
<section class="h-100">
   <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
         <div class="col-12">
            <div class="card card-registration card-registration-2" style="border-radius: 15px;">
               <div class="card-body p-0">
                  <div class="row g-0" style="margin-left: 30px;">
                     <div class="col-lg-6">
                        <div class="p-5">
                           <h3 class="fw-normal mb-5" style="color: #4835d4;">구인 공고 수정 페이지</h3>
                           <h3>회사정보</h3>
                           <div class="left_input">
                              <p style="font-size: 15px;">이름</p>
                              <input id="usersName" type="text" class="form-control" style="width: 300px"
                                 placeholder="${jobPostingPS.companyName}" readonly> <br />
                              <p style="font-size: 15px;">번호</p>
                              <input id="phoneNumber" type="text" class="form-control" style="width: 300px"
                                 placeholder="${jobPostingPS.companyPhoneNumber}" readonly> <br />
                              <p style="font-size: 15px;">이메일</p>
                              <input id="email" type="text" class="form-control" style="width: 300px"
                                 placeholder="${jobPostingPS.companyEmail}" readonly> <br />
                              <p style="font-size: 15px;">주소</p>
                              <input id="address" type="text" class="form-control" style="width: 300px"
                                 placeholder="${address.roadJibunAddr}" readonly> <br />
                              <p style="font-size: 15px;">상세주소</p>
                              <input id="detailAddress" type="text" class="form-control" style="width: 300px;"
                                 placeholder="${address.detailAddress}" readonly>
                              <div>
                                 <input type="file" id="file" onchange="setThumbnail(event)" />
                                 <div id="image_container">
                                    <img id="oldImg" src="/img/${jobPostingPS.companyPicture}">
                                 </div>
                              </div>

                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6 bg-indigo text-white">
                        <div class="p-5">
                           <div class="row">
                              <div class="mb-3" style="margin-top: 50px; margine-left: 20px;">
                                 <p style="font-size: 20px; margin-top: 80px">최소 경력 사항</p>
                                 <div class="form-check d-flex">
                                    <div class="form-check">
                                       <label class="form-check-label"> <input type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary" value="oneYearLess">1년미만<i
                                          class="input-helper"></i></label>
                                    </div>
                                    <div style="margin: 0 10px 0 0;"></div>
                                    <div class="form-check">
                                       <label class="form-check-label"> <input type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary" value="twoYearOver">2년이상 <i
                                          class="input-helper"></i></label>
                                    </div>
                                    <div style="margin: 0 10px 0 0;"></div>
                                    <div class="form-check">
                                       <label class="form-check-label"> <input type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary" value="threeYearOver">3년이상<i
                                          class="input-helper"></i></label>
                                    </div>
                                    <div style="margin: 0 10px 0 0;"></div>
                                    <div class="form-check">
                                       <label class="form-check-label"> <input type="radio" class="form-check-input"
                                          id=" jobPostingSalary" name=" salary" value="fiveYearOver">5년이상<i
                                          class="input-helper"></i></label>
                                    </div>
                                 </div>

                                 <div class="mb-3">
                                    <p style="font-size: 20px; margin-top: 50px">관심 분야</p>
                                    <div class="form-check form-check-inline" style="margin-left: 20px">
                                       <input class="form-check-input" type="checkbox" id="inlineCheckbox1"
                                          value="categoryFrontend"> <label class="form-check-label"
                                          for="inlineCheckbox1"> frontend</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                       <input class="form-check-input" type="checkbox" id="inlineCheckbox2"
                                          value="categoryBackend"> <label class="form-check-label" for="inlineCheckbox2">backend</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                       <input class="form-check-input" type="checkbox" id="inlineCheckbox3"
                                          value="categoryDevops"> <label class="form-check-label" for="inlineCheckbox3">devops
                                       </label>
                                    </div>
                                 </div>

                                 <div class="mb-3">
                                    <p style="font-size: 20px; margin-top: 50px">연봉</p>
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
                                       <p style="font-size: 20px; margin-top: 30px">회사 주소</p>
                                       <input id="post" type="text" placeholder="우편번호" onclick="findAddr()">
                                       <button id="detailAddress" type="button" class="btn btn-primary" onclick="findAddr()">우편번호찾기</button>
                                       <br> <input id="addr" type="text" placeholder="주소" style="width: 480px;">


                                       <p style="font-size: 20px; margin-top: 70px">채용공고 마감일</p>
                                       <input id="jobPostingBoardDeadline" type="date" class="form-control"
                                          placeholder="채용공고 마감일을 작성해 주세요"> <br />
                                       <div class="form-group"></div>

                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>


                     </div>

                  </div>
                  <div class="form-group" style="justify-content: center;">
                     <p style="font-size: 20px; margin-top: 20px; margin-left: 120px">채용공고 내용</p>
                     <input id="jobPostingBoardTitle" type="text" class="form-control"
                        placeholder="${jobPostingPS.jobPostingBoardTitle}" style="width: 950px; margin-left: 100px">
                     <textarea class="form-control" id="jobPostingBoardContent" rows="8"
                        placeholder="${jobPostingPS.jobPostingBoardContent}"
                        style="margin-bottom: 10px; width: 950px; margin-left: 100px"></textarea>
                  </div>
                 <div class="btn-update">
                        <button id="btnUpdate" type="button" class="btn btn-primary">작성완료</button>
                    </div>

               </div>
            </div>
         </div>

      </div>
   </div>
</section>

<script src="/js/boardUpdate.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>