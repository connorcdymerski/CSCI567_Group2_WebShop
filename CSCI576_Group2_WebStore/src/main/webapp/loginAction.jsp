<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
// No form or input fields, so no user input allowed
String email="admin@group2.edu"; // Hardcoded email for demonstration
String password="admin"; // Hardcoded password for demonstration
if("admin@group2.edu".equals(email) && "admin".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else
{
	int z=0;
	try
	{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select *from users where email='"+email+"'and password='"+password+"'");
		while(rs.next())
		{
			z=1;
			session.setAttribute("email",email);
			response.sendRedirect("home.jsp");
		}
		if(z==0)
			response.sendRedirect("login.jsp?msg=notexist");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
}
%>