<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
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
                           <h3 class="fw-normal mb-5" style="color: #4835d4;">기업 회원가입</h3>
                           <div>
                              <div class="form-group">
                              기업 사진
                                 
                                 <div id="imageContainer"></div>
                                 <input type="file" id="file" accept="image/*"
                                    onchange="setThumbnail(event)">
                              </div>
                           </div>
                           <div class="row">
                              <div class="mb-3 mt-3">
                                 아이디 <input id="userId" type="text" class="form-control"
                                    placeholder="아이디를 입력해주세요." style="margin-bottom: 20px;">
                                 <button id="btnUsernameSameCheck" class="btn btn-warning"
                                    type="button"  style="background-color: red; color:white; border: none; margin-bottom: 10px; margin-top: 10px; margin-bottom: 20px;">아이디 중복체크</button>
                              </div>

                           </div>
                           <div class="mb-3">
                              비밀번호<input id="password" type="password" class="form-control"
                                 placeholder="비밀번호를 입력해주세요" style="margin-bottom: 20px;">
                           </div>
                           <div class="mb-3">
                              비밀번호 확인 <span id="span_valcheck"
                                 style="visibility: hidden; color: tomato;">-----비밀번호가
                                 같지 않습니다!</span><input id="passwordConfirm" type="password"
                                 class="form-control" placeholder="비밀번호를 입력해주세요"
                                 style="margin-bottom: 20px;">
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6 bg-indigo text-white">
                        <div class="p-5">
                           <div class="row">
                              <div class="mb-3">
                                 회사 이름 <input id="username" type="text" class="form-control"
                                    placeholder="이름을 입력해주세요" style="margin-bottom: 20px;">
                                 이메일<input id="email" type="email" class="form-control"
                                    placeholder="이메일을 입력해주세요" style="margin-bottom: 20px;">
                                 <div class="mb-3">주소</div>
                                  <button id="detailAddress" type="button" style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px; margin-bottom: 20px;" 
                                  class="btn btn-primary" onclick="findAddr()">우편번호찾기</button>
                                  <input id="post" type="text" class="form-control"
                                     placeholder="우편번호" readonly onclick="findAddr()">
                                  <br /><input id="addr" type="text"
                                     class="form-control" placeholder="주소" readonly><br />
                                  <input class="form-control" id="detail_address" type="text"
                                     placeholder="상세주소"><br />
                                 <div class="mb-3">
                                    전화번호<input id="phonenumber" type="text" class="form-control"
                                       placeholder="전화번호를 입력해주세요" style="margin-bottom: 20px;">
                                 </div>
                              </div>

                           </div>

                           <button  style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px; margin-bottom: 20px;" id="btnSave" type="button" class="btn btn-primary"
                              onclick="joinform_check()"
                              disabled="disabled">작성완료</button>

                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<script src="/js/companyjoin.js"></script>
<script src="/js/join.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>