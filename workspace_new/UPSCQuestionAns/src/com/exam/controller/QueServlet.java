package com.exam.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.bean.Question;
import com.exam.db.QuestionDb;

public class QueServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter printWriter = response.getWriter();
		int id=1;
		String exam=request.getParameter("exam");
		String year=request.getParameter("year"); 
		String subject=request.getParameter("subject"); 
		String question=request.getParameter("question");
		String a=request.getParameter("a"); 
		String b=request.getParameter("b"); 
		String c=request.getParameter("c"); 
		String d=request.getParameter("d"); 
		String ans=request.getParameter("ans"); 
		String explanation=request.getParameter("explanation"); 
		
		Question ques=new Question(id, exam, year, subject, question, a, b, c, d, ans, explanation);
		
		QuestionDb questionDb=new QuestionDb();
		
		boolean isInserted=questionDb.addQuestion(ques);
		if(isInserted) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Form.jsp");			 
	        requestDispatcher.forward(request, response);	    
		}
		else {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Home.jsp");			 
	        requestDispatcher.forward(request, response);	
		}
		
	}
	
	

}
