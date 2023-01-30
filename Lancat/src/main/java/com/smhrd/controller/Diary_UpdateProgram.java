package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;
import com.smhrd.model.MembersDTO;

@WebServlet("/Diary_UpdateProgram")
public class Diary_UpdateProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 개인 육묘일기 수정
	      String d_title = request.getParameter("d_title");
	      String d_content = request.getParameter("d_content");
	      String d_file = request.getParameter("d_file");
	      
	      HttpSession session = request.getSession();
	      //MembersDTO user = (MembersDTO) session.getAttribute("user");
	      //String id = user.getId();
	      
	      Cat_DiaryDTO dto = (Cat_DiaryDTO)session.getAttribute("update");
	      dto.setD_title(d_title);
	      dto.setD_content(d_content);
	      dto.setD_file(d_file);
	      //dto.setId(user.getId());
	      
	      Cat_DiaryDAO dao = new Cat_DiaryDAO();
	      
	      int row = dao.DiaryUpdate(dto);
	      
	      
	      return "Diary_Select.do";
	      
	   }

}