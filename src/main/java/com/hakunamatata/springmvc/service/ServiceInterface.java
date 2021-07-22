package com.hakunamatata.springmvc.service;

import java.util.List;

/**
 * @author BaoBB
 *
 * @param <T>
 */
public interface ServiceInterface<T> {
	void insert(T vo);

	void update(T vo);

	void delete(T vo);

	T get(T vo);

	List<T> list(T vo);
}
