<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String status="processing";
try{
	Connection con =ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update cart set status=? where email=? and status='bill'");
	ps.setString(1, status);
	ps.setString(2, email);
	ps.executeUpdate();
	response.sendRedirect("home.jsp");
}catch (Exception e) {
	e.printStackTrace();
}
%>