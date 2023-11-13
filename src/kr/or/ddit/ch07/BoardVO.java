package kr.or.ddit.ch07;

import java.util.List;

public class BoardVO implements Comparable<BoardVO>{
	private int no = 0;
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private int hit = 0;
	private BoardFileVO fileVO;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public BoardFileVO getFileVO() {
		return fileVO;
	}
	public void setFileVO(BoardFileVO fileVO) {
		this.fileVO = fileVO;
	}
	@Override
	public int compareTo(BoardVO board) {
		if (board.no < no) {
            return 1;
        } else if (board.no > no) {
            return -1;
        }
        return 0;
	}
	
}
