package org.nagarro.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nagarro.web.model.BookModel;
import org.nagarro.web.model.UserModel;
import org.nagarro.web.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private BookService bookService;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/addbook")
	public String addBook() {
		return "add-book";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("currentuser", null);
		return "home";
	}

	@GetMapping("/login")
	public ModelAndView login(UserModel user, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if (userService.authenticate(user.getUsername(), user.getPassword())) {
			HttpSession session = request.getSession();

			List<BookModel> bookList = bookService.getBookDetails();
			mv.addObject("bookList", bookList);
			session.setAttribute("currentuser", user.getUsername());
			mv.setViewName("book-listing");
			return mv;
		}
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("/editview/{id}")
	public ModelAndView editBookDetails(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		BookModel book = bookService.getBookById(id);
		mv.addObject("bookObj", book);
		mv.setViewName("edit-book");
		return mv;
		
	}
	
	@PostMapping("/update")
	public ModelAndView update(BookModel book) {
		ModelAndView mv = new ModelAndView();
		bookService.updateBook(book);
		List<BookModel> bookList = bookService.getBookDetails();
		mv.addObject("bookList", bookList);
		mv.setViewName("book-listing");
		return mv;
	}
	
	
	@PostMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		bookService.deleteBookById(id);
		List<BookModel> bookList = bookService.getBookDetails();
		mv.addObject("bookList", bookList);
		mv.setViewName("book-listing");
		return mv;
	}
	
	@PostMapping("/insert")
	public ModelAndView addBookDetails(@Validated BookModel book) {
		ModelAndView mv = new ModelAndView();
		bookService.insertBookDetail(book);
		System.out.println(book.toString());
		List<BookModel> bookList = bookService.getBookDetails();
		mv.addObject("bookList", bookList);
		mv.setViewName("book-listing");
		return mv;
	}
}
