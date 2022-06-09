package com.exam.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.bean.User;
import com.exam.db.UserDb;

public class RegisterServlet  extends HttpServlet{
	
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(name!=null && mobile!=null&&email!=null&&address!=null&&username!=null&&password!=null){
			
			User user=new User();
			user.setName(name);
			user.setMobile(mobile);
			user.setEmail(email);
			user.setAddress(address);
			user.setUsername(username);
			user.setPassword(password);
			
			UserDb userDb=new UserDb();
			boolean isUserAllreadyRegistered=false;
			try {
				isUserAllreadyRegistered=userDb.isUserAllreadyRegistered(username);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(!isUserAllreadyRegistered) {
				boolean isInserted=userDb.addUser(user);				
				if(isInserted) {
					RequestDispatcher req = request.getRequestDispatcher("Login.jsp");
					req.forward(request, response);
				}
				else {
					RequestDispatcher req = request.getRequestDispatcher("Register.jsp");
					req.include(request, response);
				}
			}
			else {
				RequestDispatcher req = request.getRequestDispatcher("Register.jsp");
				request.setAttribute("msg", username+" is already registered. Please try with another username.");
				req.forward(request, response);
			}
			
			
		}
		else{
			RequestDispatcher req = request.getRequestDispatcher("Register.jsp");
			req.forward(request, response);
		}
	}
}
