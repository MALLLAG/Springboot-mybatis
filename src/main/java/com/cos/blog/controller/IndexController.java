package com.cos.blog.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.blog.service.BoardService;

@Controller
public class IndexController {

	@Autowired
	private BoardService boardService;
	
	@GetMapping({"","/"})
	public String index(Model model) {
		model.addAttribute("boards", boardService.글목록());
		return "index";
	}
	
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "user/joinForm";
	}
	
	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "user/loginForm";
	}
	
	@GetMapping("/auth/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/board/saveForm")
	public String boardForm() {
		return "board/saveForm";
	}
	
	
	
	
	
	
	
	
	
	
	
}