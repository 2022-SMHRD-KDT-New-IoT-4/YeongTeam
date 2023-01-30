package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MembersDAO;
import com.smhrd.model.MembersDTO;

public class Members_LoginProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		MembersDTO dto = new MembersDTO();
		dto.setId(id);
		dto.setPw(pw);
		
	    MembersDAO dao = new MembersDAO();
	    
	    MembersDTO result = dao.login(dto);
	    
	
	    
	    if(result != null) {
	    	request.getSession().setAttribute("user", result);
	    	return "Main.jsp";
	    	
	    }else{
	    	request.setAttribute("fail", "fail");
	    	return "Login.jsp";
	    	
	    	
	    }
	    	
	    
	    
	}

}