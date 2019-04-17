package com.kosmo.baby.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kosmo.baby.service.MembersDTO;
import com.kosmo.baby.service.MembersService;

@Service
public class MembersServiceimpl implements MembersService{
	//MembersDAO객체 주입
	@Resource(name="membersDAO")
	private MembersDAO dao;
	
	
	@Override
	public boolean isMember(Map map) {
		return dao.isMember(map);
	}

	@Override
	public List<MembersDTO> selectList(Map map) {
		return dao.selectList(map);
	}

	@Override
	public MembersDTO selectOne(Map map) {
		return null;
	}

	@Override
	public int delete(Map map) {
		return 0;
	}

	@Override
	public int insert(Map map) {
		return dao.insert(map);
	}

	@Override
	public int update(Map map) {
		return 0;
	}

}
