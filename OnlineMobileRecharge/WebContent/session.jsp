<%@ page language="java" import="java.sql.*"%>
<%@ page import="java.sql.*"%>
<%
	//session.setAttribute("username", rs.getString("username"));

	if (session.getAttribute("username") != null) {
%>

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
			<a href="session.jsp">Home</a> <a href="session.jsp">Recharge</a> <a
				href="offer.jsp">Special Offers!</a> <a href="pasttransaction.jsp">History</a>
			<a href="editinfo.jsp">Edit Personal Info</a> <a href="logout.jsp">Logout</a>

		</div>


		<br>

		<div id="about_text">
			<center>
				<b><h2>Enter details for recharge</h2></b>
			</center>
		</div>
		<br />
		<form action="finalise.jsp" method="post" name="recharge">
			<br>
			<center>
				<table width="387" height="150">


					<tr>
						<td><div class="tab">
								<h3>Mobile Operator</h3>
							</div></td>
						<td><select name="operator">
								<option value="reliance">Reliance</option>
								<option value="airtel">Airtel</option>
								<option value="vodafone">Vodafone</option>
								<option value="tatadocomo">Tata Docomo</option>
								<option value="idea">Idea</option>
						</select></td>
					</tr>

					<tr>
						<td width="174"><div class="tab">
								<h3>State</h3>
							</div></td>
						<td width="219"><select name="state">
								<option value="anp">Andhra Pradesh</option>
								<option value="arp">Arunachal Pradesh</option>
								<option value="assam">Assam</option>
								<option value="bihar">Bihar</option>
								<option value="cg">Chhattisgarh</option>
								<option value="bihar">Bihar</option>
								<option value="goa">Goa</option>
								<option value="gujrat">Gujarat</option>
								<option value="haryana">Haryana</option>
								<option value="Himachal Pradesh">Himachal Pradesh</option>
								<option value="Jammu and Kashmir">Jammu and Kashmir</option>
								<option value="Jharkhand">Jharkhand</option>
								<option value="Karnataka">Karnataka</option>
								<option value="Kerala">Kerala</option>
								<option value="Madhya Pradesh">Madhya Pradesh</option>
								<option value="Maharastra">Maharastra</option>
								<option value="Nagaland">Nagaland</option>
								<option value="Mizoram">Mizoram</option>
								<option value="Madhya Pradesh">Madhya Pradesh</option>
								<option value="Nagaland">Nagaland</option>
								<option value="Orissa">Orissa</option>
								<option value="Punjab">Punjab</option>
								<option value="Rajasthan">Rajasthan</option>
								<option value="Sikkim">Sikkim</option>
								<option value="Tamil Nadu">Tamil Nadu</option>
								<option value="Cheenai">Chennai</option>
								<option value="Tripura">Tripura</option>
								<option value="Agartala">Agartala</option>
								<option value="Uttranchal">Uttranchal</option>
								<option value="Uttar Pradesh">Uttar Pradesh</option>
								<option value="West Bengal">West Bengal</option>
								<option value="All Over India">All Over India</option>
						</select></td>
					</tr>

					<tr>
						<td><div class="tab">
								<h3>Amount</h3>
							</div></td>
						<td><input type="text" name="amount" /></td>
					</tr>
				</table>
			</center>
			<p align="center">
				<input type="submit" value="Submit" name="submit" />
			</p>
			<br />
			<br />
		</form>
	</div>
	<div id="footer">
		<br>
		<hr width="500px">
		&#169; Copyright StopNrecharge.com. All rights reserved.
	</div>

</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>