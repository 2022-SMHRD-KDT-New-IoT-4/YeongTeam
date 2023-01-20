package com.smhrd.model;


import java.util.List;



import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MembersDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
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
public int update(MembersDTO dto) {

		
		int row = 0;
		SqlSession session = sqlSessionFactory.openSession(true);
		try {
			row = session.update("com.smhrd.model.MembersDAO.update", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return 0;
	}

}

