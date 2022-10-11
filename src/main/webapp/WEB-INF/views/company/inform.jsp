<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�̷¼����� ����Ʈ</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
#btnUsernameSameCheck {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<form> 
			<h2>�� ���� - ���</h2>
			<div class="mb-3 mt-3">
				�߾��̵� <input id="userId" type="text" class="form-control" placeholder="���̵� �Է����ּ���." readonly>
				<button id="btnUsernameSameCheck" class="btn btn-warning" type="button">���̵� �ߺ�üũ</button>
			</div>
			<div class="mb-3">
				���̸� <input id="username" type="text" class="form-control" placeholder="�̸��� �Է����ּ���" readonly>
			</div>
			<div class="mb-3">
				����ȭ��ȣ<input id="email" type="email" class="form-control" placeholder="�̸����� �Է����ּ���" readonly>
			</div>
			<div class="mb-3">
				���̸���<input id="phonenumber" type="text" class="form-control" placeholder="��ȭ��ȣ�� �Է����ּ���" readonly>
			</div>
			<div class="mb-3">���ּ�</div>
			<input id="member_post" type="text" placeholder="�����ȣ" readonly onclick="findAddr()" > 
			<button id="btnJoin" type="button" class="btn btn-primary">�����ȣã��</button><br>
			<input id="member_addr" type="text" placeholder="�ּ�" style="width:645px;" readonly>
			<input type="text" placeholder="���ּ�" style="width:645px;">
			<div class="mb-3"></div>
			<div class="mb-3">�߰��ɺо�</div>
			<div>
				<label><input type="checkbox" id="frontend">����Ʈ����</label><br /> 
				<label><input type="checkbox" value="backend">�鿣��</label><br /> 
				<label><input type="checkbox" value="devops">����Ƚ�</label><br /> 
				<label><input type="checkbox" value="etc">�������</label>
			</div>
		</form>
		<div class="mb-5"></div>
		<div class="d-grid gap-1 col-2 mx-auto">
			<button id="btnJoin" type="button" class="btn btn-primary">��������</button>
		</div>

	</div>

	<script>
		function findAddr() {
			new daum.Postcode(
					{
						oncomplete : function(data) {

							console.log(data);

							// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
							// ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� ǥ���Ѵ�.
							// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
							var roadAddr = data.roadAddress; // ���θ� �ּ� ����
							var jibunAddr = data.jibunAddress; // ���� �ּ� ����
							// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
							document.getElementById('member_post').value = data.zonecode;
							if (roadAddr !== '') {
								document.getElementById("member_addr").value = roadAddr;
							} else if (jibunAddr !== '') {
								document.getElementById("member_addr").value = jibunAddr;
							}
						}
					}).open();
		}
	</script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</body>
</html>