package com.exam.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.db.UserDb;

public class LoginServlet  extends HttpServlet { 
     
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		String username = request.getParameter("username");
		String password = request.getParameter("password"); 
		
		UserDb userDb=new UserDb();
		boolean isValid=false;
		try {
			isValid = userDb.isValidUser(username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(isValid) {
			 HttpSession session=request.getSession();  
		     session.setAttribute("username",username);  
			RequestDispatcher req = request.getRequestDispatcher("FilterServlet");			
			req.forward(request, response);
		}
		else {
			RequestDispatcher req = request.getRequestDispatcher("Login.jsp");
			req.include(request, response);
		}
		
		 
	}
}
