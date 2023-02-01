package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;
import com.smhrd.model.MembersDTO;

public class Calender_MainProgram implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 다이어리 총 개수, 다이어리 이번달 개수
		

		MembersDTO user = (MembersDTO) request.getSession().getAttribute("user");
		String id = user.getId();
		
		// dto로 묶기
		Cat_DiaryDTO dto = new Cat_DiaryDTO();
		dto.setId(id);

		// dao 부르기
		Cat_DiaryDAO dao = new Cat_DiaryDAO();
		// 다이어리 리스트
		
		List<Cat_DiaryDTO> list = dao.DiarySelect(dto);
		if (list != null) {
			request.getSession().setAttribute("list", list);
		}
		
		// 다이어리 달 별 개수
		int count = dao.DiaryCount(dto);
		if(count>=0) {
			request.getSession().setAttribute("count", count);
		}
		
		
		
		return "calendar_main.jsp";
	}


}
