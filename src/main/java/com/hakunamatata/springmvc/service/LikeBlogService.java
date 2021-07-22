package com.hakunamatata.springmvc.service;

import java.util.Map;

import com.hakunamatata.springmvc.entity.Blog;
import com.hakunamatata.springmvc.entity.LikeBlog;

/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface LikeBlogService extends ServiceInterface<LikeBlog>{
	void UpdateLike(Map<Object, Object> vo);
}
