package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface BookDao {

	
	public boolean addbooks(BookDtls b);
	
	public List<BookDtls> getAllBooks();	
	
	public BookDtls getBookById(int id);
	
	public boolean updateEditBook(BookDtls b); 
	
	public boolean deletebook(int id);
	
	public List<BookDtls> getNewBook();
		
	public List<BookDtls> getRecentBook();
	
	public List<BookDtls> getOldBook();
	
	public List<BookDtls> getAllRecentBooks();
	
	public List<BookDtls> getAllNewBooks();
	
	public List<BookDtls> getAllOldBooks();
	
	public List<BookDtls> getBookByOld(String email,String category);
	
	public boolean oldBookDelete(String email,String category,int id);
	
	public List<BookDtls> getbookbysearch(String ch);
	
	
}
