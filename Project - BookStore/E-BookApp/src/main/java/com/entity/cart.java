package com.entity;


public class cart {
	
	private int bid;
	private int cid;
	private int userId;
	private String bookName;
	private String author;
	private double totalPrice;
	private double price;
	
	private double grand;
	
	

	public double getGrand() {
		return grand;
	}
	public void setGrand(double grand) {
		this.grand = grand;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public cart(int bid, int cid, int userId, String bookName, String author, double totalPrice, double price) {
		super();
		this.bid = bid;
		this.cid = cid;
		this.userId = userId;
		this.bookName = bookName;
		this.author = author;
		this.totalPrice = totalPrice;
		this.price = price;
	}
	public cart() {
		super();
	}
	@Override
	public String toString() {
		return "cart [bid=" + bid + ", cid=" + cid + ", userId=" + userId + ", bookName=" + bookName + ", author="
				+ author + ", totalPrice=" + totalPrice + ", price=" + price + "]";
	}
	
	
	
}
