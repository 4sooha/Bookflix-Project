package com.project.library.vo;

public class Pageboard {

	// 현재 페이지 번호
	private int num;
	// 게시물 총 갯수
	private int count;
	// 한 페이지에 출력할 게시물 갯수
	private int postNum = 10;
	// 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
	private int pageNum;
	// 출력할 게시물
	private int displayPost;
	// 한번에 표시할 페이징 번호의 갯수
	private int pageNum_cnt = 5;
	// 표시되는 페이지 번호 중 마지막 번호
	private int endPageNum;
	// 표시되는 페이지 번호 중 첫번째 번호
	private int startPageNum;

	// 다음/이전 표시 여부
	private boolean prev;
	private boolean next;

	public void setNum(int num) {
		this.num = num;
	}

	public void setCount(int count) {
		this.count = count;

		dataCalc();
	}

	public int getCount() {
		return count;
	}

	public int getPostNum() {
		return postNum;
	}

	public int getPageNum() {
		return pageNum;
	}

	public int getDisplayPost() {
		return displayPost;
	}

	public int getPageNum_cnt() {
		return pageNum_cnt;
	}

	public int getEndPageNum() {
		return endPageNum;
	}

	public int getStartPageNum() {
		return startPageNum;
	}

	public boolean getPrev() {
		return prev;
	}

	public boolean getNext() {
		return next;
	}

	private void dataCalc() {

		// 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		pageNum = (int) Math.ceil((double) count / postNum);

		displayPost = (num - 1) * postNum;

		// 표시되는 페이지 번호 중 마지막 번호
		// 마지막 페이지 번호 = ((올림)(현재 페이지 번호 / 한번에 표시할 페이지 번호의 갯수)) * 한번에 표시할 페이지 번호의 갯수
		endPageNum = (int) (Math.ceil((double) num / (double) pageNum_cnt) * pageNum_cnt);
		// 표시되는 페이지 번호 중 첫번째 번호
		// 시작 페이지 = 마지막 페이지 번호 - 한번에 표시할 페이지 번호의 갯수 + 1
		startPageNum = endPageNum - (pageNum_cnt - 1);
		// 마지막 번호 재계산
		int endPageNum_tmp = pageNum;
		if (endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}
		prev = startPageNum == 1 ? false : true;
		next = endPageNum * postNum > count ? false : true;
	}
}
