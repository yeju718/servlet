package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMathodQuiz07 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문결과</title></head><body>");
		if(!address.contains("서울시")) {
			out.print("<p>배달 불가 지역입니다.</p>");
		} else {
		out.print("<p>" + address + "<b> 배달 준비중</b></p>");
		} if(card.equals("신한카드")) {
			out.print("<p>결제 불가 카드 입니다.</p>");
		} else {
			out.print("<p>결제 금액:" + price + "원</p>");
		}
		out.print("</body></html>");
		
	}

	
}
