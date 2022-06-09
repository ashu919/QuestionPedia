<%@page import="java.util.Date"%>
<%@page import="com.exam.db.QuestionDb"%>
<%@page import="com.exam.bean.Question"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="js/64d58efce2.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>My project</title>
</head>

<body bgcolor="#e6ffff"><marquee direction="right" behavior="alternate"><b><font color="#FF33B5">Welcome <%=session.getAttribute("username") %>! </font></b></marquee>
    <header>
        <div class="container">
            <input type="checkbox" name="" id="check">
            
            <div class="logo-container">
            
               
                <img src="images/logo.png" width="200" height="60"> 
            </div>

            <div class="nav-btn">
                <div class="nav-links">
                    <ul>
                        <li class="nav-link" style="--i: .6s">
                            <a href="FilterServlet">Home</a>
                        </li>
                        <li class="nav-link" style="--i: .85s">
                            <a href="#">Question<i class="fas fa-caret-down"></i></a>
                            <div class="dropdown">
                                <ul>
                                    <li class="dropdown-link">
                                        <a href="#">UPSC<i class="fas fa-caret-down"></i></a>
                                                    <div class="dropdown second">
                                                        <ul>
                                                            <li class="dropdown-link">
                                                                <a href="#">CSE-2022</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">CSE-2021</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">CSE-2019</a>
                                                            </li>
                                                            <div class="arrow"></div>
                                                        </ul>
                                       </li>
                                    <li class="dropdown-link">
                                        <a href="#">GATE<i class="fas fa-caret-down"></i></a>
                                                    <div class="dropdown second">
                                                        <ul>
                                                            <li class="dropdown-link">
                                                                <a href="#
                                                                
                                                                ">GATE-2022</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">GATE-2021</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">GATE-2019</a>
                                                            </li>
                                                            <div class="arrow"></div>
                                                        </ul>
                                                    </div>
                                                </li>
                                    <li class="dropdown-link">
                                        <a href="#">CAT<i class="fas fa-caret-down"></i></a>
                                        <div class="dropdown second">
                                            <ul>
                                                <li class="dropdown-link">
                                                    <a href="#">Link 1</a>
                                                </li>
                                                <li class="dropdown-link">
                                                    <a href="#">Link 2</a>
                                                </li>
                                                <li class="dropdown-link">
                                                    <a href="#">Link 3</a>
                                                </li>
                                                <li class="dropdown-link">
                                                    <a href="#">More<i class="fas fa-caret-down"></i></a>
                                                    <div class="dropdown second">
                                                        <ul>
                                                            <li class="dropdown-link">
                                                                <a href="#">Link 1</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">Link 2</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">Link 3</a>
                                                            </li>
                                                            <div class="arrow"></div>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <div class="arrow"></div>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="dropdown-link">
                                        <a href="#">Link 4</a>
                                    </li>
                                    <div class="arrow"></div>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-link" style="--i: 1.1s">
                            <a href="#">Services<i class="fas fa-caret-down"></i></a>
                            <div class="dropdown">
                                <ul>
                                    <li class="dropdown-link">
                                        <a href="#">Link 1</a>
                                    </li>
                                    <li class="dropdown-link">
                                        <a href="#">Link 2</a>
                                    </li>
                                    <li class="dropdown-link">
                                        <a href="#">Link 3<i class="fas fa-caret-down"></i></a>
                                        <div class="dropdown second">
                                            <ul>
                                                <li class="dropdown-link">
                                                    <a href="#">Link 1</a>
                                                </li>
                                                <li class="dropdown-link">
                                                    <a href="#">Link 2</a>
                                                </li>
                                                <li class="dropdown-link">
                                                    <a href="#">Link 3</a>
                                                </li>
                                                <li class="dropdown-link">
                                                    <a href="#">More<i class="fas fa-caret-down"></i></a>
                                                    <div class="dropdown second">
                                                        <ul>
                                                            <li class="dropdown-link">
                                                                <a href="#">Link 1</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">Link 2</a>
                                                            </li>
                                                            <li class="dropdown-link">
                                                                <a href="#">Link 3</a>
                                                            </li>
                                                            <div class="arrow"></div>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <div class="arrow"></div>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="dropdown-link">
                                        <a href="#">Link 4</a>
                                    </li>
                                    <div class="arrow"></div>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-link" style="--i: 1.35s">
                            <a href="about.html">About</a>
                        </li>
                       
                       <%
                       if(session.getAttribute("username")!=null && session.getAttribute("username").toString().equals("admin")){
                    	  %>
                    	  <li class="nav-link" style="--i: 1.35s">
                            <a href="Form.jsp">DataEntry</a>
                         </li>
                    	  <% 
                       }
                       
                       %>
                        
                    </ul>
                </div>

                <div class="log-sign" style="--i: 1.8s">
                    
                    <a href="Register.jsp" class="btn solid">Register</a>
                    <a href="Login.jsp" class="btn solid">Logout</a>
                </div>
            </div>

            <div class="hamburger-menu-container">
                <div class="hamburger-menu">
                    <div></div>
                </div>
            </div>
        </div>
    </header>
    
 
 
    <center>   
  
  <form action="FilterServlet" method="post">
    
  Filter your question with year-wise: <select id="year" name="year">
   <option value="">All</option>
   
   <%
   String year=(String) request.getAttribute("year");
   for(int i=2000;i<=new Date().getYear()+1900;i++ ){
	   if(year.equalsIgnoreCase(""+i)){
		   %>
		   <option selected="selected" value="<%=i%>"><%=i%></option>
		   <% 
	   }
	   else{
		   %>
		   <option value="<%=i%>"><%=i%></option>
		   <%
	   }
	   
   }
   %>
    
    </select>
     
    <input type="submit" value="Search">
     </form>   
    <table width='100%'>
    <tr><th>Sl.</th><th>Question</th><th>Year</th></tr>
    <%    
    ArrayList<Question> arrayListQuestion=(ArrayList<Question>) request.getAttribute("arrayListQuestion");
    
    for(int i=0;i<arrayListQuestion.size();i++){
    	Question quesOb= arrayListQuestion.get(i);
    	String question=quesOb.getQuestion();
    	String yr=quesOb.getYear();
    %>  
    
    
    
    
    
    <tr><td style="width: 20px; vertical-align:top"><%=(i+1)%>.</td>
    <td><b><font color="red"><%=question %></b></font><br/>Option <br/> A. <%=quesOb.getA()%><br/> B. <%=quesOb.getB()%><br/> C. <%=quesOb.getC()%><br/> D. <%=quesOb.getD()%>
    <br/><font color="green"><b><i>Answer</b></font><br/>
    <button onclick="myFunction()">View</button>
    <div id="myDIV">
    <%=quesOb.getAns() %><br/><%=quesOb.getExplanation() %><br/>
    </div>
    </td>
    <td style="width: 50px; vertical-align:top">[<%=yr%>]</td></tr> 	
    	
    <%   	
    }    
    %> 
     </table> 
     </center>
     <script>
     
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
     
</body>

</html>