package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class SensorDAO {

    private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
    
    public int insert(SensorDTO dto) {

       int row = 0;
       SqlSession sqlSession = sqlSessionFactory.openSession(true);
       try {
          row = sqlSession.insert("com.smhrd.model.SensorDAO.insert", dto);
       } catch (Exception e) {
          e.printStackTrace();
       }finally {
          sqlSession.close();
       }
             
       return row;
    }
}
