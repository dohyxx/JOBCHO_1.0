package org.jobcho.service;

import java.util.List;

import org.jobcho.domain.BoardVO;


public interface BoardService {
	
	public int insertBoard(BoardVO board);
	
	public List<BoardVO> getListBoard();
	
	public int updateBoard(BoardVO board);
	
	public void deleteBoard(int board_num);

}
