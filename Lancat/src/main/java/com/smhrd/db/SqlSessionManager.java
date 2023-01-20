package com.smhrd.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {

	
	public static SqlSessionFactory sqlSessionFactory;
	
	static {
		String resource ="com/smhrd/db/mybatis-config.xml";
		
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
		public static SqlSessionFactory getSqlSession() {
			return sqlSessionFactory;
		}
		
	
}
