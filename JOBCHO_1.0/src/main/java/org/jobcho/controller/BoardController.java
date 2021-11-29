package org.jobcho.controller;

import java.util.List;

import org.jobcho.domain.BoardVO;
import org.jobcho.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@AllArgsConstructor
@NoArgsConstructor
@Log4j
public class BoardController {
	
	
	@Autowired
	private BoardService service;
	
	
	/*
	 * 게시판 리스트 조회(PostMan 확인O)
	 * 메인 화면에서 항상 호출
	 */
	@GetMapping("/board")
	public void getListBoard(Model model){
		
		log.info("getListBoards ================== ");
		model.addAttribute("board", service.getListBoard());
		
	}
	
	
	@GetMapping("/post")
	public void getPost(Model model){
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
}
