package com.kosmo.baby.service.web;

import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.baby.service.MailHandler;
import com.kosmo.baby.service.TempKey;
import com.kosmo.baby.service.impl.MembersServiceimpl;

@Controller
public class MembersController {
	
	@Inject
	private JavaMailSender mailSender;
	
	
	//서비스 주입
	@Resource(name="membersServiceimpl")
	private MembersServiceimpl service;
	
	@RequestMapping("/Login.kosmo")
	public String isMember(@RequestParam Map map,HttpSession session) throws Exception{
		System.out.println(map.get("loginId"));
		boolean sdf = service.isMember(map);
		System.out.println(sdf);
		return "/admin_page/admin_index";
	}
	
	@RequestMapping("/Signup.kosmo")
	public String singup(@RequestParam Map map) throws Exception{
		System.out.println(map.get("email"));
		System.out.println(map.get("textEmail"));
		System.out.println(map.get("selectbox"));
		if(map.get("textEmail")==null) {
			map.put("email",map.get("email")+"@"+map.get("selectbox"));
		}
		else {
			map.put("email",map.get("email")+"@"+map.get("textEmail"));
		}
		map.put("tel", Integer.parseInt(map.get("phone1").toString()+map.get("phone2")+map.get("phone3")));
		map.put("addr", map.get("postNo").toString()+map.get("bscAdr")+map.get("dtlAddr"));
		
		//인증키 만들기
		String key =new TempKey().getKey(20, false);
		//map.put("AUTHKEY", key);
			
		service.insert(map);
		
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("육아육아해사이트 회원가입 이메일 인증");
		sendMail.setText(
					new StringBuffer().append("<h1>육아육아해사이트 회원가입 이메일 인증</h1>").append("<a href='http://localhost:8080/onememo/emailConfirm.wow?email=").append(map.get("email").toString()).append("&authkey=").append(key).append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("csj910226@gmail.com", "육아육아해");
		sendMail.setTo(map.get("email").toString());
		sendMail.send();
		
		
		return "/admin_page/admin_index";
	}

}
