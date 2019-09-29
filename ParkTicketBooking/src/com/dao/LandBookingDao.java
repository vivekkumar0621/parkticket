package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.LandBookingBean;
import com.util.DBConnection;

public class LandBookingDao {
	private Connection con=null;
	private LandBookingBean l=null;
	private LandBookingBean landavalable=null;
	public LandBookingDao() throws ClassNotFoundException, SQLException {
		con=new DBConnection().getConnect();
	}
	
	public LandBookingBean updateBooking(LandBookingBean l) throws SQLException
	{
		this.l=l;
		String sql="";
		if(isEmailPresent())
		{
			l.setAdult(l.getAdult()+landavalable.getAdult());
			l.setChild(l.getChild()+landavalable.getChild());
			sql="update mylandbooking set adult="+l.getAdult()+", child="+l.getChild()+" where email='"+l.getEmail()+"'";
		}
		else
			sql="insert into mylandbooking values('"+l.getEmail()+"',"+l.getAdult()+","+l.getChild()+")";

		Statement st=con.createStatement();
		boolean b=st.execute(sql);
		con.close();
		if(b)
			return landavalable;
		return l;
	}
	
	private boolean isEmailPresent() throws SQLException
	{
		String sql="select * from mylandbooking where email= '"+ l.getEmail() + "'";
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
		{		
			landavalable=new LandBookingBean(rs.getString(1),rs.getInt(2),rs.getInt(3));
			return true;
		}
			
		return false;
	}
}
