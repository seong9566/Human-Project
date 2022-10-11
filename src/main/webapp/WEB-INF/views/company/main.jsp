<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

	<div class="container mt-3" style="border: 3px solid #000000">
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<div id="box1" class="col">
				<div class="card h-100">
					<img src="/image/1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
					</div>
				</div>
			</div>
			<div id="box2" class="col">
				<div class="card h-100">
					<img src="/image/1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
					</div>
				</div>
			</div>
			<div id="box3" class="col">
				<div class="card h-100">
					<img src="/image/1.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">Card title</h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mb-3"></div>
	<div class="dropdown">
		
			<button class="btn btn-success" type="submit" id="button-addon2" style="float:right;">검색</button>
			<input type="text"
			placeholder="검색어 입력" aria-label="search"
			aria-describedby="button-addon2" style="float:right;">
			
		
	</div>
	<div id="apply" class="container p-4 my-4 border">
		<div class="lineheight" ><span>이력서1</span></div>
		<img class="text-right" src="/image/1.jpg" id="image">
	</div>
		<div id="apply" class="container p-4 my-4 border">
		<div class="lineheight" ><span>이력서2</span></div>
		<img class="text-right" src="/image/1.jpg" id="image">
	</div>
		<div id="apply" class="container p-4 my-4 border">
		<div class="lineheight" ><span>이력서3</span></div>
		<img class="text-right" src="/image/1.jpg" id="image">
	</div>
		<div id="apply" class="container p-4 my-4 border">
		<div class="lineheight" ><span>이력서4</span></div>
		<img class="text-right" src="/image/1.jpg" id="image">
	</div>
		<div id="apply" class="container p-4 my-4 border">
		<div class="lineheight" ><span>이력서5</span></div>
		<img class="text-right" src="/image/1.jpg" id="image">
	</div>
	
	<script src="/js/main.js"></script>
<%@ include file="../layout/footer.jsp"%>