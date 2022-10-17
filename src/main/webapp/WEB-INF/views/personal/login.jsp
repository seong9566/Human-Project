<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
        <div class="wrap">
            <div class="form-wrap">
                <h2>로그인 페이지</h2>
                <form id="login" class="input-group">
                    <input id="login_id" type="text" class="input-field" placeholder="Enter id">
                    <input id="login_password" type="password" class="input-field" placeholder="Enter password">
                    <button type="button" class="button" id="btnLogin" class="btn btn-primary">로그인</button>
                    <button type="button" class="button" id="btnPersonalJoin" class="btn btn-primary">개인용
                        회원가입</button>
                    <button type="button" class="button" id="btnCompanyJoin" class="btn btn-primary">기업용 회원가입</button>
                </form>
            </div>
        </div>
<script src="/js/login.js"></script>
</body>
</html>