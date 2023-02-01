package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Cat_DiaryDAO;
import com.smhrd.model.Cat_DiaryDTO;


public class Diary_DeleteProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int index = Integer.parseInt(request.getParameter("update"));
		System.out.println(index);
		List<Cat_DiaryDTO> delete = (List<Cat_DiaryDTO>) session.getAttribute("list");

		Cat_DiaryDTO dto = delete.get(index);

		Cat_DiaryDAO dao = new Cat_DiaryDAO();

		dao.DiaryDelete(dto);

		List<Cat_DiaryDTO> list = (List<Cat_DiaryDTO>) dao.DiarySelect(dto);

		if (list != null) {
			request.setAttribute("delete", "delete");
		}

		return "Diary_Select.do";
	}
		
		
	}


