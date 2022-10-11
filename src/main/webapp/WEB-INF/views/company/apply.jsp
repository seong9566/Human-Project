
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>이력서 작성</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	width: 1200px;
	margin: 0 auto;
	position: relative;
}

.aside {
	display: flex;
	justify-content: space-between;
	gap: 1rem;
}

.wrap {
	font-size: 30px;
	margin: 20px;
	width: 700px;
	position: relative;
	float: left;
	margin: 20px;
}

.picture {
	float: right;
	margin: 30px;
}

.image-preview {
	width: 300px;
	height: 300px;
	display: flex;
}

.resume {
	text-align: center;
}

li {
	list-style: none;
}

img {
	width: 300px;
	height: 300px;
}

.real-upload {
	display: none;
}

.btn {
	
}
</style>
</head>

<body>
	<h2 class=resume>개인 이력서페이지</h2>
	<div class=aside>
		<div class=wrap>
			<input id="id" type="hidden" value="${personal.Id}">
			<div id="userId">cndtjq1248</div>
			<div id="userName">정충섭</div>
			<div id="phonenumber">01094595116</div>
			<div id="email">cndtjq1248@naver.com</div>
		</div>
		<div class=picture>
			          <input type="file" id="fileUpload" accept='image/*' /> <img
               id="previewImg" alt="증명사진" />
		</div>
	</div>
	<h3>자기소개글 페이지</h3>
	<form method="post">
		<textarea id="introduce" name="editordata"></textarea>
	</form>
	<div id="btn">
		<button id="btn1" type="button" class="btn btn-primary">좋아요</button>
		<button id="btn2" type="button" class="btn btn-primary">구인하기</button>
	</div>


	<script>
	const fileInput = document.getElementById("fileUpload");
    const handleFiles = (e) => {
        const selectedFile = [...fileInput.files];
        const fileReader = new FileReader();
        fileReader.readAsDataURL(selectedFile[0]);
        fileReader.onload = function () {
            document.getElementById("previewImg").src = fileReader.result;
        };
    };
    fileInput.addEventListener("change", handleFiles);
    $(document).ready(function() {
        $('#introduce').summernote({
            placeholder: '내용을 작성하세요',
            height: 300,
            maxHeight: 300
        });
    });
  </script>
</body>
</html>