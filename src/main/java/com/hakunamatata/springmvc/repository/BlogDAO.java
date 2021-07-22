package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.Blog;


/**
 * @author Huynh Thi Tuyet Ngoc
 *
 */
public interface BlogDAO extends DAO<Blog>{
	List<Blog> getBlogLimit();
}
