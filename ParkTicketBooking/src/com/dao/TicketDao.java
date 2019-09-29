package com.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.TicketBean;
import com.util.DBConnection;

public class TicketDao {
	private Connection con=null;
	
	public TicketDao() throws ClassNotFoundException, SQLException {
		con=new DBConnection().getConnect();
	}
	
	public void ticketConfirm(TicketBean t) throws SQLException
	{
		Statement st=con.createStatement();
		String sql="insert into ticket values('"+t.getTicket()+"','"+t.getEmail()+"',"+t.getAdult()+","+t.getChild()+",'"+t.getDate()+"','"+t.getLand()+"','"+t.getRide()+"')";
		st.execute(sql);
	}
	
	
}
