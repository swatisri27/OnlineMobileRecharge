<%@ page language="java" import="java.sql.*" %>
<%@ page import="java.sql.*"  %>


<html>

<head>
	<title>Online Mobile Recharge</title>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<link href="Style1.css" type="text/css" rel="stylesheet">
</head>

<body>
	<div id="main">
        	<div id="header">
		<div class="header">
  <a href="#default" class="logo">MOBILE RECHARGE</a>
                </div>
		
		<div id="menu">
			
			<a href="index.jsp">Home</a> <a href="instructions.jsp">How to
				use</a> <a href="offer.jsp">Special Offers!</a> <a href="about.jsp">About
		</div>
		<h1>Password</h1>


<%


Class.forName("com.mysql.cj.jdbc.Driver");
try
{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/omr", "root", "root" );
String email=request.getParameter("email");
PreparedStatement ps=con.prepareStatement("SELECT password FROM user where email='" +email +"'");
ResultSet rs=ps.executeQuery();



while(rs.next())
{
	
	
	out.println("Your password ="+" "+(rs.getString("password")));
   
}
}
catch(Exception e)
{
out.println(e.toString());
}



%>


<div id="footer">
		<br><hr width="500px">
     	&#169; Copyright StopNrecharge.com. All rights reserved.
     </div>
</div>
</body>
</html>