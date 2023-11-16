package com.project.library.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.project.library.dao.LoginDAO;
import com.project.library.vo.MemberVO;

@Service 
public class LoginServiceImpl implements LoginService {

	@Inject
	private LoginDAO loginDao;

	// 회원 로그인 체크
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = loginDao.loginCheck(vo);
		if (result) { 
			MemberVO vo2 = viewMember(vo); 
			System.out.println("userName  : " + vo2.getUserEmail());
			// 세션 변수 등록
			session.setAttribute("userId", vo2.getUserId()); 
			session.setAttribute("userName", vo2.getUserName());
			session.setAttribute("userEmail", vo2.getUserEmail());
		}
		return result;
	}

	// 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return loginDao.viewMember(vo);
	}

	// 회원 로그 아웃
	@Override
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
		// session.removeAttribute("userId");
		// 세션 정보를 초기화 시킴
		session.invalidate(); 
	}
}
