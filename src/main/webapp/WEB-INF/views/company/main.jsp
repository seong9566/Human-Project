<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<div id="containermain">
        <div id="companyrank">
                        <h2>회사 공고 추천 TOP 3</h2>
            <ul>

                <li>
                    <div class="company-item">
                        <div class="company-cover"></div>
                        <div class="album-info">
                            <p class="company_title">이름1</p>
                            <p class="likerank">1등</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="company-item">
                        <div class="company-cover"></div>
                        <div class="company-info">
                            <p class="company_title">이름2</p>
                            <p class="likerank">2등</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="company-item">
                        <div class="company-cover"></div>
                        <div class="album-info">
                            <p class="company_title">이름3</p>
                            <p class="likerank">3등</p>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
        <div class="mb-3"></div>
        <div class="dropdown">
            <select name="category" id="select_category">
                <option value="#">프론트엔드</option>
                <option value="#">백엔드</option>
                <option value="#">데브옵스</option>
            </select>
            <button class="searchbutton" type="submit" id="searchbtn">검색</button>
            <input type="text" placeholder="검색어 입력" id="searchbtninput" />
        </div>
        <br />
        <c:forEach var="resumes" items="${resumesList}">
            <div id="apply" class="mainList">
                <h2>이력서 리스트</h2>
                <br>
                <a href="/personal/resumes/${resumes.resumesId}">
                    ${resumes.resumesTitle}
                </a>
            </div>
        </c:forEach>
    </div>

	<script src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>