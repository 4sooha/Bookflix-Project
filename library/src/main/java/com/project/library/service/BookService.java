package com.project.library.service;

import java.util.List;

import com.project.library.vo.BookVo;
import com.project.library.vo.LibraryBookVo;
import com.project.library.vo.Page;

public interface BookService {
	
	// 도서 목록 + 검색 + 페이징
	public List<BookVo> list(String searchOption, String keyword, int displayPost, int postNum) throws Exception;

	// 도서 상세보기
	public BookVo read(int b_no, String userId) throws Exception;
	
	// 출력 도서 레코드 개수
	public int countArticle(String searchOption, String keyword) throws Exception;

	// 도서 소장한 도서관 목록
	public List<LibraryBookVo> library_list(String b_title) throws Exception;

	// 조회수 많은 도서 목록
	public List<BookVo> best_hits()throws Exception;

	// 관심 카테고리 (조회 많은 카테고리 가져오기)
	public String interest_ctg(String userId)throws Exception;
	
	// 아이디별 관심 카테고리 추천 목록
	public List<BookVo> ctg_recom(String interest_ctg) throws Exception;

}
