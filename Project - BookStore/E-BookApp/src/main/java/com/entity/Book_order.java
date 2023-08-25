package com.entity;

public class Book_order {
	
	private int id;
	private String orderId;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	private String username;
	private String email;
	private String phone;
	private String fullAdd;
	private String payment;
	private String bookName;
	private String author;
	private String price;
	
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFullAdd() {
		return fullAdd;
	}
	public void setFullAdd(String fullAdd) {
		this.fullAdd = fullAdd;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public Book_order() {
		super();
	}
	@Override
	public String toString() {
		return "Book_order [id=" + id + ", username=" + username + ", email=" + email + ", phone=" + phone
				+ ", fullAdd=" + fullAdd + ", payment=" + payment + "]";
	}
	
	

}
