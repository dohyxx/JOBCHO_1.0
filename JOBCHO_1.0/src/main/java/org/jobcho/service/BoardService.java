package org.jobcho.service;

import java.util.List;

import org.jobcho.domain.PostVO;


public interface BoardService {
	
	public int insertBoard(PostVO board);
	
	public List<PostVO> getListBoard();
	
	public int updateBoard(PostVO board);
	
	public void deleteBoard(int board_num);

}
