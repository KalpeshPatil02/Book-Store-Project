package com.DAO;

import java.util.List;

import com.entity.cart;

public interface CartDao {
	
	public boolean addCart(cart  c);
	
	public List<cart> getBookByUser(int userId);
	
	public boolean deletebook(int cid,int uid);
	

	
	

}
