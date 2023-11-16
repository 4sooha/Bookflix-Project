package com.project.library.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.project.library.dao.BoardDAO;
import com.project.library.vo.BoardVO;
import com.project.library.vo.Pageboard;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO boardDao;

	// 삽입
	@Override 
	public void create(BoardVO vo) throws Exception {
		boardDao.create(vo);
	}

	// 상세보기
	@Override 
	public BoardVO read(int bno) throws Exception {
		return boardDao.read(bno);
	}

	// 수정
	@Override 
	public void update(BoardVO vo) throws Exception {
		boardDao.update(vo);
	}

	// 삭제
	@Override 
	public void delete(int bno) throws Exception {
		boardDao.delete(bno);

	}

	// @Override
	// public List<BoardVO> listAll() throws Exception {
	// return boardDao.listAll();
	// }

	// 조회수 증가
	@Override
	public void increaseViewcnt(int bno, HttpSession session) throws Exception {
		// 세션 정보 체크할 변수
		long update_time = 0;
		if (session.getAttribute("update_time_" + bno) != null) {
			// update_time=0_1
			update_time = (Long) session.getAttribute("update_time_" + bno);
		}
		long current_time = System.currentTimeMillis();
		if (current_time - update_time > 5 * 1000) { // 1초 1000밀리초 => 5초
			boardDao.increaseViewcnt(bno);
			session.setAttribute("update_time_" + bno, current_time);
		}
	}

	// 목록 전체 보기
	@Override
	public List<BoardVO> listAll(String searchOption, String keyword, int displayPost, int postNum) throws Exception {
		return boardDao.listAll(searchOption, keyword, displayPost, postNum);
	}

	// 게시글 총갯수
	@Override
	public int countArticle(String searchOption, String keyword) throws Exception {
		return boardDao.countArticle(searchOption, keyword);
	}
}
