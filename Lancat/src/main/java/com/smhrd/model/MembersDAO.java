package com.smhrd.model;


import java.util.List;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MembersDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	// 회원가입 join
	
	public int join(MembersDTO dto) {
		int row = 0;
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		try {
		 row = sqlsession.insert("com.smhrd.model.MembersDAO.join", dto);
		} catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
		return row;
	}
	
	// 로그인 login
	public MembersDTO login(MembersDTO dto) {

		MembersDTO result = null;
		SqlSession sqlsession = sqlSessionFactory.openSession(true);
		try {
			result = sqlsession.selectOne("com.smhrd.model.MembersDAO.login", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlsession.close();
		}
				
		return result;
	}
	
	// 회원정보수정 update
	public int update(MembersDTO dto) {
		
		int row = 0;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			row = sqlSession.update("com.smhrd.model.MembersDAO.update", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return 0;
	}

}

