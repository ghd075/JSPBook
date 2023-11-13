package kr.or.ddit.ch07;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class BoardRepository {
	private static int no = 0;	// 게시글번호
	private ArrayList<BoardVO> listOfBoard = new ArrayList<BoardVO>();
	private static BoardRepository instance = new BoardRepository();

	public static BoardRepository getInstance(){
		return instance;
	} 

	public BoardRepository() {}

	public ArrayList<BoardVO> selectBoardList() {
		return listOfBoard;
	}
	
	public BoardVO getBoardById(int no) {
		BoardVO boardVO = null;

		for (int i = 0; i < listOfBoard.size(); i++) {
			BoardVO board = listOfBoard.get(i);
			if (board != null && board.getNo() == no) {
				boardVO = new BoardVO();
				boardVO = board;
				break;
			}
		}
		
		boardVO.setHit(boardVO.getHit() + 1);
		return boardVO;
	}
	
	public void deleteBoard(int no) {
		for (int i = 0; i < listOfBoard.size(); i++) {
			BoardVO board = listOfBoard.get(i);
			if (board != null && board.getNo() == no) {
				listOfBoard.remove(i);
			}
		}
	}
	
	public void updateBoard(BoardVO board) {
		for (int i = 0; i < listOfBoard.size(); i++) {
			BoardVO gBoard = listOfBoard.get(i);
			if (gBoard != null && gBoard.getNo() == board.getNo()) {
//				gBoard.setNo(board.getNo());
				gBoard.setTitle(board.getTitle());
				gBoard.setContent(board.getContent());
				if(!board.getFileVO().getFileName().equals("")) {
					gBoard.setFileVO(board.getFileVO());
				}
				break;
			}
		}
	}
	
	public void addBoard(BoardVO board) {
		board.setNo(++no);
		board.setRegDate(getCurrentTime());
		listOfBoard.add(board);
	}
	
	public int getNo() {
		return no;
	}
	
	public String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
}
