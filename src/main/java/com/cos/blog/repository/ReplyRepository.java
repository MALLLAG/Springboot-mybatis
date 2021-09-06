package com.cos.blog.repository;

import java.util.List;

import com.cos.blog.model.Reply;

public interface ReplyRepository {
	public void save(Reply reply);
	public List<Reply> findAll(int id);
	public void replyDelete(String id);
}
