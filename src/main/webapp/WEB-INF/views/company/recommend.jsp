<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
    <div class="BigList">
        <h2>관심이력서</h2>
        <c:forEach var="personalLike" items="${personalLikeList}">
            <div class="ListForm">
                <div class="ListTitle">${personalLike.resumesTitle}</div>
                <div class="ListBtn">
                    <button onclick="deleteById(${personalLike.resumesId});" type="button" class="ListButton">관심 목록
                        제거</button>
                </div>
            </div>
        </c:forEach>
    </div>
<script>
	
	function deleteById(resumesId) {
		$.ajax("/personalLike/" + resumesId + "/likes",{
			type: "DELETE",
			dataType: "json",
			
		}).done((res) => {
			if (res.code == 1) {
				location.href="/recommend"
			} else {
				alert("좋아요 추가 실패");
				
			}
		});
	}
	</script>
<script src="/js/recommend.js"></script>
<%@ include file="../layout/footer.jsp"%>