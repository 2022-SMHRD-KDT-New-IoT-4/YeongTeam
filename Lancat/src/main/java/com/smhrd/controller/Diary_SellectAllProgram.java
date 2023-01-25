package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;

@WebServlet("/Diary_SellectAllProgram")
public class Diary_SellectAllProgram implements Command {
	private static final long serialVersionUID = 1L;
// 관리자 selectall
	public String service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		
		List<Cat_DiaryDTO> list = dao.selectAll(null);
		
		
		if(list != null) {
			request.setAttribute("admin", list);
			
		}
	
		return "diary_selectAll.jsp";
	
	
	
	
	
	
	
	
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		return null;
	}

}
