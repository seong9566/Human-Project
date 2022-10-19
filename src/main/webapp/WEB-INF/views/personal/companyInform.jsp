<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="../layout/header.jsp" %>
		<input id="companyId" type="hidden" value="${companyInfo.companyId}">
		<div id="main">
			<br />
			<div class="tool">
				<div class="left">
					<br />
					<h2>회사정보 보기 </h2>

					<div class="mb-3 mt-3">
						◆회사명
						<input id="companyName" type="text" value="${companyInfo.companyName}" readonly>
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
			<c:choose>
				<c:when test="${empty sessionScope.subscribe}">
					<div class="btn-update">
						<button id="btnSub" type="button" class="btn btn-primary" value="${companyInfo.companyId}">구독하기</button>
					</div>
				</c:when>
				<c:otherwise>
					<c:set var="loop_flag" value="false" />
					<c:forEach var="sub" items="${sessionScope.subscribe}">
						<c:if test="${not loop_flag}">
							<c:if test="${sub.companyId == companyInfo.companyId}">
								<div class="btn-update">
									<button id="btnSub" type="button" class="btn btn-primary"
										value="${sub.subscribeId}">구독취소</button>
								</div>
								<c:set var="loop_flag" value="true" />
							</c:if>
						</c:if>
					</c:forEach>
					<c:if test="${not loop_flag}">
						<div class="btn-update">
							<button id="btnSub" type="button" class="btn btn-primary" value="${companyInfo.companyId}">구독하기</button>
						</div>
					</c:if>
				</c:otherwise>
			</c:choose>
		</div>
		<script src="/js/subscribe.js"></script>

		<%@ include file="../layout/footer.jsp" %>