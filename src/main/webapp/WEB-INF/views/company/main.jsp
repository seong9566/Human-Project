<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="../layout/header.jsp" %>

		<div class="container mt-3" style="border: 3px solid #000000">
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div id="box" class="col">
					<div class="card h-100">
						<img src="" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
						</div>
					</div>
				</div>
				<div id="box" class="col">
					<div class="card h-100">
						<img src="" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
						</div>
					</div>
				</div>
				<div id="box" class="col">
					<div class="card h-100">
						<img src="" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Card title</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="mb-3"></div>


		<div class="dropdown">
			<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">분야선택</button>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="#">프론트엔드</a></li>
				<li><a class="dropdown-item" href="#">서버</a></li>
				<li><a class="dropdown-item" href="#">백엔드</a></li>
			</ul>


			<span id="find"> <input class="float: right" type="text" placeholder="검색어 입력" aria-label="search"
					aria-describedby="button-addon2">
				<button class="btn btn-success" type="submit" id="button-addon2">검색</button>
			</span>
		</div>


		<div id="apply" class="container p-4 my-4 border">
			<div class="lineheight"><span>이력서1</span></div>
			<img class="text-right" src="" id="image">
		</div>
		<div id="apply" class="container p-4 my-4 border">
			<div class="lineheight"><span>이력서2</span></div>
			<img class="text-right" src="" id="image">
		</div>
		<div id="apply" class="container p-4 my-4 border">
			<div class="lineheight"><span>이력서3</span></div>
			<img class="text-right" src="" id="image">
		</div>
		<div id="apply" class="container p-4 my-4 border">
			<div class="lineheight"><span>이력서4</span></div>
			<img class="text-right" src="" id="image">
		</div>
		<div id="apply" class="container p-4 my-4 border">
			<div class="lineheight"><span>이력서5</span></div>
			<img class="text-right" src="" id="image">
		</div>


		<%@ include file="../layout/footer.jsp" %>