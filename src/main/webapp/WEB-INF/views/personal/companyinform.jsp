<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div id="main">
	<br />
	<div class="tool">
		<div class="left">
			<br />
			<h3>회사정보</h3>
			<div class="left_input">
				<div id="userId">sopu5555</div>
				<br />
				<div id="copanyName">농심</div>
				<br />
				<div id="phonenumber">01024102957</div>
				<br />
				<div id="email">sop55544@gmail.com</div>
				<div id="adress">부산 북구 화명3동 코오롱 하늘채 110동 504호</div>
			</div>
		</div>
		<div class="right">

			<img id="previewImg" />
		</div>
	</div>
	<input type="file" Id="fileUpload" accept='image/*' /> <br /> <br />
	<div class="container mt-3" style="border: 3px solid #000000">
		<div id="companyrank">
			<h2>현재 구인하고 있는 공고</h2>
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

		<div class="btn-update">
			<button id="btnSub" type="button" class="btn btn-primary">구독하기</button>
		</div>
	</div>
</div>


<script src="/js/writeForm.js">
	
</script>

<%@ include file="../layout/footer.jsp"%>