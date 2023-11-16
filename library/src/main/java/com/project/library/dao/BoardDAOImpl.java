package com.project.library.dao;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.library.vo.BoardVO;
import com.project.library.vo.Pageboard;

@Repository 
public class BoardDAOImpl implements BoardDAO {

	@Inject 
	private SqlSession sqlSession;

	//삽입
	@Override 
	public void create(BoardVO vo) throws Exception {
		sqlSession.insert("board.insert", vo);
	}

	//상세보기
	@Override  
	public BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("board.view", bno);
	}
	
	//수정
	@Override  
	public void update(BoardVO vo) throws Exception {
		sqlSession.update("board.updateArticle", vo);
	}

	//삭제
	@Override  
	public void delete(int bno) throws Exception {
		sqlSession.delete("board.deleteArticle", bno);
	}

	//전체목록 +페이징
	@Override 
	public List<BoardVO> listAll(String searchOption, String keyword, int displayPost, int postNum) throws Exception {
		// 검색 옵션, 키워드 -> 맵에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		
		map.put("displayPost",displayPost);
		map.put("postNum",postNum);
		
		return sqlSession.selectList("board.listAll", map);
	}
	
	//조회수 증가
	@Override 
	public void increaseViewcnt(int bno) throws Exception {
		sqlSession.update("board.increaseViewcnt", bno);
	}

    //게시글 총 갯수
	public int countArticle(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne("board.countArticle", map);
	}
}
