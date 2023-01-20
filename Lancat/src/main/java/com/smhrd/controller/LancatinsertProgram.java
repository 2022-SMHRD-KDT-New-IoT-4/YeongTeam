package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;
import com.smhrd.model.MembersDTO;

public class LancatinsertProgram implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		MembersDTO user = (MembersDTO)request.getSession().getAttribute("user");
		
		String id = user.getId(); 
		String d_title = request.getParameter("d_title");
		String d_content = request.getParameter("d_content");
		String d_file = request.getParameter("d_file");
		
		Cat_DiaryDTO dto = new Cat_DiaryDTO(id,d_title, d_content, d_file);
		
		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		
		int row = dao.Lancatinsert(dto);
		
		if(row>0) {
			request.setAttribute("d_title", d_title);
			
		}
		
		return "Main.jsp";
	}}
