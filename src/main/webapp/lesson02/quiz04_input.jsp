<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
		integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>
</head>
<body>



	<div class="container mt-2">
		<h1>길이 변환</h1>
		<form method="post" action="/lesson02/quiz04_result.jsp">
			<div class="d-flex">
				<input type="text" class="form-control col-2 mb-2" name="cm">cm
			</div>
			<label> <input type="checkbox" name="unit" value="인치" checked>인치
			</label> <label> <input type="checkbox" name="unit" value="야드">야드
			</label> <label> <input type="checkbox" name="unit" value="피트">피트
			</label> <label> <input type="checkbox" name="unit" value="미터">미터
			</label> <br>
			<button type="submit" class="btn btn-success col-2">변환하기</button>
			<br>
		</form>



	</div>
</body>
</html>

