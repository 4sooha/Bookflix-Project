package com.project.library.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.library.service.BookService;
import com.project.library.vo.BookVo;
import com.project.library.vo.LibraryBookVo;
import com.project.library.vo.Page;

@Controller
public class BookController {

	@Inject
	BookService bookService;
	
	// 메인
	@RequestMapping("/")
	public ModelAndView index(HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		// 조회수 많은 도서 목록
		List<BookVo> best_hits = bookService.best_hits();
		mav.addObject("best_hits", best_hits);
		
		// 아이디별 관심 카테고리 추천 목록
		String userId = (String) session.getAttribute("userId");
			if(userId != null) {
				// 관심 카테고리 (조회 많은 카테고리 가져오기)
				String interest_ctg = bookService.interest_ctg(userId);
				mav.addObject("interest_ctg", interest_ctg);
				List<BookVo> ctg_recom = bookService.ctg_recom(interest_ctg);
				mav.addObject("ctg_recom", ctg_recom);
			}
		mav.setViewName("/index");
		return mav;
	}

	// 도서 목록 + 검색 + 페이징
	@RequestMapping("/book/list")
	public ModelAndView list(@RequestParam(defaultValue = "1") int num, @RequestParam(defaultValue = "all") String searchOption,
			@RequestParam(defaultValue = "") String keyword) throws Exception {

		// 출력 도서 레코드 총 개수
		int count = bookService.countArticle(searchOption, keyword);

		Page page = new Page();
		page.setNum(num);
		page.setCount(count);
		
		// 리스트에 출력 도서
		List<BookVo> list = bookService.list(searchOption, keyword, page.getDisplayPost(), page.getPostNum());

		ModelAndView mav = new ModelAndView();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pageNum", page.getPageNum());
		// 시작 및 끝 번호
		map.put("startPageNum", page.getStartPageNum());
		map.put("endPageNum", page.getEndPageNum());
		// 이전 및 다음 
		map.put("prev", page.getPrev());
		map.put("next", page.getNext());
		// 검색 옵션 + 키워드
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);
		mav.addObject("map", map);
		
		// 조회수 많은 도서 목록
		List<BookVo> best_hits = bookService.best_hits();
		mav.addObject("best_hits", best_hits);

		mav.setViewName("/book/list");
		return mav;
	}

	// 도서 상세보기
	@RequestMapping("/book/view")
	public ModelAndView view(int b_no, String b_title, HttpSession session) throws Exception {
		
		String userId = (String) session.getAttribute("userId");

		ModelAndView mav = new ModelAndView();
		// 도서 상세보기 + 도서 조회수 증가
		mav.addObject("dto", bookService.read(b_no,userId));
		// 도서 소장도서관 목록
		List<LibraryBookVo> library_list = bookService.library_list(b_title);
		mav.addObject("lib_list", library_list);

		mav.setViewName("/book/view");
		return mav;
	}

}
