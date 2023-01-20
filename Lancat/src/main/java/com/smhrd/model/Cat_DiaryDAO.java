package com.smhrd.model;

import java.util.List;

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

	public List<Cat_DiaryDTO> selectAll(Cat_DiaryDTO dto){
		List<Cat_DiaryDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			list = sqlSession.selectList("com.smhrd.model.Cat_Diary_DAO.selectAll");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
		
	}

	public int update(Cat_DiaryDTO dto) {
		
		int row =0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			row = sqlSession.update("com.smhrd.model.Cat_Diary_DAO.update", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return row;
		
				
	}
	
	
}