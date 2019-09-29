package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.LandBookingBean;
import com.bean.TicketBean;
import com.dao.LandBookingDao;
import com.dao.TicketDao;
import com.util.IDGen;


@WebServlet("/LandParkBookingSrv")
public class LandParkBookingSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public LandParkBookingSrv() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		int adult=Integer.parseInt(request.getParameter("adult").toString());
		int child=Integer.parseInt(request.getParameter("child").toString());
		String email=null;
		Cookie cookie[]=request.getCookies();
		
		for(Cookie c:cookie)
		{
			if(c.getName().equals("email"))
				email=c.getValue();
		}
		String date=request.getParameter("date").toString();
		String land=request.getParameter("lpcb").toString();
		String ride=request.getParameter("rcb").toString();
		String ticket=IDGen.getId();
		
		LandBookingBean landbookingbean=new LandBookingBean(email, adult, child);
		LandBookingDao landBookingDao;
		TicketBean ticketBean=new TicketBean(ticket, email, adult, child, date, land, ride);
		TicketDao ticketDao;
		try {
			landBookingDao = new LandBookingDao();
			landBookingDao.updateBooking(landbookingbean);
			ticketDao=new TicketDao();
			ticketDao.ticketConfirm(ticketBean);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	//	Cookie cookie2=new Cookie("ticket", ticket);
	//	response.addCookie(cookie2);
	//	response.sendRedirect("ticketprint.jsp");
	//	request.removeAttribute("obj");
		
		request.setAttribute("obj", ticketBean);
		getServletConfig().getServletContext().getRequestDispatcher("/ticketprint.jsp").forward(request,response);
		
//		System.out.println(adult);
		
		
//		System.out.println(adult);
//		System.out.println(child);
//		System.out.println(email+" email");
//		System.out.println(land+" land park");
//		System.out.println(ride+" ride");
//		System.out.println(date);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
