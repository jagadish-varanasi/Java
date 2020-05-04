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
		    int res2=0;
			int amount=Integer.parseInt(request.getParameter("wamt"));
		    String name=(String)session.getAttribute("uname");
			int i=0,t=0,tt=0;
				Class.forName("org.sqlite.JDBC");
				Connection c=DriverManager.getConnection("jdbc:sqlite:F:\\bankpro\\onlinef.db");
				Statement st=c.createStatement();
				ResultSet res=st.executeQuery("select * from openacc where Username='"+name+"';");
				if(res.getInt(5)<amount)
				{
					%>
					<p>Insufficient Balance</p>
					<jsp:forward page="welcome.jsp"/>
				<%
				}
				else
				{
					t=res.getInt(5);
					tt=t-amount;
					 res2=st.executeUpdate("Update openacc set Amount='"+tt+"' where Username='"+name+"';");
					st.close();
					c.close();
				
				
				}
		
			if(res2>=1)
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