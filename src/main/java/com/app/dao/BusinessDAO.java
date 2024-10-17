package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class BusinessDAO {
	public SqlSession sqlSession;
	
	public BusinessDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}