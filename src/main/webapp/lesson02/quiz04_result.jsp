<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
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
 
 	double cm = Double.parseDouble(request.getParameter("cm"));
 	
/*  	double in = (double)cm * 0.393701;
	double yr = (double)cm * 0.0109361;
	double ft = (double)cm * 0.0328084;
	double mt = (double)cm * 100;  */
	String[] Arr = request.getParameterValues("unit");
	
	%>
	<div class="container">
	<h1>길이 변환 결과</h1>
		<h3><%=cm %>cm</h3>
		<br><hr><h2>
		<% 		

			for(String type : Arr) {
				if(type.equals("인치")){
					out.print((double)cm * 0.393701 + "in <br>");
				} else if(type.equals("야드")){
					out.print((double)cm * 0.0109361 + "yd <br>");
				} else if(type.equals("피트")){
					out.print((double)cm * 0.0328084 + "ft + <br>");
				}else if (type.equals("미터")) {
					double meter = cm / 100.0;
					out.print((double)cm * 100 + "m  <br>");
				}
				
			}
		
		%></h2>
	
	</div>

</body>
</html>


