package com.cos.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.cos.blog.service.BoardService;

@Controller
public class BoardCategoryController {
	
	@Autowired
	private BoardService boardService;

	@GetMapping("/sports")
	public String sports(Model model) {
		model.addAttribute("boards", boardService.스포츠());
		return "board/category/sports";
	}
	
	@GetMapping("/employment")
	public String employment(Model model) {
		model.addAttribute("boards", boardService.취업());
		return "board/category/employment";
	}
	
	@GetMapping("/entertainment")
	public String entertainment(Model model) {
		model.addAttribute("boards", boardService.연예());
		return "board/category/entertainment";
	}
	
	@GetMapping("/fashion")
	public String fashion(Model model) {
		model.addAttribute("boards", boardService.패션());
		return "board/category/fashion";
	}
	
	@GetMapping("/game")
	public String game(Model model) {
		model.addAttribute("boards", boardService.게임());
		return "board/category/game";
	}
	
	@GetMapping("/stock")
	public String stock(Model model) {
		model.addAttribute("boards", boardService.주식());
		return "board/category/stock";
	}
	
	

	
	
	
}
