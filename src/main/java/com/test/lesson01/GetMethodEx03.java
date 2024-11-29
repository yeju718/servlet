package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		//response header
		
		// request parameter 꺼내기
		String id = (String) request.getParameter("user_id");
		String name = (String) request.getParameter("name");
		Integer age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
		/*
		 * {"user_id":"aaaa","name":"조예주","age":30}
		 * 
		 */
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		out.print("{\"user_id\":\"" + id + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");

		
		
		
	}

}
