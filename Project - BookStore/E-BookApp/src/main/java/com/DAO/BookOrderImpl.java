package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Book_order;

public class BookOrderImpl implements BookOrderDao {

	private Connection conn;

	public BookOrderImpl(Connection connection) {
		this.conn = connection; // Assign the connection parameter to the conn field
	}

	@Override
	public int getOrderNo() {

		int i = 0;

		try {

			String query = "SELECT * FROM bookorders;";
			PreparedStatement ps = conn.prepareStatement(query);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;

	}

//	--------------------------------------------------------------------------------------------------------------------------------

	@Override
	public boolean saveOrder(List<Book_order> blist) {
		boolean f = false;

		try {

			String query = "INSERT INTO bookorders ( `order_id`, `user_name`, `email`, `address`, `phone`, `book_name`, `author`, `price`, `payment`)"
					+ " VALUES(?,?,?,?,?,?,?,?,?)";
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement(query);

			for (Book_order b : blist) {
				ps.setString(1, b.getOrderId());
				ps.setString(2, b.getUsername());
				ps.setString(3, b.getEmail());
				ps.setString(4, b.getFullAdd());
				ps.setString(5, b.getPhone());
				ps.setString(6, b.getBookName());
				ps.setString(7, b.getAuthor());
				ps.setString(8, b.getPrice());
				ps.setString(9, b.getPayment());
				ps.addBatch();
			}

			int[] count = ps.executeBatch();
			conn.commit();
			f = true;

			conn.setAutoCommit(true);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return f;
	}

//	=============================================================================================================================

	@Override
	public List<Book_order> getbook(String email) {
		List<Book_order> list = new ArrayList<Book_order>();
		Book_order o=null;
		try {
			String query=" select * from bookorders where email=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				o=new Book_order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUsername(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFullAdd(rs.getString(5));
				o.setPhone(rs.getString(6));
				o.setBookName(rs.getString(7));
				o.setAuthor(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPayment(rs.getString(10));
				list.add(o);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	
	@Override
	public List<Book_order> getAllbook() {
		List<Book_order> list = new ArrayList<Book_order>();
		Book_order o=null;
		try {
			String query=" select * from bookorders";
			PreparedStatement ps = conn.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				o=new Book_order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUsername(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFullAdd(rs.getString(5));
				o.setPhone(rs.getString(6));
				o.setBookName(rs.getString(7));
				o.setAuthor(rs.getString(8));
				o.setPrice(rs.getString(9));
				o.setPayment(rs.getString(10));
				list.add(o);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}



	
	

}
