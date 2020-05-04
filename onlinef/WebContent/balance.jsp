<%@ page import="java.sql.*"%>
<html>
	<head>
		<title>BANK</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style>
			::placeholder 
			{
  				color: white;
			}
		</style>
	</head>
	<body>
	<nav>
				<ul>
				
					<li><a href="welcome.jsp">DASHBOARD</a></li>
				</ul>
		</nav>
		<%
			int amount=0;String str;
		    String name=(String)session.getAttribute("uname");
			int i=0,t=0,tt=0;int res1;
				Class.forName("org.sqlite.JDBC");
				Connection c=DriverManager.getConnection("jdbc:sqlite:F:\\bankpro\\onlinef.db");
				Statement st=c.createStatement();
				ResultSet res=st.executeQuery("select * from openacc where Username='"+name+"';");
				amount=res.getInt(5);
				res.close();
				st.close();
				c.close();
				
			
		%>		
				<div class="login">
				<h1>***YOUR ACCOUNT BALANCE***</h1>
				<div class="textbox">
					<h2><%= amount %></h2>
				</div>
				
			</div>
		
	</body>
</html>