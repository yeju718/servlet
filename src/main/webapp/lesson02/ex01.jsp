<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ex01</title>
</head>
<body>
	<h1>Ex01</h1>
	
	<!-- HTML의 주석: 소스보기에서 보인다 -->
	<%-- jsp 주석: 소스보기에서 보이지 않는다 --%>
	
	<%
		//scriptlet- 나중에 안씀
		int sum = 0;
	for(int i = 0; i < 10; i++){
		sum += i;
	} 
	%>
	
	<b>합계:</b>
	<input type="text" value="<%=sum %>">
	<br>
	
	<%!
		// 선언문 - 마치 클래스 같은 느낌(필드, 메소드)

		//필드
		int num = 150;
		
		//메소드
		String getHelloWorld() {
			return "HelloWorld!";
		}
		
	%>
	
	<%= getHelloWorld() %>
	<br>
	<%= num + 230 %>
	
	<%
		List<String> list = new ArrayList<>();
	%>


</body>
</html>



