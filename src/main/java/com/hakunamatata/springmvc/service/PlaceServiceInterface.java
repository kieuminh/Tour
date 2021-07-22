package com.hakunamatata.springmvc.service;

import java.util.List;

import com.hakunamatata.springmvc.entity.Province;

/**
 * @author BaoBB
 *
 * @param <T>
 */
public interface PlaceServiceInterface<T> extends ServiceInterface<T>{
	List<Province> listProvince(Province vo);
}
