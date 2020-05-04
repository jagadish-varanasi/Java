<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String name=request.getParameter("username");
	String pwd=request.getParameter("userpass");
	String phno=request.getParameter("phno");
	String atype=request.getParameter("AType");
    int i=0;
	int deposit=Integer.parseInt(request.getParameter("deposit"));
	
	
	   if(pwd.length()!=5)
	   {
		   %>
			<%@ include file="regis.html" %>
			<div class="pa">
				<p>PASSWORD SHOULD BE ATLEAST FIVE CHARACTERS</p>
			</div>
<% 
		  i=1; 
	   }
	   if(phno.length()!=10)
	   {
		   %>
			<%@ include file="regis.html" %>
			<div class="pa">
				<p>PLEASE ENTER A VALID MOBILE NUMBER</p>
			</div>
<%      i=1;
	   }
	   if(atype=="saving"||atype=="current"){
		   %>
			<%@ include file="regis.html" %>
			<div class="pa">
				<p>PLEASE ENTER VALID ACCOUNT TYPE</p>
			</div>
<%
		  i=1; 
	   }
	   if(deposit<=5000){
		   %>
			<%@ include file="regis.html" %>
			<div class="pa">
				<p>PLEASE DEPOSIT MORE THAN FIVE THOSAND</p>
			</div>
<%
		   i=1;
	   }
	
	if(i==0)
	{
		try{
		Class.forName("org.sqlite.JDBC");
		Connection c=DriverManager.getConnection("jdbc:sqlite:F:\\bankpro\\onlinef.db");
		Statement s=c.createStatement();
		int r=s.executeUpdate("insert into openacc values('"+name+"','"+pwd+"','"+phno+"','"+atype+"','"+deposit+"')");
		s.close();
		c.close();
		}
		catch(Exception e){
			System.out.println(e);
		}

	%>

	<%@include file="regis.html" %>
	<%
	out.println("Account Created Successfully");
	}
	else{ 
	 
	 out.println("Account Not Created");
	
	} %>
	
</body>
</html>