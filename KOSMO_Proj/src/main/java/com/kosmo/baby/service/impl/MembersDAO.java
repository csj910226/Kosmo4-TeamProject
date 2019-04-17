package com.kosmo.baby.service.impl;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kosmo.baby.service.MembersDTO;
import com.kosmo.baby.service.MembersService;

@Repository
public class MembersDAO implements MembersService{
	@Resource(name="template")
	private SqlSessionTemplate template;
	
	@Override
	public boolean isMember(Map map) {
		System.out.println("DAO");
		System.out.println(map.get("loginId"));
		//회원 판단용
		return (Integer)template.selectOne("isMember",map)==0? false : true;
	}

	@Override
	public List<MembersDTO> selectList(Map map) {
		// 전체 회원 리스트
		List<MembersDTO> list = new Vector<MembersDTO>();
		list = template.selectList("selectList",map);
		return list;
	}

	@Override
	public MembersDTO selectOne(Map map) {
		// 회원 한명 특정 셀렉트
		return null;
	}

	@Override
	public int delete(Map map) {
		// 회원 탈퇴용
		return 0;
	}

	@Override
	public int insert(Map map) {
		// 회원 가입용
		
	
		
		
		template.insert("signup",map);
		return 0;
	}

	@Override
	public int update(Map map) {
		// 회원 정보 수정용
		return 0;
	}
	
}
