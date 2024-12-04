<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String fruit = request.getParameter("fruit");
	String[] foodArr = request.getParameterValues("food");

%>
	
	<table border="1">
		<tr>
			<th>닉네임</th>
			<td><%=nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%=animal %></td>
		</tr>
		<tr>
			<th>선호하는 과일</th>
			<td><%=fruit %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td>
				<%
				if (foodArr != null) {
					String result = "";
					for (String food : foodArr) {
						result += food + ",";
					} 
					
					// 마지막, 제거
					// 예: abc    => ab만 추출 0, 2
					result = result.substring(0, result.length() - 1);
					out.print(result);
				}
				%>
			</td>
		</tr>
	</table>
</body>
</html>

