package com.hakunamatata.springmvc.service;

import com.hakunamatata.springmvc.entity.Book;

public interface BookService extends ServiceInterface<Book>{
	Book getIdMax();
}
