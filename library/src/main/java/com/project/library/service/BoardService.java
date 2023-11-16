package com.project.library.service;

import java.util.List;


import javax.servlet.http.HttpSession;
import com.project.library.vo.BoardVO;
import com.project.library.vo.Pageboard;

public interface BoardService {
	
	//삽입
	public void create(BoardVO vo) throws Exception;
	//상세조회
	public BoardVO read(int bno) throws Exception;
	//수정
	public void update(BoardVO vo) throws Exception;
	//삭제
	public void delete(int bno) throws Exception;
	//전체목록
	//public List<BoardVO> listAll() throws Exception;
	//조회수 ==> session 추가 
	public void increaseViewcnt	(int bno, HttpSession session) 	throws Exception;
	//도서 목록 전체 보기
	public List<BoardVO> listAll(String searchOption, String keyword, int displayPost, int postNum) throws Exception;
	//조회수 증가
	public int countArticle(String searchOption, String keyword)throws Exception;
}
