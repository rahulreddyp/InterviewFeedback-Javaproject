<%@ page import="java.sql.*" %>
<body bgcolor="pink" >


<%
Connection con=null;
PreparedStatement pst=null;
try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:USA");
pst=con.prepareStatement("insert into queries values(?,?)");

String s1=request.getParameter("qstn");
//String s2=request.getParameter("answer");


pst.setString(1,s1);
pst.setString(2,null);

pst.executeUpdate();
out.println("Question Posted Successfully");
out.println("<br/>");
out.println("<a href='juniorpage.jsp'>&nbsp;&nbsp;Go Back</a>");
pst.close();
con.close();
}
catch(Exception e)
{
out.println(e);
}

%>