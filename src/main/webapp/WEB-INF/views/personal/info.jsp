<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
        <div class="mainjoinform">
            <div class="joinformtitle">
                <h1>개인정보 확인 페이지</h1>
            </div>
            <div class="joindiv">
                <input id="username" type="text" class="form-control" placeholder="이름을 입력해주세요" readonly>
            </div>
            <div class="joindiv">
                <input id="phonenumber" type="text" class="form-control" placeholder="전화번호를 입력해주세요" readonly>
            </div>
            <div class="joindiv">
                <input id="email" type="email" class="form-control" placeholder="이메일을 입력해주세요" readonly>
            </div>
            <div class="joindiv">
                <h3>최종학력</h3>
            </div>
            <div>
                <label>
                    <input type="radio" name="contact" value="highschool" checked />
                    <span>고졸</span>
                </label>

                <label>
                    <input type="radio" name="contact" value="two_year_college" />
                    <span>2년제 대학 졸업</span>
                </label>

                <label>
                    <input type="radio" name="contact" value="four_year_college" />
                    <span>4년제 대학 졸업</span>
                </label>

                <label>
                    <input type="radio" name="contact" value="study_college" />
                    <span>대학 재학중</span>
                </label><br />
            </div>
            <div class="d-grid gap-1 col-2 mx-auto">
                <button id="btnSave" type="button" class="btn btn-primary" disabled="disabled" onclick = "location.href = '/company/inform/update'">수정하기</button>
            </div>
        </div>

    <script src="/js/join.js"></script>
<%@ include file="../layout/footer.jsp"%>
