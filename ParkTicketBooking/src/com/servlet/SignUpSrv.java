package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.util.DBConnection;

@WebServlet("/SignUpSrv")
public class SignUpSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String password=request.getParameter("password1");
		String date=request.getParameter("date");
		String name=request.getParameter("name");
		response.setContentType("text/html");  
		DBConnection db;
		try {
			db = new DBConnection();
			db.getConnect();
			if(db.checkEmail(email))
			{
				response.sendRedirect("signup.jsp"); 
			}
			else
			{
				UserBean u=new UserBean(email,password,date,name);
				db.insertDetail(u);
				
				response.sendRedirect("index.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
