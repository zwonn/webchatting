package com.gaon.prj.member.dao;

import com.gaon.prj.member.vo.MemberVO;

public interface MemberDAO {
	
	public int newMember(MemberVO memberVO);
	public MemberVO memberCheck(MemberVO memberVO);
}
