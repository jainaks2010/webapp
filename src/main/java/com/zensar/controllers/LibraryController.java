package com.zensar.controllers;


import java.io.IOException;
import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.zensar.poc.Library;
import com.zensar.poc.data.Book;
import com.zensar.poc.exceptions.InvalidBookException;

@Controller
public class LibraryController {
	
	private Log logger = LogFactory.getLog(LibraryController.class); 
	
	@RequestMapping(value = "books/addBookForm.html" ,method = RequestMethod.GET)
	public ModelAndView showForm() throws InvalidBookException{
		Book book = new Book("Java Certification","Khlid Mughal", 600, Book.Category.COMPUTER);
		ModelAndView modelAndView = new ModelAndView("addForm","command", book);
		return modelAndView;
	}
	
	@RequestMapping(value = "books/addBook.html" , method = RequestMethod.POST)
	public void addBook(@ModelAttribute("spring") Book book, HttpServletRequest request, HttpServletResponse response) throws InvalidBookException, IOException{
		boolean isSuccessfull = Library.getInstance().getBookService().addBook(book);
		if(isSuccessfull){
			logger.info("book added successfully");
			response.sendRedirect(request.getContextPath()+"/books/showAllBooks.html");
		}else{
			logger.info("book not added successfully");
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}
	}
	
	@RequestMapping(value = "books/showAllBooks.html", method = RequestMethod.GET)
	public ModelAndView showAllBooks(){
		Collection<Book> findAllBooks = Library.getInstance().getBookService().findAllBooks();
		return new ModelAndView("showAllBooks","books",findAllBooks);
	}
	
	

}
