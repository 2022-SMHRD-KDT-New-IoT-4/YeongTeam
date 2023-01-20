package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Cat_Diary_DAO;
import com.smhrd.model.Cat_Diary_DTO;
import com.smhrd.model.MembersDTO;

@WebServlet("/UpdateProgram")
public class Diary_UpdateProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String d_title = request.getParameter("d_title");
		String d_content = request.getParameter("d_content");
		String d_file = request.getParameter("d_file");
		
		HttpSession session = request.getSession();
		Cat_Diary_DTO user = (Cat_Diary_DTO)session.getAttribute("user");		
		String id = user.getId();
		
		Cat_Diary_DTO dto = new Cat_Diary_DTO();
		dto.setD_title(d_title);
		dto.setD_content(d_content);
		dto.setD_file(d_file);
		
		
		Cat_Diary_DAO dao = new Cat_Diary_DAO();
		
		int row = dao.update(dto);
		
		if(row > 0) {
			session.setAttribute("user", dto);
		}
		
		return "diary_update.jsp";
	}

}
