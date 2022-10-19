<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<<<<<<< HEAD
	<input id = "companyId" type="hidden" value="${companyInfo.companyId}"> 
<div id="main">
	<br />
	<div class="tool">
		<div class="left">
			<br />
		<h2>회사정보 보기 </h2>
		
		<div class="mb-3 mt-3">
			◆회사명
			<input id="companyName" type="text" value="${companyInfo.companyName}" readonly >
		</div>
		
		<div class="mb-3 mt-3">
			◆전화번호
			<input id="companyPhoneNumber" type="text" value="${companyInfo.companyPhoneNumber}" readonly>
		</div>
		
		<div class="mb-3 mt-3">
			◆이메일
			<input id="companyEmail" type="text" value="${companyInfo. companyEmail}" readonly>
		</div>
		
		<div class="mb-3 mt-3">
			◆회사 사진 
			<input id="companyPicture" type="text" value="${companyInfo. companyPicture}" readonly>
		</div>

 <img id="previewImg" />
		</div>
	</div>
	<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
	<div class="container mt-3" style="border: 3px solid #000000">
	<h2>현재 채용중인 공고</h2>
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<div id="box1" class="col">
				<div class="card h-100">
					<img src="/image/농심.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
					</div>
				</div>
			</div>
			<div id="box2" class="col">
				<div class="card h-100">
					<img src="/image/농심.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
					</div>
				</div>
			</div>
			<div id="box3" class="col">
				<div class="card h-100">
					<img src="/image/농심.png" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mb-3"></div>

	<div class="btn-update">
		<button id="btnSub" type="button" class="btn btn-primary">구독하기</button>
	</div>
-
</div>
<script>
</script>
=======
<input id="companyId" type="hidden" value="${companyInfo.companyId}">
<input id="jobPostingBoardId" type="hidden"
	value="${jobPostingPS.jobPostingBoardId}">
<section class="py-5">
	<div class="container">
		<form>
			<h2>회사 정보</h2>
			<div class="mb-3 mt-3">
				◆회사명 <input id="companyName" type="text"
					value="${companyInfo.companyName}" readonly>
			</div>

			<div class="mb-3 mt-3">
				◆전화번호 <input id="companyPhoneNumber" type="text"
					value="${companyInfo.companyPhoneNumber}" readonly>
			</div>

			<div class="mb-3 mt-3">
				◆이메일 <input id="companyEmail" type="text"
					value="${companyInfo. companyEmail}" readonly>
			</div>

			<div class="mb-3 mt-3">
				◆회사 사진 <input id="companyPicture" type="text"
					value="${companyInfo. companyPicture}" readonly>
			</div>
		</form>

		<div class="container mt-3" style="border: 3px solid #000000">
			<h2>현재 채용중인 공고</h2>
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div id="box1" class="col">
					<div class="card h-100">
						<img src="/image/농심.png" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">${jobPostingPS.jobPostingBoardTitle}</h5>
						</div>
					</div>
				</div>
				<div id="box2" class="col">
					<div class="card h-100">
						<img src="/image/농심.png" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
						</div>
					</div>
				</div>
				<div id="box3" class="col">
					<div class="card h-100">
						<img src="/image/농심.png" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="btn-update" style="text-align: right">
			<button id="btnSub"
				style="background-color: rgba(0, 195, 98, 255); border: none; margin-bottom: 10px; margin-top: 10px; margin-bottom: 20px;"
				type="button" class="btn btn-primary">구독하기</button>
		</div>
	</div>
</section>


<script src="/js/writeForm.js"></script>
>>>>>>> 9af68df7ba0e0487fe4e7a6fb186ab32fe78541c

<%@ include file="../layout/footer.jsp"%>