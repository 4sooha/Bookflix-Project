package com.project.library.service;

import javax.servlet.http.HttpSession;

import com.project.library.vo.MemberVO;

public interface LoginService {
	
	// 회원 로그인 체크 
	public boolean loginCheck(MemberVO vo, HttpSession session);
	
	// 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
	// 회원 로그아웃
	public void logout(HttpSession session);
}
