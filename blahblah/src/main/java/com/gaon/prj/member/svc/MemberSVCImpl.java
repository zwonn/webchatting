package com.gaon.prj.member.svc;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.gaon.prj.member.dao.MemberDAO;
import com.gaon.prj.member.vo.MemberVO;


@Service
public class MemberSVCImpl implements MemberSVC {
	@Inject
	@Qualifier("memberDAOImpl")
	MemberDAO memberDAO;
	
	@Override
	public int newMember(MemberVO memberVO) {
		return memberDAO.newMember(memberVO);
	}
	
	@Override
	public MemberVO memberCheck(MemberVO memberVO) {
		return memberDAO.memberCheck(memberVO);
	}
	
	
}