package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class Cat_DiaryDAO{

	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	// 육묘일기 insert
	public int DiaryInsert(Cat_DiaryDTO dto) {
		
		int row = 0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		try {
			sqlSession.insert("com.smhrd.model.Cat_DiaryDAO.DiaryInsert",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return row;
	}
	// 일반 계정일 때 전체 게시글 목록
	public List<Cat_DiaryDTO> DiarySelect(Cat_DiaryDTO dto){
		
		List<Cat_DiaryDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			list = sqlSession.selectList("com.smhrd.model.Cat_DiaryDAO.DiarySelect",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
		
	}

	// 일반 계정 육묘일기 수정
	public int DiaryUpdate(Cat_DiaryDTO dto) {
		
		int row =0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			row = sqlSession.update("com.smhrd.model.Cat_DiaryDAO.DiaryUpdate", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return row;
		
				
	}

	// admin 일 때 전체 게시글 목록 
	public List<Cat_DiaryDTO> AdminSelectAll() {
		List<Cat_DiaryDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			list = sqlSession.selectList("com.smhrd.model.Cat_DiaryDAO.AdminSelectAll");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
	}

	// admin 삭제 테이블 확인
	public List<Cat_DiaryDTO> AdminDelete() {
		List<Cat_DiaryDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			list = sqlSession.selectList("com.smhrd.model.Cat_DiaryDAO.AdminDelete");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
	}




	
}