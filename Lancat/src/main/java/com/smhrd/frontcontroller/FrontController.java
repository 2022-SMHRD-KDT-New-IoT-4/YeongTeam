package com.smhrd.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.Command;
import com.smhrd.controller.JoinProgram;
import com.smhrd.controller.LoginProgram;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<String, Command> map = new HashMap<>();
	
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		map = new HashMap<>();
		
		map.put("Login.do", new LoginProgram());
		map.put("Join.do", new JoinProgram());
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

}
