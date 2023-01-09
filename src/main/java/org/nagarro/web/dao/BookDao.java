package org.nagarro.web.dao;

import org.nagarro.web.model.BookModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookDao extends JpaRepository<BookModel, Integer>{
	
	public BookModel findById(int id);

}
