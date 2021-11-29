package org.jobcho.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class PostVO {

  private Long bno;
  private String title;
  private String content;
  private String writer;
  private Date regdate;
  private Date updateDate;
  
  private int replyCnt; //댓글 수 처리
  
//  private List<BoardAttachVO> attachList; //파일 1개의 정보가 리스트로 
}
