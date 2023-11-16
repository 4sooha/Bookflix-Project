package com.project.library.dao;

import java.util.List;

import com.project.library.vo.MemberVO;

public interface MemberDAO {
	
	//전체 목록
	public List<MemberVO> memberList();
	//삽입
	public void insertMember(MemberVO vo);
	// 상세보기
	public MemberVO viewMember(String userId);
	// 수정
	public void updateMember(MemberVO vo);
	// 삭제 
	public void deleteMember(String userId);
	// 회원 삭제 시 체크(아이디와 비번 일치 시에 삭제 )
    public boolean checkPw(String userId, String userPw);

}
