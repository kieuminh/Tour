package com.hakunamatata.springmvc.repository;

import java.util.List;

import com.hakunamatata.springmvc.entity.Province;


/**
 * @author BaoBB
 *
 * @param <T>
 */
public interface PlaceInterface<T> extends DAO<T>{
	List<Province> listProvince(Province vo);
}
