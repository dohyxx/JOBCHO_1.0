package org.jobcho.controller;


import org.jobcho.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/post/*")
@Log4j
@AllArgsConstructor
public class PostController {

	@Autowired
	private PostService service;
	
	
	//게시글 리스트
	@GetMapping("/list")
	public String getPost(Model model){	
		
		log.info("게시글 리스트");
		model.addAttribute("postList", service.getListPost());
		
		return "post";
	}
	
	
	
	
	
	
		
}
