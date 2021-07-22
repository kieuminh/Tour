package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.Comment;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface CommentDAO extends DAO<Comment>{
	List<Comment> listComment(Comment vo);
	List<Comment> listUserByBlogComment(int vo);
}
