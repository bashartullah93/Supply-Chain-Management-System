<body background='Picture4.jpg' text='black'>
<%@ page language='java' import='java.sql.*' %>
<%
   try
    {
	int eno=Integer.parseInt(request.getParameter("eno"));
	String ename=request.getParameter("ename");
	String qualif=request.getParameter("qualif");
	String des=request.getParameter("des");
	int sal=Integer.parseInt(request.getParameter("sal"));
	String jdate=request.getParameter("jdate");

 	if(ename.length()!=0 && qualif.length()!=0 && des.length()!=0 && jdate.length()!=0)
	 {
	           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	      Connection cn=DriverManager.getConnection("jdbc:odbc:SIMS");
	      Statement stmt=cn.createStatement();
String str="update EmployInfo set EName='"+ename+"',Qualification='"+qualif+"',Job='"+des+"',Salary="+sal+",JoinDate='"+jdate+"' where EmpNo="+eno;
	      stmt.executeUpdate(str);
	      out.println("<b>Employee Data Updated Successfully......</b>");
	      stmt.close();
	      cn.close();
	 }
	else
	 {
	       out.println("<b>Incomplete Data Values are Provided.....</b>");
	 }
    }
   catch(Exception e)
    {
	out.println("<b>Error in Saving the Employee Data....</b>");
    }
%>
</body>                                                                                                                                                                                                                                                                                                                                                             dt=rs.getDate(6);
String mon[]={"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"};
	String st=dt.getDate()+"-"+mon[dt.getMonth()]+"-"+(dt.getYear()+1900);
	out.println("<tr><th align='right'>Joined Date :</th>");
  out.println("<td><input type='text' name='jdate' value='"+st+"'></td></tr>");
	out.println("</table><input type='submit' value='   Update Record  '></form>");
      	rs.close();
	stmt.close();
	cn.close();
           }
          catch(Exception e)
           {
	out.println("<b>No Employee Number is Selected....</b>");
           }
%>