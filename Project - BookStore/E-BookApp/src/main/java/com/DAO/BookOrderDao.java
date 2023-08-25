package com.DAO;

import java.util.List;

import com.entity.Book_order;

public interface BookOrderDao {
	
	public int getOrderNo();
	
	public boolean saveOrder(List<Book_order> blist);
	
	public List<Book_order> getbook(String email);
	
	public List<Book_order> getAllbook();

}
