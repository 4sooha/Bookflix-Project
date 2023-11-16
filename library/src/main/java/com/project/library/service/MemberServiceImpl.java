package com.project.library.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.library.dao.MemberDAO;
import com.project.library.vo.MemberVO;

@Service 
public class MemberServiceImpl implements MemberService {

	@Inject 
	private MemberDAO memberDao;

	@Override
	public List<MemberVO> memberList() {
		return memberDao.memberList();
	}

	@Override
	public void insertMember(MemberVO vo) {
		memberDao.insertMember(vo);
	}

	// 회원 정보 상세 조회
	@Override
	public MemberVO viewMember(String userId) {
		return memberDao.viewMember(userId);
	}

	// 회원 정보 수정 처리
	@Override
	public void deleteMember(String userId) {
		memberDao.deleteMember(userId);
	}

	// 회원 정보 삭제 처리
	@Override
	public void updateMember(MemberVO vo) {
		memberDao.updateMember(vo);
	}

	// 회원 정보 수정 및 삭제를 위한 비밀번호 체크
	@Override
	public boolean checkPw(String userId, String userPw) {
		return memberDao.checkPw(userId, userPw);
	}
}
