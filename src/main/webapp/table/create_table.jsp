<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try 
{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		String q1="create table users(name varchar(100), email varchar(100)primary key,mobileNumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
		System.out.print(q1);
		st.execute(q1);
		System.out.print("Table created");
		con.close();
		
}
catch(Exception e)
{
		e.printStackTrace();}
%>