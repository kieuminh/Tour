package com.hakunamatata.springmvc.repository;

import java.util.Map;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.LikeBlog;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface LikeBlogDAO extends DAO<LikeBlog>{
	void UpdateLike(Map<Object, Object> map);
}
