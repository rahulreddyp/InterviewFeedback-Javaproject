<%@ page language='java' import='java.sql.*' %>
<form name='f1' method='get' action='Alter_Company2.jsp'>
<body >
<%
        try
          {
	String xid=request.getParameter("xid");
	session.setAttribute("xid",String.valueOf(xid));

	String str="select * from companyinfo where id='"+xid+"'";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	Statement stmt=cn.createStatement();
	ResultSet rs=stmt.executeQuery(str);
	if(rs.next())
	 {
out.println("<center><h3> Modification Page</h3>");
 out.println("<table style='color:white'><tr><th align='right'>company Id : </th>");
	out.println("<td><input type='text' name='t1' value='"+rs.getString(1)+"' disabled size=10></td></tr>");
 out.println("<tr><th align='right'>Company Name : </th>");
	out.println("<td><input type='text' name='t2' value='"+rs.getString(2)+"'  size=25></td></tr>");
out.println("<tr><th align='right'>Company Info: </th>");
	out.println("<td><input type='text' name='t3' value='"+rs.getString(3)+"'  size=25></td></tr>");
 out.println("<tr><th align='right'>Placements : </th>");
	out.println("<td><input type='text' name='t4' value='"+rs.getString(4)+"'  size=50></td></tr>");
	out.println("<tr><th align='right'>CSE: </th>");
	out.println("<td><input type='text' name='t5' value='"+rs.getString(5)+"'  size=50></td></tr>");
	out.println("<tr><th align='right'>IT : </th>");
	out.println("<td><input type='text' name='t6' value='"+rs.getString(6)+"'  size=50></td></tr>");

	out.println("<tr><th align='right'>EEE : </th>");
	out.println("<td><input type='text' name='t7' value='"+rs.getString(7)+"'  size=50></td></tr>");

	out.println("<tr><th align='right'>ECE : </th>");
	out.println("<td><input type='text' name='t8' value='"+rs.getString(8)+"'  size=50></td></tr>");



 
 out.println("<table><br><input type='submit' value='  UPDATE  '>");
	 }
	stmt.close();
	cn.close();
          }
         catch(Exception e)
          {

          }
%>
</form>
</body>