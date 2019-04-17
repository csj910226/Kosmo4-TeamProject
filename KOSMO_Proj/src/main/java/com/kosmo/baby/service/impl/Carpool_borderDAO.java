package com.kosmo.baby.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.baby.service.Carpool_borderDTO;
import com.kosmo.baby.service.Carpool_borderService;

@Repository
public class Carpool_borderDAO implements Carpool_borderService{
	
	@Resource(name = "template")
	private SqlSessionTemplate template;

	@Override
	public List<Carpool_borderDTO> selectList(Map map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int delete(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Map map) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Carpool_borderDTO selectOne(Map map) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
