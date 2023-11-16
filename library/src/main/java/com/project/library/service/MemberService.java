package com.project.library.service;

import java.util.List;

import com.project.library.vo.MemberVO;

public interface MemberService {
	
	// 전체 목록
	public List<MemberVO> memberList();

	// 삽입
	public void insertMember(MemberVO vo);

	// 상세보기
	public MemberVO viewMember(String userId);

	// 수정
	public void updateMember(MemberVO vo);

	// 삭제
	public void deleteMember(String userId);

	// 비밀번호 체크
	public boolean checkPw(String userId, String userPw);

}
