package com.kosmo.baby.service.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.kosmo.baby.service.impl.Carpool_borderServiceimpl;

@Controller
public class Carpool_borderController {
	
	//서비스 주입
	@Resource(name="carpool_borderServiceimpl")
	private Carpool_borderServiceimpl service;
	
	//여기다 리퀘스트 맵핑 하셔서 작성하시면 됩니다
	
	
}
