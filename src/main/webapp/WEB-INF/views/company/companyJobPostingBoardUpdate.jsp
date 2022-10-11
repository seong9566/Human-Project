
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

<style>
input {
	margin: 0 0 0 5px;
} 

body {
	width: 1000px;
	margin: 0 auto;
	position: relative;
}

li {
	list-style: none;
}

img {
	width: 200px;
	height: 200px;
}

.real-upload {
	display: none;
}

.image-preview {
	width: 200px;
	height: 200px;
	background-color: aquamarine;
	display: flex;
	gap: 20px;
}

h1 {
	margin-left: 100px;
}

#tool {
	display: flex;
	justify-content: space-between;
	gap: 1rem;
}

#left {
	margin-bottom: 40px;
	margin-left: 100px;
	width: 300px;
	float: left;
}

#right {
	margin-top: 50px;
	margin-right: 100px;
	float: right;
}

.left_input {
	padding-bottom: 10px;
}

.mozip {
	margin-left: 100px;
	margin-right: 100px;
	float: left;
	width: 800px;
}

#btn{
	margin-right:100px;
}
</style>

</head>
<body>

	<div id="main">

		<h1>구인공고</h1>
		<div id="tool">
			<div id="left">
				<h3>개인정보 입력</h3>
				<div class="left_input">
					<div>◆아이디</div>
					<input type="text" placeholder="Enter id">
				</div>

				<div class="left_input">
					<div>◆이메일</div>
					<input type="text" placeholder="Enter email">
				</div>

				<div class="left_input">
					<div>◆회사번호</div>
					<input type="text" placeholder="Enter number">
				</div>

				<div class="left_input">
					<div>◆대표자번호</div>
					<input type="text" placeholder="Enter phonenumber">
				</div>

				<div class="left_input">
					<div>◆지역</div>
					<input type="text" placeholder="Enter region">
				</div>
			</div>

			<div id="right">
				<ul class="image-preview"></ul>
				<input id=picture type="file" class="real-upload" accept="image/*"
					required multiple>
				<div class="upload"></div>
			</div>


		</div>

		<div class="mozip">
			<h3>모집 정보</h3>
			<div id="summernote"></div>
		</div>

		<div id="btn" style="float:right">
			<button type="button" class="btn btn-primary">수정하기</button>
		</div>


	</div>


	<script>
    function getImageFiles(e) {
      const uploadFiles = [];
      const files = e.currentTarget.files;
      const imagePreview = document.querySelector('.image-preview');
      const docFrag = new DocumentFragment();

      if ([...files].length >= 7) {
        alert('이미지는 최대 6개 까지 업로드가 가능합니다.');
        return;
      }

      // 파일 타입 검사
      [...files].forEach(file => {
        if (!file.type.match("image/.*")) {
          alert('이미지 파일만 업로드가 가능합니다.');
          return
        }

        // 파일 갯수 검사
        if ([...files].length < 7) {
          uploadFiles.push(file);
          const reader = new FileReader();
          reader.onload = (e) => {
            const preview = createElement(e, file);
            imagePreview.appendChild(preview);
          };
          reader.readAsDataURL(file);
        }
      });
    }

    function createElement(e, file) {
      const li = document.createElement('li');
      const img = document.createElement('img');
      img.setAttribute('src', e.target.result);
      img.setAttribute('data-file', file.name);
      li.appendChild(img);

      return li;
    }

    const realUpload = document.querySelector('.real-upload');
    const upload = document.querySelector('.upload');

    upload.addEventListener('click', () => realUpload.click());

    realUpload.addEventListener('change', getImageFiles);

    
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

</body>
</html>