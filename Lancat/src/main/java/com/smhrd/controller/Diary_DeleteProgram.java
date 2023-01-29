package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_DiaryDAO;


public class Diary_DeleteProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String d_seq = request.getParameter("d_seq");
		
		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		return null;
	
		
		
	}

}
