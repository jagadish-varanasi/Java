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
			int amount=Integer.parseInt(request.getParameter("amt"));
		    String name=(String)session.getAttribute("uname");
			int i=0,t=0,tt=0;
				Class.forName("org.sqlite.JDBC");
				Connection c=DriverManager.getConnection("jdbc:sqlite:F:\\bankpro\\onlinef.db");
				Statement st=c.createStatement();
				ResultSet res=st.executeQuery("select * from openacc where Username='"+name+"';");
				t=res.getInt(5);
				tt=t+amount;
				int res1=st.executeUpdate("Update openacc set Amount='"+tt+"' where Username='"+name+"';");
				st.close();
				c.close();
			
		
			if(res1>=1)
			{
		%>		
				<div class="login">
				<h1>***YOUR TRANSACTION***</h1>
				<div class="textbox">
					<h2>SUCCESSFUL!!</h2>
				</div>
				
			</div>
		<%	
			}
			else
			{
		%>		
				<div class="login">
				<h1>YOUR TRANSACTION</h1>
				<div class="textbox">
					<h2>FAILED</h2>
				</div>
				
			</div>
		<%		
			}
		%>
	</body>
</html>