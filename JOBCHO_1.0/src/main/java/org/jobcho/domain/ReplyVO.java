package org.jobcho.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {
	
	
	private int reply_num;
	private String reply_contents;
	private int member_num;
	private int post_num;
	private int islive;
	private Date reply_date;
}
