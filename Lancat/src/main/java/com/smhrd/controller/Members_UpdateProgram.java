package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MembersDAO;
import com.smhrd.model.MembersDTO;

public class Members_UpdateProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String pw = request.getParameter("pw");
		String Cat_Name = request.getParameter("cat_Name");
		String Cat_Birth = request.getParameter("cat_Birth");
		int Cat_Wt = Integer.parseInt(request.getParameter("cat_Wt"));
		String addr = request.getParameter("addr");
		
		
		HttpSession session = request.getSession();
		MembersDTO user = (MembersDTO)session.getAttribute("user");
		String id = user.getId();
		
		MembersDTO dto = new MembersDTO();
		dto.setPw(pw);
		dto.setCat_Name(Cat_Name);
		dto.setCat_Birth(Cat_Birth);
		dto.setCat_Wt(Cat_Wt);
		dto.setAddr(addr);
		dto.setId(id);
		
		MembersDAO dao = new MembersDAO();
		
		int row = dao.update(dto);
		
		if(row > 0) {
			session.setAttribute("user",dto);
		}
		
		return "Main.jsp";
	}

}