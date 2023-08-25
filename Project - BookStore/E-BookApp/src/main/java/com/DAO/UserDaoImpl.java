package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import com.entity.User;
import com.mysql.cj.protocol.Resultset;

public class UserDaoImpl implements UserDao {

	private Connection conn;

	public UserDaoImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean userRegister(User us) {

		boolean f = false;
		try {
			String query = "insert into user(name,email,phone,password) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhone());
			ps.setString(4, us.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}

//	-------------------------------------------------------------------------------------------------------------------------

	@Override
	public User login(String email, String password) {

		User us = null;

		try {

			String sql = "select * from user where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				us = new User();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhone(rs.getString(4));
				us.setPassword(rs.getString(5));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return us;
	}

//	-----------------------------------------------------------------------------------------------------------------------------------------

	@Override
	public boolean checkPassword(String ps, int id) {
		boolean f = false;

		try {

			String query = " select * from user where password=? and id=? ";
			PreparedStatement pst = conn.prepareStatement(query);

			pst.setString(1, ps);
			pst.setInt(2, id);

			ResultSet rs = pst.executeQuery();

			while (rs.next()) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

//	===================================================================================================================================

	@Override
	public boolean updateProfile(User us) {

		boolean f = false;
		try {
			String query = "update user set name=?, email=?, phone=? where id=?";
			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPhone());
			ps.setInt(4, us.getId());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}

//-------------------------------------------------------------------------------------------------------------------------------

	@Override
	public boolean checkUser(String email) {

		boolean f = true;

		try {

			String query = "select * from user where email=?";
			PreparedStatement ps = conn.prepareStatement(query);

			ps.setString(1, email);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				f = false;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

}
