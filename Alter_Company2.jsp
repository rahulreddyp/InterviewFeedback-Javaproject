<%@ page language='java' import='java.sql.*' %>
<body> <!--style='background-image:url("images/senior.jpg");background-repeat:no-repeat; background-size:cover; text='red'-->
<%
        try
          {
	String xid=(String)session.getAttribute("xid");
	String name=request.getParameter("t2");
	String info=request.getParameter("t3");
	String placements=request.getParameter("t4");
		String cse=request.getParameter("t5");

			String it=request.getParameter("t6");

				String eee=request.getParameter("t7");

					String ece=request.getParameter("t8");
	String year=request.getParameter("t9");

	

      if(name.length()!=0 && info.length()!=0 && placements.length()!=0)
	 {
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection cn=DriverManager.getConnection("jdbc:odbc:USA");
	Statement stmt=cn.createStatement();

	String str="update companyinfo set name='"+name+"',info='"+info+"',placements='"+placements+"',cse='"+cse+"',it='"+it+"',eee='"+eee+"',ece='"+ece+"',year='"+year+"' where id='"+xid+"' ";
	stmt.executeUpdate(str);

          out.println("<b style='color:white'>Company Details Updated Successfully...</b>");
	stmt.close();
	cn.close();
	 }
	else
	 {
              out.println("<b>InComplete Company Details to Update..</b>");
	 }
            }
           catch(Exception e)
            {
	out.println("Error : "+e);
            }
 %>
</body>