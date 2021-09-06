package com.cos.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.model.Board;
import com.cos.blog.model.Reply;
import com.cos.blog.repository.ReplyRepository;

@Service
public class ReplyService {
	@Autowired
	private ReplyRepository replyRepository;
	
	public void 댓글쓰기(Reply reply) {
		replyRepository.save(reply);
	}
	
	@Transactional(readOnly = true)
	public List<Reply> 댓글목록(int id){
		return replyRepository.findAll(id);
	}

	public void 댓글삭제(String id){
		replyRepository.replyDelete(id);
	}
	
	
	
}
