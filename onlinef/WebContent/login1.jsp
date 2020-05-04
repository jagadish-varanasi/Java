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
		<%
			String uname=request.getParameter("username");
			String pwd=request.getParameter("userpass");
			int i=0;
			try
			{
				Class.forName("org.sqlite.JDBC");
				Connection c=DriverManager.getConnection("jdbc:sqlite:F:\\bankpro\\onlinef.db");
				Statement st=c.createStatement();
				ResultSet res=st.executeQuery("select * from openacc;");
				while(res.next())
				{
					if(uname.equals(res.getString(1))&&pwd.equals(res.getString(2)))
					{
						i=1;
						break;
					}
				}
				st.close();
				c.close();
			}
			catch(Exception e)
			{
				System.out.println("Caught");
			}
			
		
			if(i==1)
			{
				session.setAttribute("uname",uname);%>		
				<jsp:forward page="welcome.jsp"/>
					
		<%		
			}
			else
			{
		%>		
				<%@include file="login.html"%>
				<div class="pa">
					<p>INVALID USERNAME OR PASSWORD</p>
				</div>
		<%		
			}
		%>
	</body>
</html>