package com.hakunamatata.springmvc.repository;

import java.util.List;
/**
 * @author Hai Van
 *
 */
import com.hakunamatata.springmvc.entity.Blog;

public interface InterfaceDAO extends DAO<Blog> {
	List<Blog> listBlog(Blog vo);
}
