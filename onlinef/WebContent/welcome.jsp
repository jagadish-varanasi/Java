<html>
	<head>
		<title>BANK</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<style>
			.con
			{
				text-align:center;
				margin-top:420px;
			}
			.butn
			{
				border:1px solid #94641b;
				background:none;
				padding:10px 20px;
				font-size:20px;
				font-family:"montserrat";
				cursor:pointor;
				margin:10px;
				transition:0.8s;
				position:relative;
				overflow:hidden;
			}
			.butn1
			{
				color:#fff;
			}
			.butn1:hover
			{
				color:#fff;
			}
			.butn::before
			{
				content:"";
				position:absolute;
				left:0;
				width:100%;
				height:0%;
				background:#94641b;
				z-index:-1;
				transition:0.8s;
			}
			.butn1::before
			{
				top:0;
				border-radius:0 0 50% 50%;
			}
			.butn1:hover::before
			{
				height:180%;
			}
			.marquee
			{
				height: 50px;	
    			overflow: hidden;
 				position: relative;
			}
			.marquee h3 
			{
 				position: absolute;
 				width: 100%;
 				height: 100%;
 				margin: 0;
 				line-height: 50px;
 				text-align: left;	
 				-moz-animation: marquee 5s linear infinite alternate;
 				-webkit-animation: marquee 5s linear infinite alternate;
 				animation: marquee 5s linear infinite alternate;
			}
			@-moz-keyframes marquee 
			{
 				0%   { -moz-transform: translateX(70%); }
 				100% { -moz-transform: translateX(0%); }
			}
			@-webkit-keyframes marquee
			{
 				0%   { -webkit-transform: translateX(70%); }
 				100% { -webkit-transform: translateX(0%); }
			}
		</style>
	</head>
	<body>
		<nav>
				<ul>
					<li><a href="deposit.html" >DEPOSIT</a></li>
					<li><a href="withdraw.html">WITHDRAW</a></li>
					<li><a href="balance.jsp">CHECK BALANCE</a></li>
					<li><a href="index.html">LOGOUT</a></li>
				</ul>
		</nav>
		<% String name=(String)session.getAttribute("uname");
		out.print("Welcome"+name);
		out.println("<h3>"+"our bank never asks you details,Make sure you will never share your details with any one"+"</h3>");%>
		<div class="marquee">
			<h3><font color="RED"><marquee>NEVER SHARE YOUR DETAILS WITH ANYONE</marquee></font></h3>
		</div>
		<div class="con">
			<div class="Login">
				<h1>Welcome <%=name %></h1>
			</div>
			
		
	</body>
</html>