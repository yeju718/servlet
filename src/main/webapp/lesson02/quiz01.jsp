<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	
	<%!
		
		int sum(int N) {
			int sum = 0; 
			for(int i = 1; i <= N; i++){
				sum += i;
			}
			return sum;
		}
		
	%>
	
	<h1>
	<%= "1부터 50까지의 합은 " +  sum(50)  %>
	
	<% 
	int[] scores = {81, 90, 100, 95, 80};
	
	double sum = 0;
	for(int i = 0; i < 5; i++){
		sum += scores[i];
		
	} double average = sum / 5.0;
	
	%>
	
	<br>
	 <%= average %>
	<%
	
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	double score = 0;
	for(int i = 0; i < scoreList.size(); i++){
		if(scoreList.get(i).equals("O")){
			score += 100.0 / scoreList.size();
		}
	} 
	%>
	
	<br><%= score %>
	
	<%
	String birthDay = "20010820";
	int age = (20241202 - Integer.parseInt(birthDay)) / 10000;
	
	%>
	<br><%= age %>
	</h1>

</body>
</html>