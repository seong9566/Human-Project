<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    <div class="BigList">
        <h2>지원한 구인공고</h2>
        <c:forEach var="personalLike" items="${personalLikeList}">
            <div class="ListForm">
                <div class="ListTitle">${personalLike.resumesTitle}</div>
                <div class="ListBtn">
                    <button onclick="deleteById(${personalLike.resumesId});" type="button" class="ListButton">지원 목록
                        제거</button>
                </div>
            </div>
        </c:forEach>
    </div>
<%@ include file="../layout/footer.jsp"%>