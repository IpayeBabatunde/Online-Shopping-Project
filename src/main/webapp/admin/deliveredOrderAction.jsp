<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="delivered";
try {
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is NOT NULL");
	response.sendRedirect("ordersReceived.jsp?msg=delivered");

	
}
catch(Exception e){
	 e.printStackTrace();
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>