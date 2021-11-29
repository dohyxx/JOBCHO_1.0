package org.jobcho.mapper;

import java.util.List;

import org.jobcho.domain.PostVO;


public interface BoardMapper {

	int insertBoard(PostVO board); 		//게시판 생성
	List<PostVO> getListBoard(); 			//게시판 리스트목록
	PostVO getBoard();                           //게시글 상세
	int updateBoard(PostVO board);		//게시판 수정
	void deleteBoard(int board_num);		//게시판 삭제
	
	
	
}
