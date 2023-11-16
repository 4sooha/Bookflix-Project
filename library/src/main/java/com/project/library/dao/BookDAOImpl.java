package com.project.library.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.project.library.vo.BookVo;
import com.project.library.vo.LibraryBookVo;
import com.project.library.vo.Page;

@Repository
public class BookDAOImpl implements BookDAO {

	@Inject
	SqlSession sqlSession;

	// 도서 목록 + 검색 + 페이징
	@Override
	public List<BookVo> list(String searchOption, String keyword, int displayPost, int postNum) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		map.put("displayPost", displayPost);
		map.put("postNum", postNum);
		return sqlSession.selectList("book.listAll", map);
	}

	// 출력 도서 레코드 개수
	public int countArticle(String searchOption, String keyword) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		return sqlSession.selectOne("book.countArticle", map);
	}

	// 조회수 많은 도서 목록
	public List<BookVo> best_hits() throws Exception {
		return sqlSession.selectList("book.best_hits");
	}

	// 관심 카테고리 (조회 많은 카테고리 가져오기)
	public String interest_ctg(String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		return sqlSession.selectOne("book.interest_ctg", map);
	}

	// 아이디별 관심 카테고리 추천 목록
	public List<BookVo> ctg_recom(String interest_ctg) throws Exception {
		return sqlSession.selectList("book.ctg_recom",interest_ctg);
	}

	// 상세보기
	@Override
	public BookVo read(int b_no, String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("b_no", b_no);
		map.put("userId", userId);
		// 상세보기 클릭한 도서 기록(관심 카테고리 확인용 insert)
		sqlSession.update("book.increaseViewcnt", map);
		// 도서 상세보기
		return sqlSession.selectOne("book.view", b_no);
	}

	// 도서 소장한 도서관 목록
	public List<LibraryBookVo> library_list(String b_title) throws Exception {
		return sqlSession.selectList("book.lib_list", b_title);
	}
}
