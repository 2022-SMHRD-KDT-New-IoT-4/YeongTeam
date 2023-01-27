package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class Cat_DiaryDAO{

	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	// 일반 계정일 때 전체 게시글 목록
	public List<Cat_DiaryDTO> select(Cat_DiaryDTO dto){
		List<Cat_DiaryDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			list = sqlSession.selectList("com.smhrd.model.Cat_DiaryDAO.select",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
		
	}

	// 일반 계정 육묘일기 수정
	public int update(Cat_DiaryDTO dto) {
		
		int row =0;
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			row = sqlSession.update("com.smhrd.model.Cat_DiaryDAO.update", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return row;
		
				
	}

	// admin 일 때 전체 게시글 목록 
	public List<Cat_DiaryDTO> selectAll() {
		List<Cat_DiaryDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			list = sqlSession.selectList("com.smhrd.model.Cat_DiaryDAO.selectAll");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
	}

	// admin 삭제 테이블 확인
	public List<Cat_DiaryDTO> delete() {
		List<Cat_DiaryDTO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		
		try {
			list = sqlSession.selectList("com.smhrd.model.Cat_DiaryDAO.delete");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		return list;
	}



	
}