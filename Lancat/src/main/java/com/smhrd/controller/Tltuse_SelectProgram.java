package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MembersDTO;
import com.smhrd.model.SensorDAO;
import com.smhrd.model.SensorDTO;

public class Tltuse_SelectProgram implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		MembersDTO user = (MembersDTO) request.getSession().getAttribute("user");

		SensorDTO dto = new SensorDTO();
		dto.setId(user.getId());

		SensorDAO dao = new SensorDAO();

		List<SensorDTO> tltList = dao.tltSelect(dto);
		List<String> dayList = dao.tltDaySelect(dto);
		System.out.println(tltList.get(0).getIn_time());
		System.out.println(dayList.get(0));

		if (tltList != null) {
			request.getSession().setAttribute("tltList", tltList);
			request.getSession().setAttribute("dayList", dayList);
		}

		return "graphPage.jsp";
	}

}
