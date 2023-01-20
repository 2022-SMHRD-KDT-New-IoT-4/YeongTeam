package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;


public class SelectAllProgram implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		
		List<Cat_DiaryDTO> list = dao.selectAll(null);
		
		if(list != null) {
			request.setAttribute("user", list);
		}
		
		return "select.jsp";
				
		
	}

}
