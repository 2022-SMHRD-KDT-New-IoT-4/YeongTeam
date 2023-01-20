package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_Diary_DAO;
import com.smhrd.model.Cat_Diary_DTO;

public class SelectAllProgram implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Cat_Diary_DAO dao = new Cat_Diary_DAO();
		
		List<Cat_Diary_DTO> list = dao.selectAll(null);
		
		if(list != null) {
			request.setAttribute("user", list);
		}
		
		return "select.jsp";
				
		
	}

}
