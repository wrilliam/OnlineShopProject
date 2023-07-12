<%@ page import="backend.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
} else {
	int i = 0;
	try {
		Connection connect = ConnectionProvider.getConnection();
		Statement stmt = connect.createStatement();
		ResultSet rs = stmt
		.executeQuery("SELECT * FROM Users WHERE email = '" + email + "' AND password = '" + password + "'");
		while (rs.next()) {
	i = 1;
	session.setAttribute("email", email);
	response.sendRedirect("admin/home.jsp");
		}
		if (i == 0)
	response.sendRedirect("admin/login.jsp?msg=notFound");
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("signup.jsp?msg=invalid");
	}
}
%>