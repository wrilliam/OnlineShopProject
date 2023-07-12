<%@ page import="backend.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email = request.getParameter("email");
String price = request.getParameter("price");
String active = request.getParameter("active");

String sql = "INSERT INTO Products VALUES (?, ?, ?, ?, ?)";

try {
	Connection connect = ConnectionProvider.getConnection();
	PreparedStatement ps = connect.prepareStatement(sql);
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, email);
	ps.setString(4, price);
	ps.setString(5, active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=error");
}
%>