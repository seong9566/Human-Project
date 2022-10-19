<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="../layout/header.jsp" %>
		<input id="companyId" type="hidden" value="${companyInfo.companyId}">
		<section class="h-100">
   <div class="container py-5 h-100">
      <div
         class="row d-flex justify-content-center align-items-center h-100">
         <div class="col-12">
            <div class="card card-registration card-registration-2"
               style="border-radius: 15px;">
               <div class="card-body p-0">
                  <div class="row g-0">
                     <div class="col-lg-6">
                        <div class="p-5">
                           <h3 class="fw-normal mb-5" style="color: #4835d4;">기업 정보보기</h3>
                           <div>
                              <div class="mb-3">◆회사 사진</div>
                              <input type="file" id="file" onchange="setThumbnail(event)" />
                              <div id="image_container">
                                 <img id="oldImg" src="/img/${companyInfo.companyPicture}">
                              </div>
                           </div>
                           <div class="row">
                              <div class="mb-3 mt-3">
                                 아이디 <input id="userId" type="text" class="form-control"
                                    placeholder="아이디를 입력해주세요." value="${companyInfo.loginId}"
                                    style="margin-bottom: 20px;" readonly>
                              </div>

                           </div>
                           <div class="mb-3">
                              회사 이름 <input id="username" type="text" class="form-control"
                                 placeholder="이름을 입력해주세요" style="margin-bottom: 20px;"
                                 value="${companyInfo.companyName}" readonly>
                           </div>
                           <div class="mb-3"></div>
                        </div>
                     </div>
                     <div class="col-lg-6 bg-indigo text-white">
                        <div class="p-5">
                           <div class="row">
                              <div class="mb-3">
                                 이메일<input id="email" type="email" class="form-control"
                                    placeholder="이메일을 입력해주세요" style="margin-bottom: 20px;" value="${companyInfo. companyEmail}" readonly>
                                 <div class="mb-3">주소</div>
                                 <input id="post" type="text" class="form-control"
                                    placeholder="우편번호" value="${address.zoneCode }" readonly onclick="findAddr()"><br />
                                 <br /> <br> <input id="addr" type="text" value="${address.roadJibunAddr}"
                                    class="form-control" placeholder="주소" readonly><br />
                                 <input class="form-control" id="detail_address" value="${address.detailAddress }" type="text"
                                    placeholder="상세주소"><br />
                                 <div class="mb-3">
                                    전화번호<input id="phonenumber" type="text" class="form-control" value="${companyInfo.companyPhoneNumber}" readonly
                                       placeholder="전화번호를 입력해주세요" style="margin-bottom: 20px;">
                                 </div>
                              </div>

                           </div>

                           <button
                              style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px; margin-bottom: 20px;"
                              id="btnUpdateForm" type="button" class="btn btn-primary">수정하러가기</button>

                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
		<script src="/js/subscribe.js"></script>

		<%@ include file="../layout/footer.jsp" %>