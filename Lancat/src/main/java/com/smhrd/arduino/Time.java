package com.smhrd.arduino;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Time")
public class Time extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 OutputStreamWriter writer = new OutputStreamWriter(response.getOutputStream());
	      
	      DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
	      LocalDateTime now = LocalDateTime.now();  
	      
	      writer.write(dtf.format(now));
	      writer.flush();
	      
	      System.out.println("Time: " + dtf.format(now));  
		
	}

}
