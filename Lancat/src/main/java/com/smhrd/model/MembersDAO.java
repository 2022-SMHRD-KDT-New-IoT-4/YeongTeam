package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MembersDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int join(MembersDTO dto) {
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		try {
		 row = session.insert("com.smhrd.model.MembersDAO.join", dto);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return row;
	}
	
	public MembersDTO login(MembersDTO dto) {

		MembersDTO result = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			result = sqlSession.selectOne("com.smhrd.model.MembersDAO.login", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
				
		return result;
	}

}

