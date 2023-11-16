package com.project.library.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.library.dao.BookDAO;
import com.project.library.vo.BookVo;
import com.project.library.vo.LibraryBookVo;
import com.project.library.vo.Page;

@Service
public class BookServiceImpl implements BookService {

	@Inject
	BookDAO bookDao;

	// 도서 목록 + 검색 + 페이징
	@Override
	public List<BookVo> list(String searchOption, String keyword, int displayPost, int postNum) throws Exception {
		return bookDao.list(searchOption, keyword, displayPost, postNum);
	}

	// 도서 상세보기 + 도서 조회수 증가
	@Override
	public BookVo read(int b_no, String userId) throws Exception {
		return bookDao.read(b_no, userId);
	}

	// 출력 도서 레코드 개수
	public int countArticle(String searchOption, String keyword) throws Exception {
		return bookDao.countArticle(searchOption, keyword);
	}

	// 뷰화면에서 도서 소장한 도서관 목록
	public List<LibraryBookVo> library_list(String b_title) throws Exception {
		return bookDao.library_list(b_title);
	}

	// 조회수 많은 도서 목록
	public List<BookVo> best_hits() throws Exception {
		return bookDao.best_hits();
	}

	// 관심 카테고리 (조회 많은 카테고리 가져오기)
	public String interest_ctg(String userId) throws Exception {
		return bookDao.interest_ctg(userId);
	}

	// 아이디별 관심 카테고리 추천 목록
	public List<BookVo> ctg_recom(String interest_ctg) throws Exception {
		return bookDao.ctg_recom(interest_ctg);
	}
}
