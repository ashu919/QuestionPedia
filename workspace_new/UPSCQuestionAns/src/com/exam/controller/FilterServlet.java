package com.exam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.bean.Question;
import com.exam.db.QuestionDb;

public class FilterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		doPost(request, response);	 
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		String year=request.getParameter("year");  
		if(year==null) {
			year="";
		}
		
		QuestionDb questionDb=new QuestionDb();
		ArrayList<Question> arrayListQuestion=new ArrayList<Question>();
		try {
			if(year!=null&&year.length()>0) {
				arrayListQuestion=questionDb.getData(year);
			}
			else {
				arrayListQuestion=questionDb.getData();
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("arrayListQuestion", arrayListQuestion);
		request.setAttribute("year", year);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("Home.jsp");			
        requestDispatcher.forward(request, response);	 
	}
	
	

}
