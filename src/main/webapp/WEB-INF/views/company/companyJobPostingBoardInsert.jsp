<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<div id="main">
		<br /> <input id="resume_title" type="text" class="form-control"
			placeholder="공고제목">
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
		</div>

		<div class="form">
			<h2>모집조건 및 안내사항 작성</h2>
			<div id="summernote"></div>
		</div>

		<div class="btn-update">
			<button id="btnSave" type="button" class="btn btn-primary">작성완료</button>
		</div>
		
	</div>
</body>
<script>
//폴더 경로 안먹어서 임시로 만든 summernote
$('#summernote').summernote({
    placeholder: 'Hello stand alone ui',
    tabsize: 2,
    height: 120,
    toolbar: [
      ['style', ['style']],
      ['font', ['bold', 'underline', 'clear']],
      ['color', ['color']],
      ['para', ['ul', 'ol', 'paragraph']],
      ['table', ['table']],
      ['insert', ['link', 'picture', 'video']],
      ['view', ['fullscreen', 'codeview', 'help']]
    ]
  });
</script>
</html>