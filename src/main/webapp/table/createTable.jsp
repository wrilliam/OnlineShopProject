<%@ page import="backend.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
try {
	Connection connect = ConnectionProvider.getConnection();
	Statement stmt = connect.createStatement();
	String query1 = "CREATE TABLE Users (Name VARCHAR(100), Email VARCHAR(100) PRIMARY KEY, "
	+ "Mobile BIGINT, SecurityQuestion VARCHAR(200), Answer VARCHAR(200), "
	+ "Password VARCHAR(100), Address VARCHAR(500), City VARCHAR(100), State VARCHAR(100), "
	+ "Country VARCHAR(100))";
	System.out.println(query1);
	stmt.execute(query1);
	System.out.println("Table created successfully");
	connect.close();
} catch (Exception e) {
	System.out.println(e);
}
%>