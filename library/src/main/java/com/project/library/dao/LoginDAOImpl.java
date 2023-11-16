package com.project.library.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.library.vo.MemberVO;

@Repository	
public class LoginDAOImpl implements LoginDAO {
	
	@Inject 
	private SqlSession sqlSession; 
	
	// 회원 로그인 체크
	@Override
	public boolean loginCheck(MemberVO vo) {
		String name = sqlSession.selectOne("login.loginCheck", vo);
		return (name == null) ? false : true;
	}

	// 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return sqlSession.selectOne("login.viewMember", vo);
	}

	// 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		// service 에서 세션을 끊어주므로 그냥 패턴만 맞춰서 메소드 써둔 것
	}
}
