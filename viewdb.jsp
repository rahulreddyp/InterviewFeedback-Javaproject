<%@ page import="java.sql.*" %>
<body bgcolor="cyan" >
<head>
		<style>
		a{
		font-size:30px;
		text-decoration:none;
		}
			#hid{
				background-color: cyan;
				}

		header{
		
   		 padding: 10px;
    		color: white;
    		background-color: black;
    		clear: left;
   		text-align: center;
		}
		body{
			background-image: url("images/bg.jpg");
			background-size:cover;
			background-repeat:no-repeat;
			
			height:400px;
			margin:0;
		}
		</style>
	</head>	
	<body>
			<center>
			<header>
  			 <h1>Feedback analysis of interview</h1>
			</header>
			<header id="hid">
			
 
<a href="juniorpage.jsp">Home</a>&nbsp;&nbsp;&nbsp;
 
  <a href="jquery.html">post query</a>&nbsp;&nbsp;&nbsp;
   <a href="viewdb.jsp">Display Answers</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="viewexperience.jsp">View Queries by seniors</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   </header>
	




<%
String str=null;
Connection con=null;
PreparedStatement pst=null;

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("select * from query2 ");

ResultSet rs=pst.executeQuery();
out.println("<table style='font-family:sans-serif;color:white;font-size:20' border='1' width='100%'>");
	out.println("<tr><th>Question</th><th>JuniorName</th><th>Answers</th><th>SeniorName</th></tr>");
while(rs.next()){
	//str=rs.getString(1);
	//out.println("<a href='?t1="+str+"'>"+str+"</a>");
	//out.println("<br/>");
	
		
	 out.println("<tr><td>"+rs.getString(1)+"</td>");
	  out.println("<td>"+rs.getString(2)+"</td>");
	   out.println("<td>"+rs.getString(3)+"</td>");
	         out.println("<td>"+rs.getString(4)+"</td></tr>");
	         
	 }
	out.println("</table>"); 
	out.println("<br/>"); 
	out.println("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style='text-decoration:none;color:white' href='juniorpage.jsp' >Go Back</a>");
	rs.close();
	pst.close();
	con.close();
    }
   catch(Exception e)  
    {
	out.println(e);
    }
	
%> 
</body>				

