package org.jobcho.controller;


import org.jobcho.domain.PostVO;
import org.jobcho.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/post/*")
@Log4j
@AllArgsConstructor
public class PostController {

	@Autowired
	private PostService service;
	
	
	//게시글 전체 리스트
	@GetMapping("/list")
	public void getListPost(Model model){	
		log.info("게시글 리스트");
		
		model.addAttribute("postList", service.getListPost());
	}
	
	
	//게시글 상세조회
	@GetMapping({"/get", "/update"})
	public void getPost(@RequestParam("post_num") int post_num, Model model) {
		log.info("게시글 상세조회: " + post_num);
		
		model.addAttribute("post", service.getPost(post_num));
	}
	
	
	//게시글 생성 1.등록폼 이동
	@GetMapping("/register")
	public void register() {
	}
	
	//게시글 생성 2.DB저장, 리스트로 이동
	@PostMapping("/register")
	public String register(PostVO post, RedirectAttributes rttr) {
		
		log.info("게시글 등록: " + post.getPost_title());
		
		post.setBoard_num(62);
		post.setMember_num(1);
		
		service.insertPost(post);
		rttr.addFlashAttribute("result", post.getBoard_num());
		
		return "redirect:/post/list";
	}
	
	
	//게시글 수정
	@PostMapping("/update")
	public String updatePost(PostVO post, RedirectAttributes rttr) {
		
		log.info("게시글 수정: " + post.getPost_num());
		
		int re = service.updateBoard(post);
		if(re == 1) {
			rttr.addFlashAttribute("result", " success");
		}
		
		return "redirect:/post/list";
	}
	
	
	
	//게시글 삭제
	@PostMapping("/delete")
	public String deletePost(@RequestParam("post_num") int post_num, RedirectAttributes rttr) {
		log.info("삭제 완료! " + post_num);
		System.out.println("컨트롤러 삭제");
		
		service.deletePost(post_num);
		
		return "redirect:/post/list";
	}
	
	
	
	
	
	
	
	
		
}
