<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="../layout/header.jsp" %>


		<div class="container">
			<h2></h2>
			<form>
				<div class="mb-3 mt-3">
					<h3>◆아이디</h3>
					<input id="login_id" type="text" class="form-control" placeholder="Enter id">
				</div>
				<div class="mb-3 mt-3">
					<h3>◆비밀번호</h3>
					<input id="login_password" type="text" class="form-control" placeholder="Enter password">
				</div>

				<div class="d-flex justify-content-around">
					<button id="btnLogin" type="button" class="btn btn-primary">로그인</button>
					<button id="btnJoin" type="button" class="btn btn-primary">회원가입</button>
				</div>
			</form>
		</div>
		<script>

			$("#btnLogin").click(() => {
				let login_dto = {
					loginId: $("#login_id").val(),
					loginPassword: $("#login_password").val()
				}

				login(login_dto);
			});

			function login(login_dto) {
				$.ajax("/login", {
					type: "POST",
					dataType: "JSON",
					data: JSON.stringify(login_dto),
					headers: {
						"Content-Type": "application/JSON; charset=utf-8"
					}
				}).done((res) => {
					if (res.code == 1) {
						if (res.data.personalId != null) {
							connectpersonal();
						} else {
							connectcompany();
						}
						location.href = "/main";

					}
				});
			}

		</script>
		</body>

		</html>