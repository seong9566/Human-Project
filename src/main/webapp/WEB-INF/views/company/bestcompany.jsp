%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<div class="form">
			<h2>모집조건 및 안내사항</h2>
			<div id="summernote"></div>
		</div> 

	</div>
	

	<script src="/js/company.js"></script>
	<script src="/js/bestcompany.js"></script>
	

</body>
</html>