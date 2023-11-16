package com.project.library.dao;

import java.util.List;

import com.project.library.vo.BoardVO;
import com.project.library.vo.Pageboard;

public interface BoardDAO {
	
	//삽입
	public void create(BoardVO vo) throws Exception;	
	//상세 보기
	public BoardVO read(int bno) throws Exception;
	//수정
	public void update(BoardVO vo) throws Exception;
	//삭제
	public void delete(int bno) throws Exception;
	//전체목록
	//public List<BoardVO> listAll() throws Exception;
	//조회수
	public void increaseViewcnt	(int bno)throws Exception;
	//전체목록 보기 +페이징
	public List<BoardVO> listAll(String searchOption, String keyword, int displayPost, int postNum) throws Exception;
	//게시글 총 갯수
	public int countArticle(String searchOption, String keyword) throws Exception ;
	
}
