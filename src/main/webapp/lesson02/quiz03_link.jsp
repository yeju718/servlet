<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건 입력</title>
</head>
<body>
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

	<div class="container">
		<h1 class="mt-2">체격 조건 입력</h1>
		<br>
		<form action="/lesson02/quiz03_result.jsp">
			<input type="text" name="height" class="form-control col-3"
				placeholder="키를 입력하세요">
			<p class="mt-2 mr-1">cm</p>
			<input type="text" name="weight" class="form-control col-3"
				placeholder="몸무게를 입력하세요">
			<p class="mt-2 mr-1">kg</p>
			<button type="btn" class="form-control btn-info col-1">계산</button>
		</form>
	</div>


</body>
</html>

