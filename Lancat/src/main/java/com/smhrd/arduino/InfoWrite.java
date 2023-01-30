package com.smhrd.arduino;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.SensorDAO;
import com.smhrd.model.SensorDTO;

@WebServlet("/info")
public class InfoWrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 아두이노 요청을 읽어오는 구간
	      String bodyJson = "";

	      StringBuilder stringBuilder = new StringBuilder();
	      BufferedReader br = null; //

	      try {
	         String line = "";
	         // body내용 inputstream에 담는다.
	         InputStream inputStream = request.getInputStream();
	         if (inputStream != null) {
	            br = new BufferedReader(new InputStreamReader(inputStream));
	            // 더 읽을 라인이 없을때까지 계속
	            while ((line = br.readLine()) != null) {
	               stringBuilder.append(line);
	            }
	         }
	      } catch (IOException e) {
	         e.printStackTrace();
	      }

	      // 읽어온 데이터를 json으로 파싱하는 구간
	      Gson gson = new Gson();
	      SensorInfo info = gson.fromJson(stringBuilder.toString(), SensorInfo.class);

	      DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	      LocalDateTime upTime = LocalDateTime.parse(info.getUpTime(), formatter);
	      LocalDateTime downTime = LocalDateTime.parse(info.getDownTime(), formatter);

	      System.out.println(upTime);

	      Duration time = Duration.between(upTime.toLocalTime(), downTime.toLocalTime());

	      LocalTime useTime = LocalTime.of((int) time.toHours(), (int) time.toMinutes(), (int) time.toSeconds());
	      System.out.println(useTime);
	      
	      SensorDTO dto = new SensorDTO();
	      dto.setId("smart");
	      dto.setCat_wt(info.getWeight());
	      
	      // 들어온 가스값으로 소변대변 구분
	      String potty = "";
	      if(info.getAlcohol() > 20) {
	         // 대변
	         potty = "대변";
	      }else {
	         // 소변
	         potty = "소변";
	      }
	      
	      dto.setPotty_type(potty);
	      if(potty.equals("대변")) {
	         dto.setGas(info.getAlcohol());
	      }
	      
	      dto.setIn_time(formatter.format(upTime));
	      dto.setOut_time(formatter.format(downTime));
	      dto.setUse_time(DateTimeFormatter.ofPattern("HH:mm:ss").format(useTime));

	      SensorDAO dao = new SensorDAO();
	      dao.insert(dto);

	      System.out.println("id : "+dto.getId()+", weight : "+dto.getCat_wt()+", potty_type : "+dto.getPotty_type()
	      +", gas : "+dto.getGas()+", intime : "+dto.getIn_time()+", outtime : "+dto.getOut_time()+", usetime : "+dto.getUse_time());
		
		
	}

}
