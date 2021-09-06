package com.cos.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.controller.dto.BoardDetailRespDto;
import com.cos.blog.model.Board;
import com.cos.blog.repository.BoardRepository;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Transactional
	public void 글쓰기(Board board) {
		boardRepository.save(board);
	}
	
	@Transactional(readOnly = true)
	public List<Board> 글목록(){
		return boardRepository.findAll();
	}
	
	@Transactional()
	public BoardDetailRespDto 상세보기(int id) {
		boardRepository.readCount(id);
		return boardRepository.findById(id);
		
	}
	
	@Transactional
	public void 삭제하기(int id) {
		boardRepository.deleteById(id);
	}
	
	@Transactional
	public void 수정하기(Board board) {
		boardRepository.update(board);
		
	}
	
	@Transactional
	public void 조회수증가(int id) {
		boardRepository.readCount(id);
	}
	
	
	
	@Transactional
	public List<Board> 스포츠(){
		return boardRepository.cateSports();
	}
	
	@Transactional
	public List<Board> 게임(){
		return boardRepository.cateGame();
	}
	
	@Transactional
	public List<Board> 취업(){
		return boardRepository.cateEmployment();
	}
	
	@Transactional
	public List<Board> 주식(){
		return boardRepository.cateStock();
	}
	
	@Transactional
	public List<Board> 패션(){
		return boardRepository.cateFashion();
	}
	
	@Transactional
	public List<Board> 연예(){
		return boardRepository.cateEntertainment();
	}
	
	
	
}
