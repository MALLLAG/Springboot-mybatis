package com.cos.blog.repository;

import java.util.List;

import com.cos.blog.controller.dto.BoardDetailRespDto;
import com.cos.blog.model.Board;

public interface BoardRepository {
	public void save(Board board);
	public List<Board> findAll();
	public BoardDetailRespDto findById(int id);
	public Board findOne(int id);
	public void deleteById(int id);
	public void update(Board board);
	public void readCount(int id);
	
	
	
	public List<Board> cateSports();
	public List<Board> cateGame();
	public List<Board> cateEmployment();
	public List<Board> cateStock();
	public List<Board> cateFashion();
	public List<Board> cateEntertainment();
}
