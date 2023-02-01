package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MembersDAO;
import com.smhrd.model.MembersDTO;

public class AdminMembers_SelectAllProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// admin 회원목록조회

		MembersDTO user = (MembersDTO) request.getSession().getAttribute("user");
		String id = user.getId();

		// dto로 묶기
		MembersDTO dto = new MembersDTO();
		dto.setId(id);

		// dao 부르기
		MembersDAO dao = new MembersDAO();

		List<MembersDTO> list = dao.selectAll(dto);

		if (list != null) {
			request.getSession().setAttribute("memberlist", list);
		}

		return "adminMain.jsp";

	}

}
