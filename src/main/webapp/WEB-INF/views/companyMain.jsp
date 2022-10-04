<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>


	<img src="/image/1.jpg" class="w-100 p-1" height="250">

	<div class="dropdown">
		<button type="button" class="btn btn-primary dropdown-toggle"
			data-bs-toggle="dropdown">분야선택</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="/index">프론트엔드</a></li>
			<li><a class="dropdown-item" href="#">백엔드</a></li>
			<li><a class="dropdown-item" href="#">데브옵스</a></li>
		</ul>
	</div>

	<div>
		<table class="table">
			<thead class="table-success">
				<tr>
					<th>지원자 이름</th>
					<th>이력서 제목</th>
					<th>지원자 사진</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="resumesList" items="${resumesList}">
					<tr>
						<td>${resumesList.personalName}</td>
						<td>${resumesList.personalBoardTitle}</td>
						<td>${resumesList.picture}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>

</html>