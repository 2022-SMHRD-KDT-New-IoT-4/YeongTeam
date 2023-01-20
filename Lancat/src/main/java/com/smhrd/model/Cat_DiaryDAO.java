package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class Cat_DiaryDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int Lancatinsert(Cat_DiaryDTO dto) {
		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		try {
		 row = session.insert("com.smhrd.model.Cat_DiaryDAO.Lancatinsert", dto);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return row;
	}
	
}