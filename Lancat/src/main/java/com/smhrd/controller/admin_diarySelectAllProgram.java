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

@WebServlet("/admin_diary_SelectAllProgram")
public class admin_diarySelectAllProgram implements Command {
	

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// admin 계정 육묘일기 리스트
		
		// dao 생성
		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		
		List<Cat_DiaryDTO> list = dao.selectAll();
		
		
		if(list != null) {
			request.setAttribute("user", list);
			
		}
	
		return "admin_catdiary_selectAll.jsp";
	
	
	
	
	
	
	
	
	}

	

	

}
