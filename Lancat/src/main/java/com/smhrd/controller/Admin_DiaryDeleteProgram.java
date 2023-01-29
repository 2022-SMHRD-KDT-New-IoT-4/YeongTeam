package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;

@WebServlet("/admin_diaryDeleteProgram")
public class Admin_DiaryDeleteProgram implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 관리자 admin이 삭제 게시글 목록보기
		
		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		
		List<Cat_DiaryDTO> list = dao.AdminDelete();
		
		if(list != null) {
			request.setAttribute("diary", list);
		}
		return "admin_catdiary_delete.jsp";
	}                                           

}
