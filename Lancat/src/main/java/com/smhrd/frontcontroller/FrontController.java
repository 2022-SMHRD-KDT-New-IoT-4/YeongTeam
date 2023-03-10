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
import com.smhrd.controller.Diary_InsertProgram;
import com.smhrd.controller.AdminMembers_SelectAllProgram;
import com.smhrd.controller.Admin_DiaryDeleteProgram;
import com.smhrd.controller.Admin_DiarySelectAllProgram;
import com.smhrd.controller.Calender_MainProgram;
import com.smhrd.controller.Members_JoinProgram;
import com.smhrd.controller.Members_LoginProgram;
import com.smhrd.controller.MainProgram;
import com.smhrd.controller.Members_UpdateProgram;
import com.smhrd.controller.Tltuse_SelectProgram;
import com.smhrd.controller.Diary_SelectAllProgram;
import com.smhrd.controller.Diary_UpdateProgram;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private HashMap<String, Command> map = null;
	 
	 public void init() throws ServletException {
		 map = new HashMap<>();
		 // MAIN
		 map.put("Main.do", new MainProgram());
		 
		 // MEMBERS
		 map.put("Join.do", new Members_JoinProgram());
		 map.put("Login.do", new Members_LoginProgram());
		 map.put("Members_Update.do", new Members_UpdateProgram());
		 
		 // DIARY
		 map.put("Diary_Insert.do", new Diary_InsertProgram());
		 map.put("Diary_Select.do", new Diary_SelectAllProgram());
		 map.put("Diary_Update.do", new Diary_UpdateProgram());
		 map.put("Diary_Delete.do", new Diary_DeleteProgram());
		 map.put("Calender_Main.do", new Calender_MainProgram());
		 
		 // ADMIN
		 map.put("AdminDiary_Select.do", new Admin_DiarySelectAllProgram());
		 map.put("AdminDiary_Delete.do", new Admin_DiaryDeleteProgram());
		 map.put("AdminMembers_SelectAll.do", new AdminMembers_SelectAllProgram());
		 
		 // TLT_USE
		 map.put("Tltuse_Select.do", new Tltuse_SelectProgram());
	 }
	 
	 
	  
	 
	 
	 
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
	String uri = request.getRequestURI();
	System.out.println("?????? uri: "+uri);
	String path = request.getContextPath();
	String finalUrl = uri.substring(path.length()+1);
	System.out.println("????????? url: "+finalUrl);
	
	
	Command com = null;
	request.setCharacterEncoding("UTF-8");
	com = map.get(finalUrl);
	String rdPath = com.execute(request, response);
	RequestDispatcher rd = request.getRequestDispatcher(rdPath);
	rd.forward(request, response);
	
		
	
	
	}

}

