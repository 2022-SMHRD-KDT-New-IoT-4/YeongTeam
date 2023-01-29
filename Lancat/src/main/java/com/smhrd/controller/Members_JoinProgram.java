package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MembersDAO;
import com.smhrd.model.MembersDTO;

public class Members_JoinProgram implements Command {

	
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String cat_Name = request.getParameter("cat_Name");
		String cat_Birth = request.getParameter("cat_Birth");
		int catweight = Integer.parseInt(request.getParameter("cat_Wt")); 
		String addr = request.getParameter("addr");
		String joinDate = request.getParameter("joinDate");
		String m_Type = request.getParameter("m_Type");
		
		MembersDTO dto = new MembersDTO(id, pw, cat_Name, cat_Birth, catweight, addr, joinDate, m_Type);
		
		MembersDAO dao = new MembersDAO();
		
		int row = dao.join(dto);
		
		return "Main.jsp";
			
	}

}
