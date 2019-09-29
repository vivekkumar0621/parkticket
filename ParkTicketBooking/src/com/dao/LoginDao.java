package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.UserBean;
import com.util.DBConnection;

public class LoginDao {
	private UserBean u;
	private DBConnection db=null;
	private Statement s=null;
	private Connection con;
	private ResultSet rs;
	public LoginDao()
	{
		
	}
	public LoginDao(UserBean u) {
		super();
	//	System.out.println("Constructor "+ u.getEmail()+u.getPassword());
		this.u = u;
	}
	
	public UserBean login() throws ClassNotFoundException, SQLException
	{
		String name=null;
		String email=null;
	//	u=new UserBean();
		db=new DBConnection();
		con=db.getConnect();
		s=con.createStatement();
//		System.out.println("login "+u.getEmail()+u.getPassword());
		String sql="select * from user where email = '"+ u.getEmail() +"' and password= '"+ u.getPassword() +"'";
		rs=s.executeQuery(sql);
		if(rs.next())
		{
			//System.out.println("executed "+rs.getString(1) + rs.getString(4));
			email=rs.getString(1);
			name=rs.getString(4);
		}
		u=new UserBean();
		
		u.setEmail(email);
		u.setName(name);
	//	System.out.println("login Dao "+u);
	//	System.out.println("login Dao " + u.getName() + u.getEmail());
	//	System.out.println("end");
		con.close();
		if(email==null)
			return null;
		return u;
	}
	

}
