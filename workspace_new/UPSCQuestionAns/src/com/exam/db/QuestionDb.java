package com.exam.db;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.exam.bean.Question;
 

public class QuestionDb {

	public boolean addQuestion(Question ques) {
	    // TODO Auto-generated method stub
		  DBConnection dbcon= new DBConnection();
		  Connection connection = dbcon.getConn();
	    String sql = "insert into question (exam, year, subject, question, a, b, c, d, ans, explanation) values (?,?,?,?,?,?,?,?,?,?) ";
	    int i = 0;
	    try {
	      PreparedStatement preparedStatement = connection.prepareStatement(sql);
	      preparedStatement.setString(1, ques.getExam()); 
	      preparedStatement.setString(2, ques.getYear()); 
	      preparedStatement.setString(3, ques.getSubject()); 
	      preparedStatement.setString(4, ques.getQuestion()); 
	      preparedStatement.setString(5, ques.getA()); 
	      preparedStatement.setString(6, ques.getB()); 
	      preparedStatement.setString(7, ques.getC()); 
	      preparedStatement.setString(8, ques.getD()); 
	      preparedStatement.setString(9, ques.getAns()); 
	      preparedStatement.setString(10, ques.getExplanation()); 
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
	
	
	
	
	
	
	public ArrayList<Question> getData() throws SQLException {
		
		  ArrayList<Question> arrayList=new ArrayList<Question>();
	      // TODO Auto-generated method stub
		  DBConnection dbcon= new DBConnection();
		  Connection connection = dbcon.getConn();
		  
		  String query = "SELECT * FROM question"; 
	      Statement st = connection.createStatement(); 
	      ResultSet rs = st.executeQuery(query); 
	      while (rs.next()){
	        int id = rs.getInt("id");
	        String exam = rs.getString("exam");
	        String year = rs.getString("year");
	        String  subject= rs.getString("subject");
	        String question = rs.getString("question");
	        String  a= rs.getString("a");
	        String  b= rs.getString("b");
	        String  c= rs.getString("c");
	        String  d= rs.getString("d");
	        String ans = rs.getString("ans");
	        String explanation = rs.getString("explanation");
	        
	        Question ques=new Question(id, exam, year, subject, question, a, b, c, d, ans, explanation);
	        arrayList.add(ques);
	         
	      }		  

		  return arrayList;
	  }
	
	public ArrayList<Question> getData(String yr) throws SQLException {
		
		  ArrayList<Question> arrayList=new ArrayList<Question>();
	      // TODO Auto-generated method stub
		  DBConnection dbcon= new DBConnection();
		  Connection connection = dbcon.getConn();
		  
		  String query = "SELECT * FROM question where year='"+yr+"'"; 
	      Statement st = connection.createStatement(); 
	      ResultSet rs = st.executeQuery(query); 
	      while (rs.next()){
	        int id = rs.getInt("id");
	        String exam = rs.getString("exam");
	        String year = rs.getString("year");
	        String  subject= rs.getString("subject");
	        String question = rs.getString("question");
	        String  a= rs.getString("a");
	        String  b= rs.getString("b");
	        String  c= rs.getString("c");
	        String  d= rs.getString("d");
	        String ans = rs.getString("ans");
	        String explanation = rs.getString("explanation");
	        
	        Question ques=new Question(id, exam, year, subject, question, a, b, c, d, ans, explanation);
	        arrayList.add(ques);
	         
	      }		  

		  return arrayList;
	  }
	
	
	
	
	
	
	
	
}
