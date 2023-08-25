package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDaoImpl;
import com.DB.DBConnect;
import com.entity.User;


@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		try {
			
			int id = Integer.parseInt(req.getParameter("id"));
			
			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String password = req.getParameter("password");
			
			User us = new User();
			us.setId(id);
			us.setName(name);
			us.setEmail(email);
			us.setPhone(phone);
			
			HttpSession session = req.getSession();
			
			UserDaoImpl dao = new UserDaoImpl(DBConnect.getConnection());
			
			
			boolean f =dao.checkPassword(password, id);
			
			
			if(f) {
				
				boolean f2=dao.updateProfile(us);
				
				if(f2)
				{
					session.setAttribute("succMsg","User Updations successfully" );
					resp.sendRedirect("editProfile.jsp");
				}else {
					  session.setAttribute("failedMsg","Some problems occured in the server" );
						resp.sendRedirect("editProfile.jsp");
				}
				
			}else {
				session.setAttribute("failedMsg","Password is incorrect" );
				resp.sendRedirect("editProfile.jsp");
			}
			
		} catch (Exception e) {
		e.printStackTrace();
		}
	}

	
}
