package org.nagarro.web.services;

import java.util.List;

import org.nagarro.web.dao.BookDao;
import org.nagarro.web.model.BookModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {
	
	@Autowired
	private BookDao bookDao;
	
	public void insertBookDetail(BookModel book) {
		bookDao.save(book);
	}
	
	public List<BookModel> getBookDetails(){
		List<BookModel> bookList = bookDao.findAll();
		return bookList;
	}
	
	public BookModel getBookById(int id) {
		return bookDao.findById(id);
	}
	
	public void deleteBookById(int id) {
		bookDao.deleteById(id);
	}
	
	public void updateBook(BookModel book) {
		BookModel obj = bookDao.findById(book.getBookCode());
		obj.setBookName(book.getBookName());
		obj.setBookAuthor(book.getBookAuthor());
		bookDao.save(obj);
	}

}
