package com.smhrd.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Command;
import com.smhrd.controller.Diary_DeleteProgram;
import com.smhrd.controller.Diary_SellectAllProgram;
import com.smhrd.controller.JoinProgram;
import com.smhrd.controller.LoginProgram;
import com.smhrd.controller.MainProgram;
import com.smhrd.controller.Members_UpdateProgram;
import com.smhrd.controller.SelectAllProgram;
import com.smhrd.controller.Diary_UpdateProgram;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private HashMap<String, Command> map = null;
	 
	 public void init() throws ServletException {
		 map = new HashMap<>();
		 
		 map.put("Login.do", new LoginProgram());
		 map.put("Main.do", new MainProgram());
		 map.put("Select.do", new SelectAllProgram());
		 map.put("Diary_Update.do", new Diary_UpdateProgram());
		 map.put("Members_Update.do", new Members_UpdateProgram());
		 map.put("Join.do", new JoinProgram());
		 map.put("Diary_Select.do", new Diary_SellectAllProgram());
		 map.put("Diary_Delete.do", new Diary_DeleteProgram());
	 }
	 
	 
	  
	 
	 
	 
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	String uri = request.getRequestURI();
	System.out.println("요청 uri: "+uri);
	String path = request.getContextPath();
	String finalUrl = uri.substring(path.length()+1);
	System.out.println("잘라낸 url: "+finalUrl);
	
	
	Command com = null;
	request.setCharacterEncoding("UTF-8");
	com = map.get(finalUrl);
	String rdPath = com.execute(request, response);
	RequestDispatcher rd = request.getRequestDispatcher(rdPath);
	rd.forward(request, response);
	
		
	
	
	}

}

