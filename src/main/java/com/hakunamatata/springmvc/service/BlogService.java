package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.Blog;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface BlogService extends ServiceInterface<Blog> {
	List<Blog> getBlogLimit();
}
