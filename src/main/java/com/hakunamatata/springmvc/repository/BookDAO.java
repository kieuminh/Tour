
package com.hakunamatata.springmvc.repository;

import com.hakunamatata.springmvc.entity.Book;

/**
 * @author Manh
 *
 */
public interface BookDAO extends DAO<Book>{
	Book getIdMax();
}
