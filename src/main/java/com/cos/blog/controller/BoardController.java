package com.cos.blog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.blog.controller.dto.CommonRespDto;
import com.cos.blog.controller.dto.ReplyRespDto;
import com.cos.blog.model.Board;
import com.cos.blog.model.Reply;
import com.cos.blog.model.User;
import com.cos.blog.repository.BoardRepository;
import com.cos.blog.repository.ReplyRepository;
import com.cos.blog.repository.UserRepository;
import com.cos.blog.service.BoardService;
import com.cos.blog.service.ReplyService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class BoardController {

	private final ReplyService replyService;
	private final BoardService boardService;
	private final BoardRepository boardRepository;
	private final ReplyRepository replyRepository;
	
	@PostMapping("/board/saveForm")
	public @ResponseBody CommonRespDto<?> saveForm(@RequestBody Board board) {
		boardService.글쓰기(board);
		return new CommonRespDto<String>(1, "글쓰기 완료");
	}
	
	@GetMapping("/board/{id}")
	public String getBoard(@PathVariable int id, Model model) {
		model.addAttribute("boardDetailRespDto", boardService.상세보기(id));
		
		
		List<Reply> replyList = replyService.댓글목록(id);
		model.addAttribute("replyList", replyList);
		
		return "board/detail";
	}
	
	@DeleteMapping("/board/{id}")
	public @ResponseBody CommonRespDto<?> deleteById(@PathVariable int id, HttpSession session) throws Exception{
		User principal = (User) session.getAttribute("principal");
		Board boardEntity = boardRepository.findOne(id);
		
		if(principal.getId() != boardEntity.getUserId()) {
			throw new Exception();
		}
		
		
		boardService.삭제하기(id);
		return new CommonRespDto<String>(1, "삭제 성공");
	}
	
	@PutMapping("/board/{id}")
	public @ResponseBody CommonRespDto<?> update(@RequestBody Board board){
		boardService.수정하기(board);
		return new CommonRespDto<String>(1, "수정 성공");
	}
	
	
	
	
	
	@PostMapping("/board/detail")
	public @ResponseBody CommonRespDto<?> replySave(@RequestBody Reply reply) {
		replyService.댓글쓰기(reply);
		return new CommonRespDto<String>(1, "댓글쓰기 완료");
	}
	
	@RequestMapping("/board/detail")
	public String replyDelete(HttpServletRequest request)
		throws Exception{
		String id = request.getParameter("id");
		replyService.댓글삭제(id);
		
		return "redirect:/views/board/detail";
	}
	
	
	
	
	
}
