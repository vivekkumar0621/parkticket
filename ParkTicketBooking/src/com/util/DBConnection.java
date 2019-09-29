package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.UserBean;

public class DBConnection {
	
	private Connection con=null;
	
	public DBConnection() throws ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
	}
	
	public Connection getConnect() throws SQLException
	{
		String url="jdbc:mysql://localhost:3306/park";
		String user="abc";
		String password="5233";
		if(con==null)
		{
			con=DriverManager.getConnection(url, user, password);
		}
		return con;
	}
	
	public boolean checkEmail(String email) throws SQLException, ClassNotFoundException
	{
		DBConnection db=new DBConnection();
		Connection con=db.getConnect();
		String sql="select email from user where email='" + email + "'";
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
			return true;
		return false;
	}
	
	public void insertDetail(UserBean u) throws ClassNotFoundException, SQLException
	{
		DBConnection db=new DBConnection();
		Connection con=db.getConnect();
		System.out.println(u.getPassword());
		String sql="insert into user values ('" + u.getEmail() + "','" + u.getPassword() + "','"+ u.getDate() + "','" + u.getName() +"')";
		Statement st=con.createStatement();
		st.execute(sql);

	}
	
	public void getDisConnect() throws SQLException
	{
		con.close();
	}
	
}
