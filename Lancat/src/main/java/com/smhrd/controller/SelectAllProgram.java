package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;
import com.smhrd.model.MembersDTO;

public class SelectAllProgram implements Command {


	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 개인 select all
		
		// id 가져오기
		HttpSession session = request.getSession();
		MembersDTO user = (MembersDTO)session.getAttribute("user");
		String id = user.getId();
		// dto로 묶기
		Cat_DiaryDTO dto  =new Cat_DiaryDTO();
		dto.setId(id);
		
		// dao 부르기
		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		
		List<Cat_DiaryDTO> list = dao.select(dto);
		
		
		if(list != null) {
			session.setAttribute("list", list);
		}
		
		return "select.jsp";
				
		
	}

}
