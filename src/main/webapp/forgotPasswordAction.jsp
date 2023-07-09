<%@ page import="backend.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String question = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");

int check = 0;

String sql = "SELECT * FROM Users WHERE Email = ? AND Mobile = ? AND SecurityQuestion = ? AND Answer = ?";

try {
	Connection connect = ConnectionProvider.getConnection();
	Statement stmt = connect.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM Users WHERE Email = '" + email + "' AND Mobile = '" + mobile + "' AND SecurityQuestion = '" + question + "' AND Answer = '" + answer + "'");
	while(rs.next()) {
		check = 1;
		stmt.executeUpdate("UPDATE Users SET Password = '" + password + "' WHERE Email = '" + email + "'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check == 0)
		response.sendRedirect("forgotPassword.jsp?msg=notFound");
} catch (Exception e) {
	System.out.println(e);
}
%>