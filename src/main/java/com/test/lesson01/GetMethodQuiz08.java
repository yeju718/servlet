package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String search = request.getParameter("search");
				
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>결과</title></head><body>");
		
		for (int i = 0; i < 5; i++) {
		    String sentence = list.get(i);
		    if (sentence.contains(search)) {
		        // 정규 표현식을 사용하여 search 부분을 <b>로 감싸기
		        String Sentence = sentence.replaceAll(search, "<b>" + search + "</b>");
		        out.print(Sentence + "<br>");
		    	
		    	
		    }
		} out.print("</body></html>");
		
		
		
	}
	

}
