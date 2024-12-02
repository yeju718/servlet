<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
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
		
	<%
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double Height = Integer.parseInt(height);
	double Weight = Integer.parseInt(weight);
	double bmi = Weight / ((Height / 100.0) * (Height / 100.0));
	
	String result = null;
	if(bmi <= 20){
		result = "저체중";	
	} else if(bmi <= 25){
		result = "정상";
	} else if(bmi <= 30){
		result = "과체중";
	} else {
		result = "비만";
	}
	
	%>
	<div class="container  mt-2">
	 <h1 class="ml-3">BMI 측정 결과</h1>
	 <div class="container display-3">
	 당신은 <span class='text-info'> <%=result %> </span> 입니다.
     <p style="font-size:20px" class="mt-2 ml-1">BMI 수치:<%=bmi %></p>
     
     </div>
	</div>

</body>
</html>


