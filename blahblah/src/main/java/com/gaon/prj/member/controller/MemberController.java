package com.gaon.prj.member.controller;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	

	
	@ResponseBody
	@RequestMapping(value = "/newMember", method = RequestMethod.POST, produces = "application/json")
	public int newMember(@RequestBody HashMap<String, String> memberInfo, MemberVO memberVO) throws Exception {
		memberVO.setId(memberInfo.get("id"));
		memberVO.setPw(memberInfo.get("pw"));
		memberVO.setNickname(memberInfo.get("nickname"));
		memberVO.setEmail(memberInfo.get("email"));
		memberVO.setPhone(memberInfo.get("phone"));
		return memberSVC.newMember(memberVO);
	}
	
	@ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json")
	public int login(@RequestBody HashMap<String, String> memberInfo, MemberVO memberVO, HttpSession session) throws Exception{
		memberVO.setId(memberInfo.get("id"));
		memberVO.setPw(memberInfo.get("pw"));
		MemberVO result = memberSVC.memberCheck(memberVO);
		System.out.println(result);
		if(result == null) {
			return -1;
		}else {
			session.setAttribute("member",result);
			System.out.println("세선 : " + session.getAttribute("member"));
			return 1;
		}
	}

}