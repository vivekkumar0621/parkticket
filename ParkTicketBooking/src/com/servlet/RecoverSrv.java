package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBConnection;

@WebServlet("/RecoverSrv")
public class RecoverSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RecoverSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String date=request.getParameter("date");
		String name=request.getParameter("name");
		String pass="";
		String d="";
		String n="";
		try {
			DBConnection db=new DBConnection();
			Connection con=db.getConnect();
			if(db.checkEmail(email))
			{
				String sql="select * from user where email='"+email+"'";
				Statement st=con.createStatement();
				ResultSet rs=st.executeQuery(sql);
				while(rs.next())
				{
					pass=rs.getString(2);
					d=rs.getString(3);
					n=rs.getString(4);
				}
				if(d.equals(date) && n.equals(name))
				{
					//response.sendRedirect("recover_password.jsp");
					request.setAttribute("email", email);
					request.setAttribute("date", date);
					request.setAttribute("name", name);
					request.setAttribute("password", pass);
					
		//			HttpSession session=request.getSession();
		//			session.setAttribute(arg0, arg1);
					
					getServletConfig().getServletContext().getRequestDispatcher("/recover_password.jsp").forward(request, response);
				}
			}
			else
			{
				response.sendRedirect("faillogin.jsp");
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
