package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class BookDeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			int id = Integer.parseInt(req.getParameter("id"));

			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConnection());
			boolean f = dao.deletebook(id);

			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Book Deleted Successfully..");
				resp.sendRedirect("admin/view_books.jsp");
			} else {
				session.setAttribute("failedMsg", "Some problems with server & Book not Deleted");
				resp.sendRedirect("admin/view_books.jsp");
			}

		} catch (Exception e) {
e.printStackTrace();
		}

	}

}
