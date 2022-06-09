package com.exam.bean;

public class Question {

	private int id ;
	private String exam; 
	private String year; 
	private String subject; 
	private String question;
	private String a; 
	private String b; 
	private String c; 
	private String d; 
	private String ans; 
	private String explanation;
	
	
	public Question(int id, String exam, String year, String subject, String question, String a, String b, String c, String d, String ans, String explanation) {    
	    this.id = id;
	    this.exam = exam;
	    this.year = year;
	    this.subject = subject;
	    this.question = question;
	    this.a=a;
	    this.b=b;
	    this.c=c;
	    this.d=d;
	    this.ans=ans;
	    this.explanation=explanation;
	  }

	
	
	
	
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	 * @return the exam
	 */
	public String getExam() {
		return exam;
	}
	/**
	 * @param exam the exam to set
	 */
	public void setExam(String exam) {
		this.exam = exam;
	}
	/**
	 * @return the year
	 */
	public String getYear() {
		return year;
	}
	/**
	 * @param year the year to set
	 */
	public void setYear(String year) {
		this.year = year;
	}
	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}
	/**
	 * @param subject the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}
	/**
	 * @return the question
	 */
	public String getQuestion() {
		return question;
	}
	/**
	 * @param question the question to set
	 */
	public void setQuestion(String question) {
		this.question = question;
	}
	/**
	 * @return the a
	 */
	public String getA() {
		return a;
	}
	/**
	 * @param a the a to set
	 */
	public void setA(String a) {
		this.a = a;
	}
	/**
	 * @return the b
	 */
	public String getB() {
		return b;
	}
	/**
	 * @param b the b to set
	 */
	public void setB(String b) {
		this.b = b;
	}
	/**
	 * @return the c
	 */
	public String getC() {
		return c;
	}
	/**
	 * @param c the c to set
	 */
	public void setC(String c) {
		this.c = c;
	}
	/**
	 * @return the d
	 */
	public String getD() {
		return d;
	}
	/**
	 * @param d the d to set
	 */
	public void setD(String d) {
		this.d = d;
	}
	/**
	 * @return the ans
	 */
	public String getAns() {
		return ans;
	}
	/**
	 * @param ans the ans to set
	 */
	public void setAns(String ans) {
		this.ans = ans;
	}
	/**
	 * @return the explanation
	 */
	public String getExplanation() {
		return explanation;
	}
	/**
	 * @param explanation the explanation to set
	 */
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	} 
}
