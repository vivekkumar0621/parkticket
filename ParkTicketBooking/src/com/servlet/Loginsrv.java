package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UserBean;
import com.dao.LoginDao;


@WebServlet("/Loginsrv")
public class Loginsrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Loginsrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
//		HttpSession ses=request.getSession();
		String email=(String) request.getParameter("email");
		String password=(String) request.getParameter("password");
		
		UserBean u=new UserBean(email,password);
		
		LoginDao l=new LoginDao(u);
		try {
			if(l.login()!=null)
			{
				l=new LoginDao(u);
				u=l.login();
				request.setAttribute("obj", u);
		//		System.out.println("a: " + u.getName() + u.getEmail());
				getServletConfig().getServletContext().getRequestDispatcher("/userhome.jsp").forward(request,response);
				
		//		Cookie cookie=new Cookie("email", email);
		//		response.addCookie(cookie);
				
			}
			else
			{
				response.sendRedirect("faillogin.jsp");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
