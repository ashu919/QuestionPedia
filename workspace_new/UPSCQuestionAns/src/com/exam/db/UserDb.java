package com.exam.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.exam.bean.Question;
import com.exam.bean.User;
 

public class UserDb {

	public boolean addUser(User user) {
	    // TODO Auto-generated method stub
		  DBConnection dbcon= new DBConnection();
		  Connection connection = dbcon.getConn();
	    String sql = "insert into user (name, mobile, email, address, username, password) values (?,?,?,?,?,?) ";
	    int i = 0;
	    try {
	      PreparedStatement preparedStatement = connection.prepareStatement(sql);
	      preparedStatement.setString(1, user.getName()); 
	      preparedStatement.setString(2, user.getMobile()); 
	      preparedStatement.setString(3, user.getEmail()); 
	      preparedStatement.setString(4, user.getAddress()); 
	      preparedStatement.setString(5, user.getUsername()); 
	      preparedStatement.setString(6, user.getPassword());  
	      i = preparedStatement.executeUpdate();
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    if (i == 0) {
	      return false;
	    } else {
	      return true;
	    }
	  }
	
	
	public boolean isUserAllreadyRegistered(String username) throws SQLException {
		
		  boolean isUserAllreadyRegistered=false;
	      // TODO Auto-generated method stub
		  DBConnection dbcon= new DBConnection();
		  Connection connection = dbcon.getConn();
		  
		  String query = "SELECT * FROM user where username='"+username+"' "; 
	      Statement st = connection.createStatement(); 
	      ResultSet rs = st.executeQuery(query); 
	      while (rs.next()){
	    	  isUserAllreadyRegistered=true;
	        int id = rs.getInt("id");
	        String name = rs.getString("name"); 	         
	      }		  

		  return isUserAllreadyRegistered;
	  }
	
	public boolean isValidUser(String username, String password) throws SQLException {
		
		  boolean isValid=false;
	      // TODO Auto-generated method stub
		  DBConnection dbcon= new DBConnection();
		  Connection connection = dbcon.getConn();
		  
		  String query = "SELECT * FROM user where username='"+username+"' and password='"+password+"'"; 
	      Statement st = connection.createStatement(); 
	      ResultSet rs = st.executeQuery(query); 
	      while (rs.next()){
	        isValid=true;
	        int id = rs.getInt("id");
	        String name = rs.getString("name"); 	         
	      }		  

		  return isValid;
	  }
}
