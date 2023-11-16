package com.project.library.controller;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.library.service.BoardService;
import com.project.library.vo.BoardVO;
import com.project.library.vo.Pageboard;


@Controller 
public class BoardController {
	
	@Inject
	private BoardService boardService;
	
	//(1) 게시글 작성하기
	@RequestMapping("/board/write")
	public String write() {
		return "board/write"; 
	}
	
	@RequestMapping("/board/insert")
	public String insert(@ModelAttribute BoardVO vo) throws Exception{
		 boardService.create(vo);
		 return "redirect:list";
	}	
	
	//(2) 검색 기능 리스트
	@RequestMapping("board/list")
	public ModelAndView list(@RequestParam(defaultValue="1") int num, @RequestParam(defaultValue = "all") String searchOption,
			@RequestParam(defaultValue="") String keyword) throws Exception{
		
		// 출력 도서 레코드 총 개수
		int count = boardService.countArticle(searchOption, keyword);
		
		Pageboard page = new Pageboard();
		page.setNum(num);
		page.setCount(count);
		
		// 게시판 리스트 출력 + 검색 + 페이징
		List<BoardVO> list = boardService.listAll(searchOption, keyword, page.getDisplayPost(), page.getPostNum());
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
		// 검색옵션 + 키워드
		map.put("searchOption", searchOption); 
		map.put("keyword", keyword);
		
		mav.addObject("map", map); 
		mav.setViewName("board/list"); 
		return mav; 
	}
	
	//(3) 글 상세보기 
	@RequestMapping("/board/view")
	public ModelAndView view(int bno, HttpSession session) throws Exception{
		boardService.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", boardService.read(bno));
		mav.setViewName("/board/view");
		return mav;
	}
	
	//(3_2) 글 수정하기 
	@RequestMapping("/board/modify")
	public ModelAndView modify(int bno, HttpSession session) throws Exception{
		boardService.increaseViewcnt(bno, session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", boardService.read(bno));
		mav.setViewName("/board/modify");
		return mav;
	}
			
	//(4) 글 수정하기
	@RequestMapping("/board/update")
	public String update(@ModelAttribute BoardVO vo) throws Exception{
		boardService.update(vo);
	    return "redirect:list";
	}
	
	//(5) 글 삭제하기
	@RequestMapping("board/delete")
	public String delete(int bno) throws Exception{
		boardService.delete(bno);
		return "redirect:list";
	}
}
