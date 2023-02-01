package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class SensorDAO {

    private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
    
 // 아두이노로 들어온 정보 insert
 	public int insert(SensorDTO dto) {

 		int row = 0;
 		SqlSession sqlSession = sqlSessionFactory.openSession(true);
 		try {
 			row = sqlSession.insert("com.smhrd.model.SensorDAO.insert", dto);
 		} catch (Exception e) {
 			e.printStackTrace();
 		} finally {
 			sqlSession.close();
 		}

 		return row;
 	}

 	// tlt_use 테이블에서 정보 select(일주일동안 데이터 가져오기)
 	public List<SensorDTO> tltSelect(SensorDTO dto) {
 		List<SensorDTO> result = null;

 		SqlSession sqlSession = sqlSessionFactory.openSession(true);
 		try {
 			result = sqlSession.selectList("com.smhrd.model.SensorDAO.tltSelect", dto);
 		} catch (Exception e) {
 			e.printStackTrace();
 		} finally {
 			sqlSession.close();
 		}

 		return result;
 	}
 	
 	// 일주일동안의 날짜 select
 	public List<String> tltDaySelect(SensorDTO dto) {
 		List<String> result = null;

 		SqlSession sqlSession = sqlSessionFactory.openSession(true);
 		try {
 			result = sqlSession.selectList("com.smhrd.model.SensorDAO.tltDaySelect", dto);
 		} catch (Exception e) {
 			e.printStackTrace();
 		} finally {
 			sqlSession.close();
 		}

 		return result;
 	}
}
