package com.gaon.prj.member.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gaon.prj.member.svc.MemberSVC;
import com.gaon.prj.member.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	MemberSVC memberSVC;
	
	/**
	 * 로그인 페이지 이동
	 * @return
	 */
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	/**
	 * 회원가입 페이지 이동
	 * @return
	 */
	@RequestMapping("/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	

	
	@PostMapping("/newMember")
	public void newMember(MemberVO memberVO) {
		memberVO.setId("id");
		memberVO.setPw("1234");
		memberVO.setNickname("nickname");
		memberVO.setEmail("email");
		memberVO.setPhone("phone");
		memberSVC.newMember(memberVO);
	}
}