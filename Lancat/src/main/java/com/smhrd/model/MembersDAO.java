package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MembersDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
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

