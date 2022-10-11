<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ΰ��� ����Ʈ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container">
		<h2>���� ���� ����Ʈ</h2>
		
		<c:forEach var = "jobPostingBoard" items = "${jobPostingBoardList}">
		<div>	${jobPostingBoard.companyPicture}</div>
		<div class="container p-5 my-4 border">${jobPostingBoard.jobPostingBoardTitle}<br/>
				${jobPostingBoard.jobPostingBoardContent}<br/></div>
		<div class="d-grid gap-2 d-md-flex justify-content-md-end">
			<button type="button" class="btn btn-primary"><a href ="/company/jobpostingboard/${jobPostingBoard.jobPostingBoardId}/updateForm">�����ϱ�</a></button>
		</div>
		</c:forEach>
		
		
		<div class="d-grid gap-2 col-2 mx-auto">
			<button type="button" class="btn btn-primary"><a href="/company/jobpostingboard/insert">�������Ϸ�����</a></button>
		</div>
	</div>

</body>
</html>