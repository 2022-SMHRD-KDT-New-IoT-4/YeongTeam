package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;
import com.smhrd.model.MembersDTO;

public class Diary_InsertProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String d_title= request.getParameter("d_title");
		String d_content= request.getParameter("d_content");
		String d_file= request.getParameter("d_file");
		MembersDTO user = (MembersDTO) request.getSession().getAttribute("user");
		String id = user.getId();
		
		Cat_DiaryDTO dto =  new Cat_DiaryDTO();
		dto.setD_title(d_title);
		dto.setD_content(d_content);
		dto.setD_file(d_file);
		dto.setId(id);
		
		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		
		int row = dao.DiaryInsert(dto);
		
		if(row>0) {
			request.setAttribute("diary", dto);
			
		}
		
		return "Main.jsp";
	}
}
