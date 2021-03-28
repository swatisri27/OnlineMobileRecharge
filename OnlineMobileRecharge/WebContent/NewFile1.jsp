<%@ page language="java" import="java.sql.*"%>
<%@ page import="java.sql.*"%>


<html>

<head>
<title>Online Mobile Recharge</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<link href="Style1.css" type="text/css" rel="stylesheet">
</head>

<body>
	<div id="main">
		<div id="header">
				<div id="header">
		<div class="header">
  <a href="#default" class="logo">MOBILE RECHARGE</a>
		</div>

		<div id="menu">
			<a href="index.jsp">Home</a> <a href="instructions.jsp">How to
				use</a> <a href="offer.jsp">Special Offers!</a> <a href="about.jsp">About
				Us</a> <a href="contacts.jsp">Contact Us</a> <a href="admin.jsp">Admin
				Login</a>
		</div>
		<center>
			<%
				Connection con = null;
				Class.forName("com.mysql.cj.jdbc.Driver");
				try {
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omr", "root", "root");
					String state = request.getParameter("state");
					
					PreparedStatement ps = con.prepareStatement("select operator,amount,offerdetail from offer where state='" +state +"'");
					ResultSet rs = ps.executeQuery();
					

					out.print(
							"<div id=\"about_text\"> <table width=\"70%\" border=\"1\"><tr><th><b><h2>Operator</th><th><b><h2>Amount-id</th><th><b><h2>Offer Details</th></tr>");
					out.print("</br></br>");
					while (rs.next()) {
						out.print("<tr class=\"tab\" height=\"40px\"><td  align=\"center\">");
						out.println(rs.getString("operator") + "</font></td>");
						out.println("<td  align=\"center\">" + rs.getString("amount") + "</td>");
						out.println("<td  align=\"center\">" + rs.getString("offerdetail") + "</td>");
						out.print("</tr></br>");
					}
					out.print("</table></font></div>");
				} catch (Exception e) {
					out.println(e.toString());
				}
			%>
		</center>

		<div id="footer">
			<br>
			<hr width="500px">
			&#169; Copyright StopNrecharge.com. All rights reserved.
		</div>
	</div>
</body>
</html>
