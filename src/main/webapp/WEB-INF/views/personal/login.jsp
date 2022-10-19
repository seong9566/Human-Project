<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div class="d-flex justify-content-center">
   <div style="width: 400px;">
      <br>
      <form>
         <div class="d-flex justify-content-between">
            <div class="d-flex" style="margin-bottom: 20px; margin-left: 15px;">
               아이디 <input style="width: 300px; " id="login_id" type="text" class="form-control"
                  placeholder="아이디를 입력하세요">
            </div>
         </div>
         <div class="d-flex justify-content-between">
            <div class="d-flex" style="margin-bottom: 20px;">
               비밀번호 <input style="width: 300px;" id="login_password" type="password" class="form-control"
                  placeholder="비밀번호를 입력하세요">
            </div>
         </div>
      <div class="d-flex justify-content-around">
         <button id="btnLogin" type="button" class="btn btn-primary" style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px">로그인</button>
         <button id="btnPersonalJoin" type="button" class="btn btn-primary" style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px">개인용 회원가입</button>
         <button id="btnCompanyJoin" type="button" class="btn btn-primary" style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px">기업용 회원가입</button>
      </div>
      </form>
   </div>
</div>

<script src="/js/login.js"></script>
</body>
</html>