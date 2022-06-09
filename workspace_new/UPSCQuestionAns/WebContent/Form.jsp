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
    
<style>
input[type="submit"] {
    border: 2px solid #ff0000;
    background-color: transparent;
    color: #ff0000;
    padding: 20px 60px;
    font-size: 18px;
    font-weight: 500;
    background: transparent;
    cursor: pointer;
    display: inline-block;
    margin-right: 15px;
    margin-bottom: 30px;
    border-radius: 21px;
    text-transform: capitalize;
}

input:focus {
    outline: none;
}
 

/* hover-center 1 css */

input.hover-center-1 {
    background-image: linear-gradient(0, #0A3D5B, #0A3D5B);
    background-size: 0;
    transition: .8s;
    background-repeat: no-repeat;
    background-position: bottom;
    transition-timing-function: cubic-bezier(0.52, 1.64, 0.37, 0.66);
    background-color: black;
    color: #ffffff;
}

input.hover-center-1:hover {
    background-size: 100%;
    color: #00ff00;
}

 

</style>  
    
</head>

<body bgcolor="#C5EBF6">
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
                                        <a href="#">UPSC CSE<i class="fas fa-caret-down"></i></a>
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
            <form action="QueServlet" method="post" >
				<fieldset class="field_set">
					<legend align= center>Question Details</legend>
				<table cellspacing="9" cellpaddig="0" bgcolor="pink" >	
				
				
					<tr><td><label for="Select Exam:">Select Exam:</label></td><td><select name="exam" id="exam"><option>Select Exam</option><option>UPSC</option><option>GATE</option><option>BPSC</option><option>UPPCS</option></select> 
	               	&nbsp;&nbsp;&nbsp;<label for="Select year:">Select year:</label><select name="year" id="year"><option>Please Select</option><option>2022</option><option>2021</option><option>2020</option><option>2019</option></select>
	               	&nbsp;&nbsp;&nbsp;<label for="Subject name:">Subject name:</label><select name="subject" id="subject"><option>Choose Subject</option><option>Indian polity</option><option>Geography</option><option>History</option><option>G.S</option></select></td></tr>
     				
					<tr><td><label for="quetion:">Question:</label></td><td><textarea name="question" id="question" rows="6" cols="75" placeholder="Enter your question"></textarea></td>
			
						
				
					<tr><td><label for="A:">A:</label></td><td><input id="a" name="a" size="76" placeholder="Enter your option A" rows="5"></td></tr>
					<tr><td><label for="B:">B:</label></td><td><input id="b" name="b"  size="76" placeholder="Enter your option B"></td></tr>
					<tr><td><label for="C:">C:</label></td><td><input id="c" name="c"   size="76" placeholder="Enter your option C"></td></tr>
					<tr><td><label for="D:">D:</label></td><td><input id="d" name="d"  size="76" placeholder="Enter your option D"></td></tr>
					<tr><td><label for="Answer:">Answer:</label></td><td><select id="ans" name="ans" ><option>Please Answer</option><option>A</option><option>B</option><option>C</option><option>D</option></select></td></tr>
	                 
	                
	               	<tr><td><label for="Explanation:">Explanation:</label></td><td><textarea id="explanation" name="explanation" rows="6" cols="75"placeholder="Enter your explanation" ></textarea></td></tr>
					<tr><td colspan="2" align="center"><input class="hover-center-1"  type="submit" value="Submit " ></td></tr>
					
					</table>
					 					 
				</fieldset>
				
				
			</form>
         </center>


             
    
 </body>

</html>